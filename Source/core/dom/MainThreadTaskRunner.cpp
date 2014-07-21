/*
 * Copyright (C) 2013 Google Inc. All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE COMPUTER, INC. ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL APPLE COMPUTER, INC. OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include "config.h"
#include "core/dom/MainThreadTaskRunner.h"

#include "core/dom/ExecutionContext.h"
#include "core/dom/ExecutionContextTask.h"
#include "core/inspector/InspectorInstrumentation.h"
#include "wtf/Assertions.h"
#include "wtf/MainThread.h"

namespace WebCore {

struct PerformTaskContext {
    WTF_MAKE_NONCOPYABLE(PerformTaskContext); WTF_MAKE_FAST_ALLOCATED;
public:
    PerformTaskContext(WeakPtr<MainThreadTaskRunner> runner, PassOwnPtr<ExecutionContextTask> task, bool isInspectorTask)
        : m_runner(runner)
        , m_task(task)
        , m_isInspectorTask(isInspectorTask)
    {
    }

    WeakPtr<MainThreadTaskRunner> m_runner;
    OwnPtr<ExecutionContextTask> m_task;
    bool m_isInspectorTask;

    static void didReceiveTask(void* untypedContext);
};

void PerformTaskContext::didReceiveTask(void* untypedContext)
{
    ASSERT(isMainThread());

    OwnPtr<PerformTaskContext> self = adoptPtr(static_cast<PerformTaskContext*>(untypedContext));
    ASSERT(self);

    MainThreadTaskRunner* runner = self->m_runner.get();
    if (!runner)
        return;
    runner->perform(self->m_task.release(), self->m_isInspectorTask);
}

MainThreadTaskRunner::MainThreadTaskRunner(ExecutionContext* context)
    : m_context(context)
    , m_weakFactory(this)
    , m_pendingTasksTimer(this, &MainThreadTaskRunner::pendingTasksTimerFired)
    , m_suspended(false)
{
}

MainThreadTaskRunner::~MainThreadTaskRunner()
{
}

void MainThreadTaskRunner::postTask(PassOwnPtr<ExecutionContextTask> task)
{
    if (!task->taskNameForInstrumentation().isEmpty())
        InspectorInstrumentation::didPostExecutionContextTask(m_context, task.get());
    callOnMainThread(PerformTaskContext::didReceiveTask, new PerformTaskContext(m_weakFactory.createWeakPtr(), task, false));
}

void MainThreadTaskRunner::postInspectorTask(PassOwnPtr<ExecutionContextTask> task)
{
    callOnMainThread(PerformTaskContext::didReceiveTask, new PerformTaskContext(m_weakFactory.createWeakPtr(), task, true));
}

void MainThreadTaskRunner::perform(PassOwnPtr<ExecutionContextTask> task, bool isInspectorTask)
{
    if (!isInspectorTask && (m_context->tasksNeedSuspension() || !m_pendingTasks.isEmpty())) {
        m_pendingTasks.append(task);
        return;
    }

    const bool instrumenting = !isInspectorTask && !task->taskNameForInstrumentation().isEmpty();
    if (instrumenting)
        InspectorInstrumentation::willPerformExecutionContextTask(m_context, task.get());
    task->performTask(m_context);
    if (instrumenting)
        InspectorInstrumentation::didPerformExecutionContextTask(m_context);
}

void MainThreadTaskRunner::suspend()
{
    ASSERT(!m_suspended);
    m_pendingTasksTimer.stop();
    m_suspended = true;
}

void MainThreadTaskRunner::resume()
{
    ASSERT(m_suspended);
    if (!m_pendingTasks.isEmpty())
        m_pendingTasksTimer.startOneShot(0, FROM_HERE);

    m_suspended = false;
}

void MainThreadTaskRunner::pendingTasksTimerFired(Timer<MainThreadTaskRunner>*)
{
    while (!m_pendingTasks.isEmpty()) {
        OwnPtr<ExecutionContextTask> task = m_pendingTasks[0].release();
        m_pendingTasks.remove(0);
        const bool instrumenting = !task->taskNameForInstrumentation().isEmpty();
        if (instrumenting)
            InspectorInstrumentation::willPerformExecutionContextTask(m_context, task.get());
        task->performTask(m_context);
        if (instrumenting)
            InspectorInstrumentation::didPerformExecutionContextTask(m_context);
    }
}

} // namespace
