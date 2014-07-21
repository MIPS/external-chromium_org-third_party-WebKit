// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// This file has been auto-generated by code_generator_v8.py. DO NOT MODIFY!

#include "config.h"
#include "V8TestInterfaceConstructor2.h"

#include "bindings/core/v8/Dictionary.h"
#include "bindings/core/v8/ExceptionState.h"
#include "bindings/core/v8/V8DOMConfiguration.h"
#include "bindings/core/v8/V8HiddenValue.h"
#include "bindings/core/v8/V8ObjectConstructor.h"
#include "bindings/tests/v8/V8TestInterfaceEmpty.h"
#include "core/dom/ContextFeatures.h"
#include "core/dom/Document.h"
#include "core/frame/LocalDOMWindow.h"
#include "platform/RuntimeEnabledFeatures.h"
#include "platform/TraceEvent.h"
#include "wtf/GetPtr.h"
#include "wtf/RefPtr.h"

namespace WebCore {

static void initializeScriptWrappableForInterface(TestInterfaceConstructor2* object)
{
    if (ScriptWrappable::wrapperCanBeStoredInObject(object))
        ScriptWrappable::fromObject(object)->setTypeInfo(&V8TestInterfaceConstructor2::wrapperTypeInfo);
    else
        ASSERT_NOT_REACHED();
}

} // namespace WebCore

void webCoreInitializeScriptWrappableForInterface(WebCore::TestInterfaceConstructor2* object)
{
    WebCore::initializeScriptWrappableForInterface(object);
}

namespace WebCore {
const WrapperTypeInfo V8TestInterfaceConstructor2::wrapperTypeInfo = { gin::kEmbedderBlink, V8TestInterfaceConstructor2::domTemplate, V8TestInterfaceConstructor2::derefObject, 0, 0, 0, V8TestInterfaceConstructor2::installPerContextEnabledMethods, 0, WrapperTypeObjectPrototype, RefCountedObject };

namespace TestInterfaceConstructor2V8Internal {

template <typename T> void V8_USE(T) { }

static void constructor1(const v8::FunctionCallbackInfo<v8::Value>& info)
{
    V8StringResource<> stringArg;
    {
        TOSTRING_VOID_INTERNAL(stringArg, info[0]);
    }
    RefPtr<TestInterfaceConstructor2> impl = TestInterfaceConstructor2::create(stringArg);
    v8::Handle<v8::Object> wrapper = info.Holder();
    V8DOMWrapper::associateObjectWithWrapper<V8TestInterfaceConstructor2>(impl.release(), &V8TestInterfaceConstructor2::wrapperTypeInfo, wrapper, info.GetIsolate(), WrapperConfiguration::Independent);
    v8SetReturnValue(info, wrapper);
}

static void constructor2(const v8::FunctionCallbackInfo<v8::Value>& info)
{
    Dictionary dictionaryArg;
    {
        v8::TryCatch block;
        V8RethrowTryCatchScope rethrow(block);
        TONATIVE_VOID_INTERNAL(dictionaryArg, Dictionary(info[0], info.GetIsolate()));
        if (!dictionaryArg.isUndefinedOrNull() && !dictionaryArg.isObject()) {
            throwTypeError(ExceptionMessages::failedToConstruct("TestInterfaceConstructor2", "parameter 1 ('dictionaryArg') is not an object."), info.GetIsolate());
            return;
        }
    }
    RefPtr<TestInterfaceConstructor2> impl = TestInterfaceConstructor2::create(dictionaryArg);
    v8::Handle<v8::Object> wrapper = info.Holder();
    V8DOMWrapper::associateObjectWithWrapper<V8TestInterfaceConstructor2>(impl.release(), &V8TestInterfaceConstructor2::wrapperTypeInfo, wrapper, info.GetIsolate(), WrapperConfiguration::Independent);
    v8SetReturnValue(info, wrapper);
}

static void constructor3(const v8::FunctionCallbackInfo<v8::Value>& info)
{
    ExceptionState exceptionState(ExceptionState::ConstructionContext, "TestInterfaceConstructor2", info.Holder(), info.GetIsolate());
    TestInterfaceEmpty* testInterfaceEmptyArg;
    int longArg;
    V8StringResource<> defaultUndefinedOptionalStringArg;
    V8StringResource<> defaultNullStringOptionalStringArg;
    Dictionary defaultUndefinedOptionalDictionaryArg;
    V8StringResource<> optionalStringArg;
    {
        v8::TryCatch block;
        V8RethrowTryCatchScope rethrow(block);
        TONATIVE_VOID_INTERNAL(testInterfaceEmptyArg, V8TestInterfaceEmpty::toNativeWithTypeCheck(info.GetIsolate(), info[0]));
        TONATIVE_VOID_EXCEPTIONSTATE_INTERNAL(longArg, toInt32(info[1], exceptionState), exceptionState);
        TOSTRING_VOID_INTERNAL(defaultUndefinedOptionalStringArg, info[2]);
        if (!info[3]->IsUndefined()) {
            TOSTRING_VOID_INTERNAL(defaultNullStringOptionalStringArg, info[3]);
        } else {
            defaultNullStringOptionalStringArg = nullptr;
        }
        TONATIVE_VOID_INTERNAL(defaultUndefinedOptionalDictionaryArg, Dictionary(info[4], info.GetIsolate()));
        if (!defaultUndefinedOptionalDictionaryArg.isUndefinedOrNull() && !defaultUndefinedOptionalDictionaryArg.isObject()) {
            exceptionState.throwTypeError("parameter 5 ('defaultUndefinedOptionalDictionaryArg') is not an object.");
            exceptionState.throwIfNeeded();
            return;
        }
        if (UNLIKELY(info.Length() <= 5)) {
            RefPtr<TestInterfaceConstructor2> impl = TestInterfaceConstructor2::create(testInterfaceEmptyArg, longArg, defaultUndefinedOptionalStringArg, defaultNullStringOptionalStringArg, defaultUndefinedOptionalDictionaryArg);
            v8::Handle<v8::Object> wrapper = info.Holder();
            V8DOMWrapper::associateObjectWithWrapper<V8TestInterfaceConstructor2>(impl.release(), &V8TestInterfaceConstructor2::wrapperTypeInfo, wrapper, info.GetIsolate(), WrapperConfiguration::Independent);
            v8SetReturnValue(info, wrapper);
            return;
        }
        TOSTRING_VOID_INTERNAL(optionalStringArg, info[5]);
    }
    RefPtr<TestInterfaceConstructor2> impl = TestInterfaceConstructor2::create(testInterfaceEmptyArg, longArg, defaultUndefinedOptionalStringArg, defaultNullStringOptionalStringArg, defaultUndefinedOptionalDictionaryArg, optionalStringArg);
    v8::Handle<v8::Object> wrapper = info.Holder();
    V8DOMWrapper::associateObjectWithWrapper<V8TestInterfaceConstructor2>(impl.release(), &V8TestInterfaceConstructor2::wrapperTypeInfo, wrapper, info.GetIsolate(), WrapperConfiguration::Independent);
    v8SetReturnValue(info, wrapper);
}

static void constructor(const v8::FunctionCallbackInfo<v8::Value>& info)
{
    ExceptionState exceptionState(ExceptionState::ConstructionContext, "TestInterfaceConstructor2", info.Holder(), info.GetIsolate());
    switch (std::min(6, info.Length())) {
    case 1:
        if (info[0]->IsObject()) {
            TestInterfaceConstructor2V8Internal::constructor2(info);
            return;
        }
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor1(info);
            return;
        }
        break;
    case 2:
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor3(info);
            return;
        }
        break;
    case 3:
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor3(info);
            return;
        }
        break;
    case 4:
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor3(info);
            return;
        }
        break;
    case 5:
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor3(info);
            return;
        }
        break;
    case 6:
        if (true) {
            TestInterfaceConstructor2V8Internal::constructor3(info);
            return;
        }
        break;
    default:
        exceptionState.throwTypeError(ExceptionMessages::notEnoughArguments(1, info.Length()));
        exceptionState.throwIfNeeded();
        return;
    }
    exceptionState.throwTypeError("No matching constructor signature.");
    exceptionState.throwIfNeeded();
}

} // namespace TestInterfaceConstructor2V8Internal

void V8TestInterfaceConstructor2::constructorCallback(const v8::FunctionCallbackInfo<v8::Value>& info)
{
    TRACE_EVENT_SCOPED_SAMPLING_STATE("blink", "DOMConstructor");
    if (!info.IsConstructCall()) {
        throwTypeError(ExceptionMessages::constructorNotCallableAsFunction("TestInterfaceConstructor2"), info.GetIsolate());
        return;
    }

    if (ConstructorMode::current(info.GetIsolate()) == ConstructorMode::WrapExistingObject) {
        v8SetReturnValue(info, info.Holder());
        return;
    }

    TestInterfaceConstructor2V8Internal::constructor(info);
}

static void installV8TestInterfaceConstructor2Template(v8::Handle<v8::FunctionTemplate> functionTemplate, v8::Isolate* isolate)
{
    functionTemplate->ReadOnlyPrototype();

    v8::Local<v8::Signature> defaultSignature;
    defaultSignature = V8DOMConfiguration::installDOMClassTemplate(functionTemplate, "TestInterfaceConstructor2", v8::Local<v8::FunctionTemplate>(), V8TestInterfaceConstructor2::internalFieldCount,
        0, 0,
        0, 0,
        0, 0,
        isolate);
    functionTemplate->SetCallHandler(V8TestInterfaceConstructor2::constructorCallback);
    functionTemplate->SetLength(1);
    v8::Local<v8::ObjectTemplate> instanceTemplate ALLOW_UNUSED = functionTemplate->InstanceTemplate();
    v8::Local<v8::ObjectTemplate> prototypeTemplate ALLOW_UNUSED = functionTemplate->PrototypeTemplate();

    // Custom toString template
    functionTemplate->Set(v8AtomicString(isolate, "toString"), V8PerIsolateData::from(isolate)->toStringTemplate());
}

v8::Handle<v8::FunctionTemplate> V8TestInterfaceConstructor2::domTemplate(v8::Isolate* isolate)
{
    return V8DOMConfiguration::domClassTemplate(isolate, const_cast<WrapperTypeInfo*>(&wrapperTypeInfo), installV8TestInterfaceConstructor2Template);
}

bool V8TestInterfaceConstructor2::hasInstance(v8::Handle<v8::Value> v8Value, v8::Isolate* isolate)
{
    return V8PerIsolateData::from(isolate)->hasInstance(&wrapperTypeInfo, v8Value);
}

v8::Handle<v8::Object> V8TestInterfaceConstructor2::findInstanceInPrototypeChain(v8::Handle<v8::Value> v8Value, v8::Isolate* isolate)
{
    return V8PerIsolateData::from(isolate)->findInstanceInPrototypeChain(&wrapperTypeInfo, v8Value);
}

TestInterfaceConstructor2* V8TestInterfaceConstructor2::toNativeWithTypeCheck(v8::Isolate* isolate, v8::Handle<v8::Value> value)
{
    return hasInstance(value, isolate) ? fromInternalPointer(v8::Handle<v8::Object>::Cast(value)->GetAlignedPointerFromInternalField(v8DOMWrapperObjectIndex)) : 0;
}

v8::Handle<v8::Object> wrap(TestInterfaceConstructor2* impl, v8::Handle<v8::Object> creationContext, v8::Isolate* isolate)
{
    ASSERT(impl);
    ASSERT(!DOMDataStore::containsWrapper<V8TestInterfaceConstructor2>(impl, isolate));
    return V8TestInterfaceConstructor2::createWrapper(impl, creationContext, isolate);
}

v8::Handle<v8::Object> V8TestInterfaceConstructor2::createWrapper(PassRefPtr<TestInterfaceConstructor2> impl, v8::Handle<v8::Object> creationContext, v8::Isolate* isolate)
{
    ASSERT(impl);
    ASSERT(!DOMDataStore::containsWrapper<V8TestInterfaceConstructor2>(impl.get(), isolate));
    if (ScriptWrappable::wrapperCanBeStoredInObject(impl.get())) {
        const WrapperTypeInfo* actualInfo = ScriptWrappable::fromObject(impl.get())->typeInfo();
        // Might be a XXXConstructor::wrapperTypeInfo instead of an XXX::wrapperTypeInfo. These will both have
        // the same object de-ref functions, though, so use that as the basis of the check.
        RELEASE_ASSERT_WITH_SECURITY_IMPLICATION(actualInfo->derefObjectFunction == wrapperTypeInfo.derefObjectFunction);
    }

    v8::Handle<v8::Object> wrapper = V8DOMWrapper::createWrapper(creationContext, &wrapperTypeInfo, toInternalPointer(impl.get()), isolate);
    if (UNLIKELY(wrapper.IsEmpty()))
        return wrapper;

    installPerContextEnabledProperties(wrapper, impl.get(), isolate);
    V8DOMWrapper::associateObjectWithWrapper<V8TestInterfaceConstructor2>(impl, &wrapperTypeInfo, wrapper, isolate, WrapperConfiguration::Independent);
    return wrapper;
}

void V8TestInterfaceConstructor2::derefObject(void* object)
{
    fromInternalPointer(object)->deref();
}

template<>
v8::Handle<v8::Value> toV8NoInline(TestInterfaceConstructor2* impl, v8::Handle<v8::Object> creationContext, v8::Isolate* isolate)
{
    return toV8(impl, creationContext, isolate);
}

} // namespace WebCore
