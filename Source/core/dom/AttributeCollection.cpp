/*
 * Copyright (C) 2013 Google Inc. All rights reserved.
 * Copyright (C) 2014 Apple Inc. All rights reserved.
 * Copyright (C) 2014 Samsung Electronics. All rights reserved.
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
#include "core/dom/AttributeCollection.h"

#include "core/dom/Attr.h"

namespace WebCore {

size_t AttributeCollection::findIndex(Attr* attr) const
{
    // This relies on the fact that Attr's QualifiedName == the Attribute's name.
    const_iterator end = this->end();
    unsigned index = 0;
    for (const_iterator it = begin(); it != end; ++it, ++index) {
        if (it->name() == attr->qualifiedName())
            return index;
    }
    return kNotFound;
}

size_t AttributeCollection::findSlowCase(const AtomicString& name, bool shouldIgnoreAttributeCase) const
{
    // Continue to checking case-insensitively and/or full namespaced names if necessary:
    const_iterator end = this->end();
    unsigned index = 0;
    for (const_iterator it = begin(); it != end; ++it, ++index) {
        // FIXME: Why check the prefix? Namespace is all that should matter
        // and all HTML/SVG attributes have a null namespace!
        if (!it->name().hasPrefix()) {
            if (shouldIgnoreAttributeCase && equalIgnoringCase(name, it->localName()))
                return index;
        } else {
            // FIXME: Would be faster to do this comparison without calling toString, which
            // generates a temporary string by concatenation. But this branch is only reached
            // if the attribute name has a prefix, which is rare in HTML.
            if (equalPossiblyIgnoringCase(name, it->name().toString(), shouldIgnoreAttributeCase))
                return index;
        }
    }
    return kNotFound;
}

} // namespace WebCore
