/*
 * Copyright (C) 2008 Nikolas Zimmermann <zimmermann@kde.org>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

#include "config.h"

#if ENABLE(SVG_FONTS)
#include "core/svg/SVGFontData.h"

#include "core/SVGNames.h"
#include "core/XMLNames.h"
#include "core/rendering/RenderObject.h"
#include "core/rendering/svg/SVGTextRunRenderingContext.h"
#include "core/svg/SVGAltGlyphElement.h"
#include "core/svg/SVGFontElement.h"
#include "core/svg/SVGFontFaceElement.h"
#include "core/svg/SVGGlyphElement.h"
#include "platform/fonts/Character.h"
#include "platform/fonts/SVGGlyph.h"
#include "platform/fonts/SimpleFontData.h"
#include "platform/fonts/WidthIterator.h"
#include "platform/text/TextRun.h"
#include "wtf/text/StringBuilder.h"
#include "wtf/unicode/CharacterNames.h"
#include "wtf/unicode/Unicode.h"

using namespace WTF;
using namespace Unicode;

namespace WebCore {

SVGFontData::SVGFontData(SVGFontFaceElement* fontFaceElement)
    : CustomFontData()
    , m_svgFontFaceElement(fontFaceElement->createWeakRef())
    , m_horizontalOriginX(fontFaceElement->horizontalOriginX())
    , m_horizontalOriginY(fontFaceElement->horizontalOriginY())
    , m_horizontalAdvanceX(fontFaceElement->horizontalAdvanceX())
    , m_verticalOriginX(fontFaceElement->verticalOriginX())
    , m_verticalOriginY(fontFaceElement->verticalOriginY())
    , m_verticalAdvanceY(fontFaceElement->verticalAdvanceY())
{
    ASSERT_ARG(fontFaceElement, fontFaceElement);
}

SVGFontData::~SVGFontData()
{
}

void SVGFontData::initializeFontData(SimpleFontData* fontData, float fontSize)
{
    ASSERT(fontData);

    SVGFontFaceElement* svgFontFaceElement = this->svgFontFaceElement();

    SVGFontElement* svgFontElement = svgFontFaceElement->associatedFontElement();
    ASSERT(svgFontElement);
    GlyphData missingGlyphData;
    missingGlyphData.fontData = fontData;
    missingGlyphData.glyph = svgFontElement->missingGlyph();
    fontData->setMissingGlyphData(missingGlyphData);

    fontData->setZeroWidthSpaceGlyph(0);
    fontData->determinePitch();

    unsigned unitsPerEm = svgFontFaceElement->unitsPerEm();
    float scale = scaleEmToUnits(fontSize, unitsPerEm);
    float xHeight = svgFontFaceElement->xHeight() * scale;
    float ascent = svgFontFaceElement->ascent() * scale;
    float descent = svgFontFaceElement->descent() * scale;
    float lineGap = 0.1f * fontSize;

    GlyphPage* glyphPageZero = GlyphPageTreeNode::getRootChild(fontData, 0)->page();

    if (!xHeight && glyphPageZero) {
        // Fallback if x_heightAttr is not specified for the font element.
        Glyph letterXGlyph = glyphPageZero->glyphForCharacter('x');
        xHeight = letterXGlyph ? fontData->widthForGlyph(letterXGlyph) : 2 * ascent / 3;
    }

    FontMetrics& fontMetrics = fontData->fontMetrics();
    fontMetrics.setUnitsPerEm(unitsPerEm);
    fontMetrics.setAscent(ascent);
    fontMetrics.setDescent(descent);
    fontMetrics.setLineGap(lineGap);
    fontMetrics.setLineSpacing(roundf(ascent) + roundf(descent) + roundf(lineGap));
    fontMetrics.setXHeight(xHeight);

    if (!glyphPageZero) {
        fontData->setSpaceGlyph(0);
        fontData->setSpaceWidth(0);
        fontData->setAvgCharWidth(0);
        fontData->setMaxCharWidth(ascent);
        return;
    }

    // Calculate space width.
    Glyph spaceGlyph = glyphPageZero->glyphForCharacter(' ');
    fontData->setSpaceGlyph(spaceGlyph);
    fontData->setSpaceWidth(fontData->widthForGlyph(spaceGlyph));

    // Estimate average character width.
    Glyph numeralZeroGlyph = glyphPageZero->glyphForCharacter('0');
    fontData->setAvgCharWidth(numeralZeroGlyph ? fontData->widthForGlyph(numeralZeroGlyph) : fontData->spaceWidth());

    // Estimate maximum character width.
    Glyph letterWGlyph = glyphPageZero->glyphForCharacter('W');
    fontData->setMaxCharWidth(letterWGlyph ? fontData->widthForGlyph(letterWGlyph) : ascent);
}

float SVGFontData::widthForSVGGlyph(Glyph glyph, float fontSize) const
{
    // FIXME: (http://crbug.com/359380) Width calculation may be triggered after removeNode from the current editing impl.
    // The retrieved width is not being used, so here we return a dummy value.
    if (shouldSkipDrawing())
        return 0.0;

    SVGFontFaceElement* svgFontFaceElement = this->svgFontFaceElement();

    // RenderView::clearSelection is invoked while removing some element, e.g.
    // Document::nodeWillBeRemoved => FrameSelection::nodeWillBeRemoved => RenderView::clearSelection.
    // Since recalc style has not been executed yet, RenderStyle might have some reference to
    // SVGFontFaceElement which was also removed.
    // In this case, use default horizontalAdvanceX instead of associatedFontElement's one.
    if (!svgFontFaceElement->inDocument())
        return m_horizontalAdvanceX * scaleEmToUnits(fontSize, svgFontFaceElement->unitsPerEm());

    SVGFontElement* associatedFontElement = svgFontFaceElement->associatedFontElement();
    ASSERT(associatedFontElement);

    SVGGlyph svgGlyph = associatedFontElement->svgGlyphForGlyph(glyph);
    SVGGlyphElement::inheritUnspecifiedAttributes(svgGlyph, this);
    return svgGlyph.horizontalAdvanceX * scaleEmToUnits(fontSize, svgFontFaceElement->unitsPerEm());
}

bool SVGFontData::applySVGGlyphSelection(WidthIterator& iterator, GlyphData& glyphData, bool mirror, int currentCharacter, unsigned& advanceLength) const
{
    const TextRun& run = iterator.run();
    Vector<SVGGlyph::ArabicForm>& arabicForms = iterator.arabicForms();
    ASSERT(int(run.charactersLength()) >= currentCharacter);

    // Associate text with arabic forms, if needed.
    String remainingTextInRun;

    if (run.is8Bit()) {
        remainingTextInRun = String(run.data8(currentCharacter), run.charactersLength() - currentCharacter);
        remainingTextInRun = Character::normalizeSpaces(remainingTextInRun.characters8(), remainingTextInRun.length());
    } else {
        remainingTextInRun = String(run.data16(currentCharacter), run.charactersLength() - currentCharacter);
        remainingTextInRun = Character::normalizeSpaces(remainingTextInRun.characters16(), remainingTextInRun.length());
    }

    if (mirror)
        remainingTextInRun = createStringWithMirroredCharacters(remainingTextInRun);
    if (!currentCharacter && arabicForms.isEmpty())
        arabicForms = charactersWithArabicForm(remainingTextInRun, mirror);

    SVGFontFaceElement* svgFontFaceElement = this->svgFontFaceElement();
    SVGFontElement* associatedFontElement = svgFontFaceElement->associatedFontElement();
    ASSERT(associatedFontElement);

    RenderObject* renderObject = 0;
    if (TextRun::RenderingContext* renderingContext = run.renderingContext())
        renderObject = static_cast<SVGTextRunRenderingContext*>(renderingContext)->renderer();

    String language;
    bool isVerticalText = false;
    Vector<AtomicString> altGlyphNames;

    if (renderObject) {
        RenderObject* parentRenderObject = renderObject->isText() ? renderObject->parent() : renderObject;
        ASSERT(parentRenderObject);

        isVerticalText = parentRenderObject->style()->svgStyle().isVerticalWritingMode();
        if (Element* parentRenderObjectElement = toElement(parentRenderObject->node())) {
            language = parentRenderObjectElement->getAttribute(XMLNames::langAttr);

            if (isSVGAltGlyphElement(*parentRenderObjectElement)) {
                if (!toSVGAltGlyphElement(*parentRenderObjectElement).hasValidGlyphElements(altGlyphNames))
                    altGlyphNames.clear();
            }
        }
    }

    Vector<SVGGlyph> glyphs;
    size_t altGlyphNamesSize = altGlyphNames.size();
    if (altGlyphNamesSize) {
        for (size_t index = 0; index < altGlyphNamesSize; ++index)
            associatedFontElement->collectGlyphsForAltGlyphReference(altGlyphNames[index], glyphs);

        // Assign the unicodeStringLength now that its known.
        size_t glyphsSize = glyphs.size();
        for (size_t i = 0; i < glyphsSize; ++i)
            glyphs[i].unicodeStringLength = run.length();

        // Do not check alt glyphs for compatibility. Just return the first one.
        // Later code will fail if we do not do this and the glyph is incompatible.
        if (glyphsSize) {
            SVGGlyph& svgGlyph = glyphs[0];
            glyphData.glyph = svgGlyph.tableEntry;
            advanceLength = svgGlyph.unicodeStringLength;
            return true;
        }
    } else
        associatedFontElement->collectGlyphsForString(remainingTextInRun, glyphs);

    size_t glyphsSize = glyphs.size();
    for (size_t i = 0; i < glyphsSize; ++i) {
        SVGGlyph& svgGlyph = glyphs[i];
        if (svgGlyph.isPartOfLigature)
            continue;
        if (!isCompatibleGlyph(svgGlyph, isVerticalText, language, arabicForms, currentCharacter, currentCharacter + svgGlyph.unicodeStringLength))
            continue;
        glyphData.glyph = svgGlyph.tableEntry;
        advanceLength = svgGlyph.unicodeStringLength;
        return true;
    }

    return false;
}

bool SVGFontData::fillSVGGlyphPage(GlyphPage* pageToFill, unsigned offset, unsigned length, UChar* buffer, unsigned bufferLength, const SimpleFontData* fontData) const
{
    ASSERT(fontData->isCustomFont());
    ASSERT(fontData->isSVGFont());

    SVGFontFaceElement* fontFaceElement = this->svgFontFaceElement();
    SVGFontElement* fontElement = fontFaceElement->associatedFontElement();
    ASSERT(fontElement);

    if (bufferLength == length)
        return fillBMPGlyphs(fontElement, pageToFill, offset, length, buffer, fontData);

    ASSERT(bufferLength == 2 * length);
    return fillNonBMPGlyphs(fontElement, pageToFill, offset, length, buffer, fontData);
}

bool SVGFontData::fillBMPGlyphs(SVGFontElement* fontElement, GlyphPage* pageToFill, unsigned offset, unsigned length, UChar* buffer, const SimpleFontData* fontData) const
{
    bool haveGlyphs = false;
    Vector<SVGGlyph> glyphs;
    for (unsigned i = 0; i < length; ++i) {
        String lookupString(buffer + i, 1);
        fontElement->collectGlyphsForString(lookupString, glyphs);
        if (glyphs.isEmpty())
            continue;

        // Associate entry in glyph page with first valid SVGGlyph.
        // If there are multiple valid ones, just take the first one. WidthIterator will take
        // care of matching to the correct glyph, if multiple ones are available, as that's
        // only possible within the context of a string (eg. arabic form matching).
        haveGlyphs = true;
        pageToFill->setGlyphDataForIndex(offset + i, glyphs.first().tableEntry, fontData);
        glyphs.clear();
    }

    return haveGlyphs;
}

bool SVGFontData::fillNonBMPGlyphs(SVGFontElement* fontElement, GlyphPage* pageToFill, unsigned offset, unsigned length, UChar* buffer, const SimpleFontData* fontData) const
{
    bool haveGlyphs = false;
    Vector<SVGGlyph> glyphs;
    for (unsigned i = 0; i < length; ++i) {
        // Each character here consists of a surrogate pair
        String lookupString(buffer + i * 2, 2);
        fontElement->collectGlyphsForString(lookupString, glyphs);
        if (glyphs.isEmpty())
            continue;

        // Associate entry in glyph page with first valid SVGGlyph.
        // If there are multiple valid ones, just take the first one. WidthIterator will take
        // care of matching to the correct glyph, if multiple ones are available, as that's
        // only possible within the context of a string (eg. arabic form matching).
        haveGlyphs = true;
        pageToFill->setGlyphDataForIndex(offset + i, glyphs.first().tableEntry, fontData);
        glyphs.clear();
    }

    return haveGlyphs;
}

String SVGFontData::createStringWithMirroredCharacters(const String& string) const
{
    if (string.isEmpty())
        return emptyString();

    unsigned length = string.length();

    StringBuilder mirroredCharacters;
    mirroredCharacters.reserveCapacity(length);

    if (string.is8Bit()) {
        const LChar* characters = string.characters8();
        for (unsigned i = 0; i < length; ++i)
            mirroredCharacters.append(mirroredChar(characters[i]));
    } else {
        const UChar* characters = string.characters16();
        unsigned i = 0;
        while (i < length) {
            UChar32 character;
            U16_NEXT(characters, i, length, character);
            mirroredCharacters.append(mirroredChar(character));
        }
    }

    return mirroredCharacters.toString();
}

SVGFontFaceElement* SVGFontData::svgFontFaceElement() const
{
    // FIXME: SVGFontData should be only used from the document with the SVGFontFaceElement.
    RELEASE_ASSERT(m_svgFontFaceElement && m_svgFontFaceElement->inDocument());
    return m_svgFontFaceElement.get();
}

bool SVGFontData::shouldSkipDrawing() const
{
    // FIXME: (http://crbug.com/359380) Glyph may be referenced after removeNode from the current editing impl.
    return !m_svgFontFaceElement || !m_svgFontFaceElement->inDocument();
}

} // namespace WebCore

#endif
