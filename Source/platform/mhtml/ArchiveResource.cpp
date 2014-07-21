/*
 * Copyright (C) 2008, 2010 Apple Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1.  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 3.  Neither the name of Apple Computer, Inc. ("Apple") nor the names of
 *     its contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE AND ITS CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL APPLE OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "platform/mhtml/ArchiveResource.h"

namespace WebCore {

inline ArchiveResource::ArchiveResource(PassRefPtr<SharedBuffer> data, const KURL& url, const AtomicString& mimeType, const AtomicString& textEncoding, const String& frameName, const ResourceResponse& response)
    : m_url(url)
    , m_response(response)
    , m_data(data)
    , m_mimeType(mimeType)
    , m_textEncoding(textEncoding)
    , m_frameName(frameName)
{
    ASSERT(m_data);
}

ArchiveResource::~ArchiveResource()
{
}

PassRefPtrWillBeRawPtr<ArchiveResource> ArchiveResource::create(PassRefPtr<SharedBuffer> data, const KURL& url, const AtomicString& mimeType, const AtomicString& textEncoding, const String& frameName, const ResourceResponse& response)
{
    if (!data)
        return nullptr;
    if (response.isNull()) {
        const ResourceResponse& resourceResponse = ResourceResponse(url, mimeType, data->size(), textEncoding, String());
        return adoptRefWillBeNoop(new ArchiveResource(data, url, mimeType, textEncoding, frameName, resourceResponse));
    }
    return adoptRefWillBeNoop(new ArchiveResource(data, url, mimeType, textEncoding, frameName, response));
}

PassRefPtrWillBeRawPtr<ArchiveResource> ArchiveResource::create(PassRefPtr<SharedBuffer> data, const KURL& url, const ResourceResponse& response)
{
    return create(data, url, response.mimeType(), response.textEncodingName(), String(), response);
}

}
