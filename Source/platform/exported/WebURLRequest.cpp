/*
 * Copyright (C) 2009 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 *     * Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above
 * copyright notice, this list of conditions and the following disclaimer
 * in the documentation and/or other materials provided with the
 * distribution.
 *     * Neither the name of Google Inc. nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "public/platform/WebURLRequest.h"

#include "platform/exported/WebURLRequestPrivate.h"
#include "platform/network/ResourceRequest.h"
#include "public/platform/WebHTTPBody.h"
#include "public/platform/WebHTTPHeaderVisitor.h"
#include "public/platform/WebURL.h"

using namespace WebCore;

namespace blink {

namespace {

class ExtraDataContainer : public ResourceRequest::ExtraData {
public:
    static PassRefPtr<ExtraDataContainer> create(WebURLRequest::ExtraData* extraData) { return adoptRef(new ExtraDataContainer(extraData)); }

    virtual ~ExtraDataContainer() { }

    WebURLRequest::ExtraData* extraData() const { return m_extraData.get(); }

private:
    explicit ExtraDataContainer(WebURLRequest::ExtraData* extraData)
        : m_extraData(adoptPtr(extraData))
    {
    }

    OwnPtr<WebURLRequest::ExtraData> m_extraData;
};

} // namespace

// The standard implementation of WebURLRequestPrivate, which maintains
// ownership of a ResourceRequest instance.
class WebURLRequestPrivateImpl : public WebURLRequestPrivate {
public:
    WebURLRequestPrivateImpl()
    {
        m_resourceRequest = &m_resourceRequestAllocation;
    }

    WebURLRequestPrivateImpl(const WebURLRequestPrivate* p)
        : m_resourceRequestAllocation(*p->m_resourceRequest)
    {
        m_resourceRequest = &m_resourceRequestAllocation;
    }

    virtual void dispose() { delete this; }

private:
    virtual ~WebURLRequestPrivateImpl() { }

    ResourceRequest m_resourceRequestAllocation;
};

void WebURLRequest::initialize()
{
    assign(new WebURLRequestPrivateImpl());
}

void WebURLRequest::reset()
{
    assign(0);
}

void WebURLRequest::assign(const WebURLRequest& r)
{
    if (&r != this)
        assign(r.m_private ? new WebURLRequestPrivateImpl(r.m_private) : 0);
}

bool WebURLRequest::isNull() const
{
    return !m_private || m_private->m_resourceRequest->isNull();
}

WebURL WebURLRequest::url() const
{
    return m_private->m_resourceRequest->url();
}

void WebURLRequest::setURL(const WebURL& url)
{
    m_private->m_resourceRequest->setURL(url);
}

WebURL WebURLRequest::firstPartyForCookies() const
{
    return m_private->m_resourceRequest->firstPartyForCookies();
}

void WebURLRequest::setFirstPartyForCookies(const WebURL& firstPartyForCookies)
{
    m_private->m_resourceRequest->setFirstPartyForCookies(firstPartyForCookies);
}

bool WebURLRequest::allowStoredCredentials() const
{
    return m_private->m_resourceRequest->allowStoredCredentials();
}

void WebURLRequest::setAllowStoredCredentials(bool allowStoredCredentials)
{
    m_private->m_resourceRequest->setAllowStoredCredentials(allowStoredCredentials);
}

WebURLRequest::CachePolicy WebURLRequest::cachePolicy() const
{
    return static_cast<WebURLRequest::CachePolicy>(
        m_private->m_resourceRequest->cachePolicy());
}

void WebURLRequest::setCachePolicy(CachePolicy cachePolicy)
{
    m_private->m_resourceRequest->setCachePolicy(
        static_cast<ResourceRequestCachePolicy>(cachePolicy));
}

WebString WebURLRequest::httpMethod() const
{
    return m_private->m_resourceRequest->httpMethod();
}

void WebURLRequest::setHTTPMethod(const WebString& httpMethod)
{
    m_private->m_resourceRequest->setHTTPMethod(httpMethod);
}

WebString WebURLRequest::httpHeaderField(const WebString& name) const
{
    return m_private->m_resourceRequest->httpHeaderField(name);
}

void WebURLRequest::setHTTPHeaderField(const WebString& name, const WebString& value)
{
    RELEASE_ASSERT(!equalIgnoringCase(name, "referer"));
    m_private->m_resourceRequest->setHTTPHeaderField(name, value);
}

void WebURLRequest::setHTTPReferrer(const WebString& referrer, WebReferrerPolicy referrerPolicy)
{
    if (referrer.isEmpty())
        m_private->m_resourceRequest->clearHTTPReferrer();
    else
        m_private->m_resourceRequest->setHTTPReferrer(Referrer(referrer, static_cast<ReferrerPolicy>(referrerPolicy)));
}

void WebURLRequest::addHTTPHeaderField(const WebString& name, const WebString& value)
{
    m_private->m_resourceRequest->addHTTPHeaderField(name, value);
}

void WebURLRequest::clearHTTPHeaderField(const WebString& name)
{
    m_private->m_resourceRequest->clearHTTPHeaderField(name);
}

void WebURLRequest::visitHTTPHeaderFields(WebHTTPHeaderVisitor* visitor) const
{
    const HTTPHeaderMap& map = m_private->m_resourceRequest->httpHeaderFields();
    for (HTTPHeaderMap::const_iterator it = map.begin(); it != map.end(); ++it)
        visitor->visitHeader(it->key, it->value);
}

WebHTTPBody WebURLRequest::httpBody() const
{
    return WebHTTPBody(m_private->m_resourceRequest->httpBody());
}

void WebURLRequest::setHTTPBody(const WebHTTPBody& httpBody)
{
    m_private->m_resourceRequest->setHTTPBody(httpBody);
}

bool WebURLRequest::reportUploadProgress() const
{
    return m_private->m_resourceRequest->reportUploadProgress();
}

void WebURLRequest::setReportUploadProgress(bool reportUploadProgress)
{
    m_private->m_resourceRequest->setReportUploadProgress(reportUploadProgress);
}

void WebURLRequest::setReportRawHeaders(bool reportRawHeaders)
{
    m_private->m_resourceRequest->setReportRawHeaders(reportRawHeaders);
}

bool WebURLRequest::reportRawHeaders() const
{
    return m_private->m_resourceRequest->reportRawHeaders();
}

WebURLRequest::RequestContext WebURLRequest::requestContext() const
{
    return m_private->m_resourceRequest->requestContext();
}

WebURLRequest::FrameType WebURLRequest::frameType() const
{
    return m_private->m_resourceRequest->frameType();
}

WebReferrerPolicy WebURLRequest::referrerPolicy() const
{
    return static_cast<WebReferrerPolicy>(m_private->m_resourceRequest->referrerPolicy());
}

void WebURLRequest::addHTTPOriginIfNeeded(const WebString& origin)
{
    m_private->m_resourceRequest->addHTTPOriginIfNeeded(origin);
}

bool WebURLRequest::hasUserGesture() const
{
    return m_private->m_resourceRequest->hasUserGesture();
}

void WebURLRequest::setHasUserGesture(bool hasUserGesture)
{
    m_private->m_resourceRequest->setHasUserGesture(hasUserGesture);
}

void WebURLRequest::setRequestContext(RequestContext requestContext)
{
    m_private->m_resourceRequest->setRequestContext(requestContext);
}

void WebURLRequest::setFrameType(FrameType frameType)
{
    m_private->m_resourceRequest->setFrameType(frameType);
}

int WebURLRequest::requestorID() const
{
    return m_private->m_resourceRequest->requestorID();
}

void WebURLRequest::setRequestorID(int requestorID)
{
    m_private->m_resourceRequest->setRequestorID(requestorID);
}

int WebURLRequest::requestorProcessID() const
{
    return m_private->m_resourceRequest->requestorProcessID();
}

void WebURLRequest::setRequestorProcessID(int requestorProcessID)
{
    m_private->m_resourceRequest->setRequestorProcessID(requestorProcessID);
}

int WebURLRequest::appCacheHostID() const
{
    return m_private->m_resourceRequest->appCacheHostID();
}

void WebURLRequest::setAppCacheHostID(int appCacheHostID)
{
    m_private->m_resourceRequest->setAppCacheHostID(appCacheHostID);
}

bool WebURLRequest::downloadToFile() const
{
    return m_private->m_resourceRequest->downloadToFile();
}

void WebURLRequest::setDownloadToFile(bool downloadToFile)
{
    m_private->m_resourceRequest->setDownloadToFile(downloadToFile);
}

WebURLRequest::ExtraData* WebURLRequest::extraData() const
{
    RefPtr<ResourceRequest::ExtraData> data = m_private->m_resourceRequest->extraData();
    if (!data)
        return 0;
    return static_cast<ExtraDataContainer*>(data.get())->extraData();
}

void WebURLRequest::setExtraData(WebURLRequest::ExtraData* extraData)
{
    m_private->m_resourceRequest->setExtraData(ExtraDataContainer::create(extraData));
}

ResourceRequest& WebURLRequest::toMutableResourceRequest()
{
    ASSERT(m_private);
    ASSERT(m_private->m_resourceRequest);

    return *m_private->m_resourceRequest;
}

WebURLRequest::Priority WebURLRequest::priority() const
{
    return static_cast<WebURLRequest::Priority>(
        m_private->m_resourceRequest->priority());
}

void WebURLRequest::setPriority(WebURLRequest::Priority priority)
{
    m_private->m_resourceRequest->setPriority(
        static_cast<ResourceLoadPriority>(priority));
}

const ResourceRequest& WebURLRequest::toResourceRequest() const
{
    ASSERT(m_private);
    ASSERT(m_private->m_resourceRequest);

    return *m_private->m_resourceRequest;
}

void WebURLRequest::assign(WebURLRequestPrivate* p)
{
    // Subclasses may call this directly so a self-assignment check is needed
    // here as well as in the public assign method.
    if (m_private == p)
        return;
    if (m_private)
        m_private->dispose();
    m_private = p;
}

WebURLRequest::RequestContext WebURLRequest::requestContextFromTargetType(WebURLRequest::TargetType targetType)
{
    switch (targetType) {
    case TargetIsMainFrame:
        return RequestContextHyperlink; // FIXME: Fetch defines the target separately from the cause. Need to work that out here.
    case TargetIsSubframe:
        return RequestContextIframe;
    case TargetIsSubresource:
        return RequestContextSubresource;
    case TargetIsStyleSheet:
        return RequestContextStyle;
    case TargetIsScript:
        return RequestContextScript;
    case TargetIsFontResource:
        return RequestContextFont;
    case TargetIsImage:
        return RequestContextImage;
    case TargetIsObject:
        return RequestContextObject;
    case TargetIsMedia:
        // FIXME: Split this out.
        return RequestContextVideo;
    case TargetIsWorker:
        return RequestContextWorker;
    case TargetIsSharedWorker:
        return RequestContextSharedWorker;
    case TargetIsPrefetch:
        return RequestContextPrefetch;
    case TargetIsFavicon:
        return RequestContextFavicon;
    case TargetIsXHR:
        return RequestContextXMLHttpRequest;
    case TargetIsTextTrack:
        return RequestContextTrack;
    case TargetIsPing:
        return RequestContextPing;
    case TargetIsServiceWorker:
        return RequestContextServiceWorker;
    case TargetIsUnspecified:
        return RequestContextUnspecified;
    }
    ASSERT_NOT_REACHED();
    return RequestContextUnspecified;
}

WebURLRequest::TargetType WebURLRequest::targetTypeFromRequestContextAndFrameType(WebURLRequest::RequestContext requestContext, WebURLRequest::FrameType frameType)
{
    if (frameType != FrameTypeNone) {
        ASSERT(requestContext == RequestContextForm || requestContext == RequestContextFrame || requestContext == RequestContextHyperlink || requestContext == RequestContextIframe || requestContext == RequestContextInternal || requestContext == RequestContextLocation);
        if (frameType == FrameTypeTopLevel || frameType == FrameTypeAuxiliary)
            return TargetIsMainFrame;
        if (frameType == FrameTypeNested)
            return TargetIsSubframe;
        ASSERT_NOT_REACHED();
        return TargetIsUnspecified;
    }

    switch (requestContext) {
    // Favicon
    case RequestContextFavicon:
        return TargetIsFavicon;

    // Font
    case RequestContextFont:
        return TargetIsFontResource;

    // Image
    case RequestContextImage:
        return TargetIsImage;

    // Media
    case RequestContextAudio:
    case RequestContextVideo:
        return TargetIsMedia;

    // Object
    case RequestContextEmbed:
    case RequestContextObject:
        return TargetIsObject;

    // Ping
    case RequestContextBeacon:
    case RequestContextCSPReport:
    case RequestContextPing:
        return TargetIsPing;

    // Prefetch
    case RequestContextPrefetch:
        return TargetIsPrefetch;

    // Script
    case RequestContextScript:
        return TargetIsScript;

    // Style
    case RequestContextXSLT:
    case RequestContextStyle:
        return TargetIsStyleSheet;


    // Subresource
    case RequestContextDownload:
    case RequestContextManifest:
    case RequestContextSubresource:
    case RequestContextPlugin:
        return TargetIsSubresource;

    // TextTrack
    case RequestContextTrack:
        return TargetIsTextTrack;

    // Workers
    case RequestContextServiceWorker:
        return TargetIsServiceWorker;
    case RequestContextSharedWorker:
        return TargetIsSharedWorker;
    case RequestContextWorker:
        return TargetIsWorker;

    // Unspecified
    case RequestContextInternal:
    case RequestContextUnspecified:
        return TargetIsUnspecified;

    // XHR
    case RequestContextEventSource:
    case RequestContextFetch:
    case RequestContextXMLHttpRequest:
        return TargetIsXHR;

    // These should be handled by the FrameType checks at the top of the function.
    // Main Frame
    case RequestContextForm:
    case RequestContextHyperlink:
    case RequestContextLocation:
    case RequestContextFrame:
    case RequestContextIframe:
        ASSERT_NOT_REACHED();
        return TargetIsUnspecified;
    }
    ASSERT_NOT_REACHED();
    return TargetIsUnspecified;
}

// FIXME: Drop these two methods once embedders are updated to use RequestContexts.
WebURLRequest::TargetType WebURLRequest::targetType() const
{
    // FIXME: Temporary special case until downstream chromium.org knows of the new TargetTypes.
    TargetType targetType = WebURLRequest::targetTypeFromRequestContextAndFrameType(requestContext(), frameType());
    if (targetType == TargetIsTextTrack || targetType == TargetIsUnspecified)
        return TargetIsSubresource;
    return targetType;
}

void WebURLRequest::setTargetType(TargetType targetType)
{
    setRequestContext(WebURLRequest::requestContextFromTargetType(targetType));
    if (targetType == TargetIsMainFrame)
        setFrameType(FrameTypeTopLevel);
    if (targetType == TargetIsSubframe)
        setFrameType(FrameTypeNested);
}


} // namespace blink
