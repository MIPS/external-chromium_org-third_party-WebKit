# This file is generated by gyp; do not edit.

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := GYP
LOCAL_MODULE := third_party_WebKit_Source_bindings_modules_modules_global_constructors_idls_gyp
LOCAL_MODULE_STEM := modules_global_constructors_idls
LOCAL_MODULE_SUFFIX := .stamp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_TARGET_ARCH := $(TARGET_$(GYP_VAR_PREFIX)ARCH)
gyp_intermediate_dir := $(call local-intermediates-dir,,$(GYP_VAR_PREFIX))
gyp_shared_intermediate_dir := $(call intermediates-dir-for,GYP,shared,,,$(GYP_VAR_PREFIX))

# Make sure our deps are built first.
GYP_TARGET_DEPENDENCIES := \
	$(call intermediates-dir-for,GYP,third_party_WebKit_Source_bindings_modules_modules_global_objects_gyp,,,$(GYP_VAR_PREFIX))/modules_global_objects.stamp

### Rules for action "generate_modules_global_constructors_idls":
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: gyp_local_path := $(LOCAL_PATH)
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: gyp_var_prefix := $(GYP_VAR_PREFIX)
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: gyp_intermediate_dir := $(abspath $(gyp_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: gyp_shared_intermediate_dir := $(abspath $(gyp_shared_intermediate_dir))
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: export PATH := $(subst $(ANDROID_BUILD_PATHS),,$(PATH))
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl: $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/generate_global_constructors.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/scripts/utilities.py $(LOCAL_PATH)/third_party/WebKit/Source/bindings/modules/modules_global_constructors_idls_idl_files_list.tmp $(LOCAL_PATH)/third_party/WebKit/Source/modules/battery/BatteryManager.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/crypto/Crypto.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/crypto/CryptoKey.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/crypto/SubtleCrypto.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/device_light/DeviceLightEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/device_orientation/DeviceAcceleration.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/device_orientation/DeviceMotionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/device_orientation/DeviceOrientationEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/device_orientation/DeviceRotationRate.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encoding/TextDecoder.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encoding/TextEncoder.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encryptedmedia/MediaKeyMessageEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encryptedmedia/MediaKeyNeededEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encryptedmedia/MediaKeySession.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/encryptedmedia/MediaKeys.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DOMFileSystem.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DOMFileSystemSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DirectoryEntry.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DirectoryEntrySync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DirectoryReader.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/DirectoryReaderSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/EntriesCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/Entry.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/EntryCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/EntrySync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/ErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileEntry.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileEntrySync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileSystemCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileWriter.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileWriterCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/FileWriterSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/Metadata.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/filesystem/MetadataCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/Gamepad.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/GamepadButton.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/GamepadEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/GamepadList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/WebKitGamepad.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/gamepad/WebKitGamepadList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/CircularRegion.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/Coordinates.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/GeofencingRegion.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/Geolocation.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/Geoposition.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/PositionCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/PositionError.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/geolocation/PositionErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBCursor.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBCursorWithValue.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBDatabase.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBFactory.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBIndex.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBKeyRange.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBObjectStore.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBOpenDBRequest.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBRequest.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBTransaction.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/indexeddb/IDBVersionChangeEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediasource/MediaSource.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediasource/SourceBuffer.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediasource/SourceBufferList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediasource/VideoPlaybackQuality.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaDeviceInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaDeviceInfoCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaStream.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaStreamEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaStreamTrack.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaStreamTrackEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/MediaStreamTrackSourcesCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/NavigatorUserMediaError.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/NavigatorUserMediaErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/NavigatorUserMediaSuccessCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCDTMFSender.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCDTMFToneChangeEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCDataChannel.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCDataChannelEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCIceCandidate.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCIceCandidateEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCPeerConnection.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCSessionDescription.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCSessionDescriptionCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCStatsCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCStatsReport.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/RTCStatsResponse.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/mediastream/SourceInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/netinfo/NetworkInformation.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/notifications/Notification.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/notifications/NotificationPermissionCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/performance/WorkerPerformance.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/push_messaging/PushEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/push_messaging/PushManager.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/push_messaging/PushRegistration.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/DeprecatedStorageInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/DeprecatedStorageQuota.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/StorageErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/StorageInfo.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/StorageQuota.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/StorageQuotaCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/quota/StorageUsageCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/screen_orientation/ScreenOrientation.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/Client.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/FetchBodyStream.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/FetchEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/Headers.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/HeadersForEachCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/InstallEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/InstallPhaseEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/Request.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/Response.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/ServiceWorker.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/ServiceWorkerClients.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/ServiceWorkerContainer.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/serviceworkers/ServiceWorkerGlobalScope.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechGrammar.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechGrammarList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognition.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognitionAlternative.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognitionError.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognitionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognitionResult.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechRecognitionResultList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechSynthesis.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechSynthesisEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechSynthesisUtterance.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/speech/SpeechSynthesisVoice.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AnalyserNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioBuffer.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioBufferCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioBufferSourceNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioContext.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioDestinationNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioListener.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioParam.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioProcessingEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/AudioSourceNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/BiquadFilterNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/ChannelMergerNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/ChannelSplitterNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/ConvolverNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/DelayNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/DynamicsCompressorNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/GainNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/MediaElementAudioSourceNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/MediaStreamAudioDestinationNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/MediaStreamAudioSourceNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/OfflineAudioCompletionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/OfflineAudioContext.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/OscillatorNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/PannerNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/PeriodicWave.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/ScriptProcessorNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webaudio/WaveShaperNode.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/Database.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/DatabaseCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/DatabaseSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLError.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLResultSet.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLResultSetRowList.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLStatementCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLStatementErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLTransaction.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLTransactionCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLTransactionErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLTransactionSync.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webdatabase/SQLTransactionSyncCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIAccess.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIConnectionEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIErrorCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIInput.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIMessageEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIOutput.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDIPort.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/webmidi/MIDISuccessCallback.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/websockets/CloseEvent.idl $(LOCAL_PATH)/third_party/WebKit/Source/modules/websockets/WebSocket.idl $(gyp_shared_intermediate_dir)/blink/bindings/modules/GlobalObjectsModules.pickle $(GYP_TARGET_DEPENDENCIES)
	@echo "Gyp action: Generating IDL files for constructors on global objects for modules_global_constructors_idls ($@)"
	$(hide)cd $(gyp_local_path)/third_party/WebKit/Source/bindings/modules; mkdir -p $(gyp_shared_intermediate_dir)/blink/modules; python ../scripts/generate_global_constructors.py --idl-files-list modules_global_constructors_idls_idl_files_list.tmp --global-objects-file "$(gyp_shared_intermediate_dir)/blink/bindings/modules/GlobalObjectsModules.pickle" --write-file-only-if-changed 0 -- Window "$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl" SharedWorkerGlobalScope "$(gyp_shared_intermediate_dir)/blink/modules/SharedWorkerGlobalScopeModulesConstructors.idl" DedicatedWorkerGlobalScope "$(gyp_shared_intermediate_dir)/blink/modules/DedicatedWorkerGlobalScopeModulesConstructors.idl" ServiceWorkerGlobalScope "$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeModulesConstructors.idl"

$(gyp_shared_intermediate_dir)/blink/modules/SharedWorkerGlobalScopeModulesConstructors.idl: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/DedicatedWorkerGlobalScopeModulesConstructors.idl: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeModulesConstructors.idl: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.h: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/SharedWorkerGlobalScopeModulesConstructors.h: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/DedicatedWorkerGlobalScopeModulesConstructors.h: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;
$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeModulesConstructors.h: $(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl ;


GYP_GENERATED_OUTPUTS := \
	$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.idl \
	$(gyp_shared_intermediate_dir)/blink/modules/SharedWorkerGlobalScopeModulesConstructors.idl \
	$(gyp_shared_intermediate_dir)/blink/modules/DedicatedWorkerGlobalScopeModulesConstructors.idl \
	$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeModulesConstructors.idl \
	$(gyp_shared_intermediate_dir)/blink/modules/WindowModulesConstructors.h \
	$(gyp_shared_intermediate_dir)/blink/modules/SharedWorkerGlobalScopeModulesConstructors.h \
	$(gyp_shared_intermediate_dir)/blink/modules/DedicatedWorkerGlobalScopeModulesConstructors.h \
	$(gyp_shared_intermediate_dir)/blink/modules/ServiceWorkerGlobalScopeModulesConstructors.h

# Make sure our deps and generated files are built first.
LOCAL_ADDITIONAL_DEPENDENCIES := $(GYP_TARGET_DEPENDENCIES) $(GYP_GENERATED_OUTPUTS)

### Rules for final target.
# Add target alias to "gyp_all_modules" target.
.PHONY: gyp_all_modules
gyp_all_modules: third_party_WebKit_Source_bindings_modules_modules_global_constructors_idls_gyp

# Alias gyp target name.
.PHONY: modules_global_constructors_idls
modules_global_constructors_idls: third_party_WebKit_Source_bindings_modules_modules_global_constructors_idls_gyp

LOCAL_MODULE_PATH := $(PRODUCT_OUT)/gyp_stamp
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_2ND_ARCH_VAR_PREFIX := $(GYP_VAR_PREFIX)

include $(BUILD_SYSTEM)/base_rules.mk

$(LOCAL_BUILT_MODULE): $(LOCAL_ADDITIONAL_DEPENDENCIES)
	$(hide) echo "Gyp timestamp: $@"
	$(hide) mkdir -p $(dir $@)
	$(hide) touch $@

LOCAL_2ND_ARCH_VAR_PREFIX :=
