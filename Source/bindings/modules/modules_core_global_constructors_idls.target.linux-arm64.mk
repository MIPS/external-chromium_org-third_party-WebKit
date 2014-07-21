# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_Source_bindings_modules_modules_core_global_constructors_idls_gyp
LOCAL_MODULE_STEM := modules_core_global_constructors_idls
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_modules_modules_global_objects_gyp,,,$(GYP_VAR_PREFIX))/modules_global_objects.stamp

### Rules for action "generate_modules_core_global_constructors_idls":
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl: $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/generate_global_constructors.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/utilities.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/modules/modules_core_global_constructors_idls_idl_files_list.tmp $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/Animation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/AnimationEffect.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/AnimationPlayer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/AnimationNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/AnimationTimeline.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/animation/Timing.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/clipboard/DataTransfer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/clipboard/DataTransferItem.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/clipboard/DataTransferItemList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSS.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSCharsetRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSFontFaceLoadEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSFontFaceRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSImportRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSKeyframeRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSKeyframesRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSMediaRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSPageRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSPrimitiveValue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSRuleList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSStyleDeclaration.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSStyleRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSStyleSheet.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSSupportsRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSUnknownRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSValue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSValueList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/CSSViewportRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/Counter.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/FontFace.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/FontFaceSet.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/FontFaceSetForEachCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/MediaList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/MediaQueryList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/RGBColor.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/Rect.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/StyleMedia.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/StyleSheet.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/StyleSheetList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/WebKitCSSFilterRule.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/WebKitCSSFilterValue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/WebKitCSSMatrix.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/css/WebKitCSSTransformValue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Attr.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/CDATASection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/CharacterData.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/ClientRect.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/ClientRectList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Comment.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMError.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMException.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMImplementation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMSettableTokenList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMStringList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMStringMap.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DOMTokenList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Document.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DocumentFragment.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/DocumentType.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Element.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/MessageChannel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/MessagePort.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/MutationObserver.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/MutationRecord.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/NamedNodeMap.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Node.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/NodeFilter.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/NodeIterator.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/NodeList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Notation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/ProcessingInstruction.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Range.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/RequestAnimationFrameCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/StringCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Text.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/Touch.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/TouchList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/TreeWalker.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/URL.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/XMLDocument.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/dom/shadow/ShadowRoot.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/AnimationPlayerEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/ApplicationCacheErrorEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/AutocompleteErrorEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/BeforeUnloadEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/CompositionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/CustomEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/ErrorEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/Event.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/EventTarget.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/FocusEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/HashChangeEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/KeyboardEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/MessageEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/MouseEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/MutationEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/OverflowEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/PageTransitionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/PopStateEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/ProgressEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/ResourceProgressEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/SecurityPolicyViolationEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/TextEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/TouchEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/TransitionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/UIEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/WebKitAnimationEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/events/WheelEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/Blob.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/File.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/FileError.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/FileList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/FileReader.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/fileapi/FileReaderSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/BarProp.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/Console.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/ConsoleBase.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/History.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/ImageBitmap.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/Location.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/Navigator.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/Screen.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/WebKitPoint.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/frame/Window.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/FormData.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLAllCollection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLAnchorElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLAppletElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLAreaElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLAudioElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLBRElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLBaseElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLBodyElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLButtonElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLCanvasElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLCollection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLContentElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDListElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDataListElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDetailsElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDialogElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDirectoryElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDivElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLDocument.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLEmbedElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFieldSetElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFontElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFormControlsCollection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFormElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFrameElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLFrameSetElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLHRElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLHeadElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLHeadingElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLHtmlElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLIFrameElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLImageElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLInputElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLKeygenElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLLIElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLLabelElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLLegendElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLLinkElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMapElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMarqueeElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMediaElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMenuElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMetaElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLMeterElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLModElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLOListElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLObjectElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLOptGroupElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLOptionElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLOptionsCollection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLOutputElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLParagraphElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLParamElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLPictureElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLPreElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLProgressElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLQuoteElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLScriptElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLSelectElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLShadowElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLSourceElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLSpanElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLStyleElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableCaptionElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableCellElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableColElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableRowElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTableSectionElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTemplateElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTextAreaElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTitleElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLTrackElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLUListElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLUnknownElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/HTMLVideoElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/ImageData.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/MediaController.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/MediaError.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/MediaKeyError.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/MediaKeyEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/RadioNodeList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/TextMetrics.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/TimeRanges.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/ValidityState.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/VoidCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/ANGLEInstancedArrays.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/Canvas2DContextAttributes.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/CanvasGradient.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/CanvasPattern.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/CanvasRenderingContext2D.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/EXTBlendMinMax.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/EXTFragDepth.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/EXTShaderTextureLOD.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/EXTTextureFilterAnisotropic.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESElementIndexUint.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESStandardDerivatives.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESTextureFloat.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESTextureFloatLinear.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESTextureHalfFloat.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESTextureHalfFloatLinear.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/OESVertexArrayObject.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/Path2D.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLActiveInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLBuffer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLCompressedTextureATC.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLCompressedTextureETC1.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLCompressedTexturePVRTC.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLCompressedTextureS3TC.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLContextAttributes.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLContextEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLDebugRendererInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLDebugShaders.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLDepthTexture.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLDrawBuffers.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLFramebuffer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLLoseContext.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLProgram.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLRenderbuffer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLRenderingContext.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLShader.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLShaderPrecisionFormat.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLTexture.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLUniformLocation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/canvas/WebGLVertexArrayObjectOES.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/ime/InputMethodContext.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/AudioTrack.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/AudioTrackList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/TextTrack.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/TextTrackCue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/TextTrackCueList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/TextTrackList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/TrackEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/VideoTrack.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/VideoTrackList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/vtt/VTTCue.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/vtt/VTTRegion.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/html/track/vtt/VTTRegionList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/inspector/InjectedScriptHost.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/inspector/InspectorFrontendHost.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/inspector/InspectorOverlayHost.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/inspector/JavaScriptCallFrame.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/loader/appcache/ApplicationCache.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/page/EventSource.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/page/PagePopupController.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/page/Selection.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/plugins/MimeType.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/plugins/MimeTypeArray.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/plugins/Plugin.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/plugins/PluginArray.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/storage/Storage.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/storage/StorageEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/streams/Stream.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAltGlyphDefElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAltGlyphElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAltGlyphItemElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAngle.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimateElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimateMotionElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimateTransformElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedAngle.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedBoolean.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedEnumeration.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedInteger.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedLength.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedLengthList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedNumber.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedNumberList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedPreserveAspectRatio.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedRect.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedString.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimatedTransformList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGAnimationElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGCircleElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGClipPathElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGComponentTransferFunctionElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGCursorElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGDefsElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGDescElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGDiscardElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGEllipseElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEBlendElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEColorMatrixElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEComponentTransferElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFECompositeElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEConvolveMatrixElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEDiffuseLightingElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEDisplacementMapElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEDistantLightElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEDropShadowElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEFloodElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEFuncAElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEFuncBElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEFuncGElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEFuncRElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEGaussianBlurElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEImageElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEMergeElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEMergeNodeElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEMorphologyElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEOffsetElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFEPointLightElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFESpecularLightingElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFESpotLightElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFETileElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFETurbulenceElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFilterElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontFaceElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontFaceFormatElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontFaceNameElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontFaceSrcElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGFontFaceUriElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGForeignObjectElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGeometryElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGlyphElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGlyphRefElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGradientElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGGraphicsElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGHKernElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGImageElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGLength.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGLengthList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGLineElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGLinearGradientElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMPathElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMarkerElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMaskElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMatrix.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMetadataElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGMissingGlyphElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGNumber.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGNumberList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSeg.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegArcAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegArcRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegClosePath.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoCubicAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoCubicRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoCubicSmoothAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoCubicSmoothRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoQuadraticAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoQuadraticRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoQuadraticSmoothAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegCurvetoQuadraticSmoothRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoHorizontalAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoHorizontalRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoVerticalAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegLinetoVerticalRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegMovetoAbs.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPathSegMovetoRel.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPatternElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPoint.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPointList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPolygonElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPolylineElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGPreserveAspectRatio.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGRadialGradientElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGRect.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGRectElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGRenderingIntent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGSVGElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGScriptElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGSetElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGStopElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGStringList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGStyleElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGSwitchElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGSymbolElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTSpanElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTextContentElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTextElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTextPathElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTextPositioningElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTitleElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTransform.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGTransformList.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGUnitTypes.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGUseElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGVKernElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGViewElement.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGViewSpec.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/svg/SVGZoomEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/MemoryInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/Performance.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceEntry.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceMark.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceMeasure.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceNavigation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceResourceTiming.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/timing/PerformanceTiming.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/DedicatedWorkerGlobalScope.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/SharedWorker.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/SharedWorkerGlobalScope.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/Worker.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/WorkerConsole.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/WorkerGlobalScope.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/WorkerLocation.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/workers/WorkerNavigator.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/DOMParser.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XMLHttpRequest.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XMLHttpRequestEventTarget.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XMLHttpRequestProgressEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XMLHttpRequestUpload.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XMLSerializer.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XPathEvaluator.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XPathExpression.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XPathNSResolver.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XPathResult.idl $(LOCAL_PATH)/third_party/WebKit/Source/core/xml/XSLTProcessor.idl $(gyp_shared_intermediate_dir)/blink/bindings/modules/GlobalObjectsModules.pickle $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating IDL files for constructors on global objects for modules_core_global_constructors_idls ($@)"
	$(hide)cd $(gyp_local_path)/third_party/WebKit/Source/bindings/modules; mkdir -p $(gyp_shared_intermediate_dir)/blink/modules; python ../scripts/generate_global_constructors.py --idl-files-list modules_core_global_constructors_idls_idl_files_list.tmp --global-objects-file "$(gyp_shared_intermediate_dir)/blink/bindings/modules/GlobalObjectsModules.pickle" --write-file-only-if-changed 0 -- ServiceWorkerGlobalScope "$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl"

$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.h: $(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.idl \
	$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeCoreConstructors.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_bindings_modules_modules_core_global_constructors_idls_gyp

# Alias gyp target name.
.PHONY: modules_core_global_constructors_idls
modules_core_global_constructors_idls: third_party_WebKit_Source_bindings_modules_modules_core_global_constructors_idls_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
