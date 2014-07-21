/*
 * Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies)
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Library General Public
 *  License as published by the Free Software Foundation; either
 *  version 2 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Library General Public License for more details.
 *
 *  You should have received a copy of the GNU Library General Public License
 *  along with this library; see the file COPYING.LIB.  If not, write to
 *  the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 *  Boston, MA 02110-1301, USA.
 */

#include "config.h"
#include "core/css/MediaQueryMatcher.h"

#include "core/css/MediaList.h"
#include "core/css/MediaQueryEvaluator.h"
#include "core/css/MediaQueryList.h"
#include "core/css/MediaQueryListListener.h"
#include "core/css/resolver/StyleResolver.h"
#include "core/dom/Document.h"
#include "core/frame/FrameView.h"
#include "core/frame/LocalFrame.h"

namespace WebCore {

PassRefPtrWillBeRawPtr<MediaQueryMatcher> MediaQueryMatcher::create(Document& document)
{
    return adoptRefWillBeNoop(new MediaQueryMatcher(document));
}

MediaQueryMatcher::MediaQueryMatcher(Document& document)
    : m_document(&document)
{
    ASSERT(m_document);
}

DEFINE_EMPTY_DESTRUCTOR_WILL_BE_REMOVED(MediaQueryMatcher)

void MediaQueryMatcher::documentDetached()
{
    m_document = nullptr;
    m_evaluator = nullptr;

    // Take a ref to each MediaQueryList as removing the listeners in documentDetached
    // could release the last ref and mutate the m_mediaLists.
    WillBeHeapVector<RefPtrWillBeMember<MediaQueryList> > lists;
    copyToVector(m_mediaLists, lists);

    for (size_t i = 0; i < lists.size(); ++i)
        lists[i]->documentDetached();
}

PassOwnPtr<MediaQueryEvaluator> MediaQueryMatcher::createEvaluator() const
{
    if (!m_document || !m_document->frame())
        return nullptr;

    return adoptPtr(new MediaQueryEvaluator(m_document->frame()));
}

bool MediaQueryMatcher::evaluate(const MediaQuerySet* media)
{
    ASSERT(!m_document || m_document->frame() || !m_evaluator);

    if (!media)
        return false;

    // Cache the evaluator to avoid allocating one per evaluation.
    if (!m_evaluator)
        m_evaluator = createEvaluator();

    if (m_evaluator)
        return m_evaluator->eval(media);

    return false;
}

PassRefPtrWillBeRawPtr<MediaQueryList> MediaQueryMatcher::matchMedia(const String& query)
{
    if (!m_document)
        return nullptr;

    RefPtrWillBeRawPtr<MediaQuerySet> media = MediaQuerySet::create(query);
    // Add warning message to inspector whenever dpi/dpcm values are used for "screen" media.
    reportMediaQueryWarningIfNeeded(m_document, media.get());
    return MediaQueryList::create(this, media);
}

void MediaQueryMatcher::addMediaQueryList(MediaQueryList* query)
{
    if (!m_document)
        return;
    m_mediaLists.add(query);
}

void MediaQueryMatcher::removeMediaQueryList(MediaQueryList* query)
{
    if (!m_document)
        return;
    m_mediaLists.remove(query);
}

void MediaQueryMatcher::mediaFeaturesChanged()
{
    if (!m_document)
        return;

    WillBeHeapVector<RefPtrWillBeMember<MediaQueryListListener> > listenersToNotify;
    for (MediaQueryListSet::iterator it = m_mediaLists.begin(); it != m_mediaLists.end(); ++it)
        (*it)->mediaFeaturesChanged(&listenersToNotify);

    m_document->enqueueMediaQueryChangeListeners(listenersToNotify);
}

void MediaQueryMatcher::trace(Visitor* visitor)
{
#if ENABLE(OILPAN)
    visitor->trace(m_document);
    visitor->trace(m_mediaLists);
#endif
}

}
