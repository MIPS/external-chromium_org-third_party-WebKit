// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef ResponseInit_h
#define ResponseInit_h

#include "bindings/core/v8/Dictionary.h"
#include "modules/serviceworkers/Headers.h"
#include "platform/heap/Handle.h"
#include "wtf/RefPtr.h"

namespace WebCore {

class ResponseInit {
    STACK_ALLOCATED();
public:
    ResponseInit()
        : status(200)
        , statusText("OK")
    {
    }
    explicit ResponseInit(const Dictionary& options)
        : status(200)
        , statusText("OK")
    {
        DictionaryHelper::get(options, "status", status);
        // FIXME: Spec uses ByteString for statusText. http://crbug.com/347426
        DictionaryHelper::get(options, "statusText", statusText);
        DictionaryHelper::get(options, "headers", headers);
        if (!headers) {
            DictionaryHelper::get(options, "headers", headersDictionary);
        }
    }

    unsigned short status;
    String statusText;
    RefPtrWillBeMember<Headers> headers;
    Dictionary headersDictionary;
};

}

#endif // ResponseInit_h
