/*
 * Copyright (C) 2008 Apple Inc. All rights reserved.
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

#ifndef AXListBoxOption_h
#define AXListBoxOption_h

#include "core/accessibility/AXRenderObject.h"
#include "core/html/HTMLElement.h"
#include "wtf/Forward.h"

namespace WebCore {

class AXListBox;
class Element;
class HTMLElement;
class HTMLSelectElement;

class AXListBoxOption FINAL : public AXRenderObject {

private:
    AXListBoxOption(RenderObject*);
public:
    static PassRefPtr<AXListBoxOption> create(RenderObject*);
    virtual ~AXListBoxOption();

    virtual AccessibilityRole roleValue() const OVERRIDE { return ListBoxOptionRole; }
    virtual bool isSelected() const OVERRIDE;
    virtual bool isEnabled() const OVERRIDE;
    virtual bool isSelectedOptionActive() const OVERRIDE;
    virtual void setSelected(bool) OVERRIDE;
    virtual bool canSetSelectedAttribute() const OVERRIDE;
    virtual String stringValue() const OVERRIDE;
    virtual String title() const OVERRIDE { return String(); }

private:
    virtual bool isListBoxOption() const OVERRIDE { return true; }
    virtual bool canHaveChildren() const OVERRIDE { return false; }
    virtual bool computeAccessibilityIsIgnored() const OVERRIDE;

    HTMLSelectElement* listBoxOptionParentNode() const;
    int listBoxOptionIndex() const;
    AXObject* listBoxOptionAXObject(HTMLElement*) const;
};

DEFINE_AX_OBJECT_TYPE_CASTS(AXListBoxOption, isListBoxOption());

} // namespace WebCore

#endif // AXListBoxOption_h
