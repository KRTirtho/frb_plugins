// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.6.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class SmtcWindows {
  SmtcInternal smtcNew({bool? enabled, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcNewConstMeta;

  Future<void> smtcUpdateConfig({required SmtcInternal internal, required SMTCConfig config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateConfigConstMeta;

  Future<void> smtcUpdateMetadata({required SmtcInternal internal, required MusicMetadata metadata, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateMetadataConstMeta;

  Future<void> smtcClearMetadata({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcClearMetadataConstMeta;

  Future<void> smtcUpdateTimeline({required SmtcInternal internal, required PlaybackTimeline timeline, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateTimelineConstMeta;

  Future<void> smtcUpdatePlaybackStatus({required SmtcInternal internal, required PlaybackStatus status, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdatePlaybackStatusConstMeta;

  Future<void> smtcUpdateShuffle({required SmtcInternal internal, required bool shuffle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateShuffleConstMeta;

  Future<void> smtcUpdateRepeatMode({required SmtcInternal internal, required String repeatMode, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateRepeatModeConstMeta;

  Future<void> smtcEnableSmtc({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcEnableSmtcConstMeta;

  Future<void> smtcDisableSmtc({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcDisableSmtcConstMeta;

  Stream<String> smtcButtonPressEvent({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcButtonPressEventConstMeta;

  Stream<int> smtcPositionChangeRequestEvent({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcPositionChangeRequestEventConstMeta;

  Stream<bool> smtcShuffleRequestEvent({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcShuffleRequestEventConstMeta;

  Stream<String> smtcRepeatModeRequestEvent({required SmtcInternal internal, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSmtcRepeatModeRequestEventConstMeta;

  DropFnType get dropOpaqueSmtcInternal;
  ShareFnType get shareOpaqueSmtcInternal;
  OpaqueTypeFinalizer get SmtcInternalFinalizer;
}

@sealed
class SmtcInternal extends FrbOpaque {
  final SmtcWindows bridge;
  SmtcInternal.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueSmtcInternal;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueSmtcInternal;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.SmtcInternalFinalizer;
}

class MusicMetadata {
  final String? title;
  final String? artist;
  final String? album;
  final String? albumArtist;
  final String? thumbnail;

  const MusicMetadata({
    this.title,
    this.artist,
    this.album,
    this.albumArtist,
    this.thumbnail,
  });
}

enum PlaybackStatus {
  Closed,
  Changing,
  Stopped,
  Playing,
  Paused,
}

class PlaybackTimeline {
  final int startTimeMs;
  final int endTimeMs;
  final int positionMs;
  final int? minSeekTimeMs;
  final int? maxSeekTimeMs;

  const PlaybackTimeline({
    required this.startTimeMs,
    required this.endTimeMs,
    required this.positionMs,
    this.minSeekTimeMs,
    this.maxSeekTimeMs,
  });
}

class SMTCConfig {
  final bool playEnabled;
  final bool pauseEnabled;
  final bool stopEnabled;
  final bool nextEnabled;
  final bool prevEnabled;
  final bool fastForwardEnabled;
  final bool rewindEnabled;

  const SMTCConfig({
    required this.playEnabled,
    required this.pauseEnabled,
    required this.stopEnabled,
    required this.nextEnabled,
    required this.prevEnabled,
    required this.fastForwardEnabled,
    required this.rewindEnabled,
  });
}

class SmtcWindowsImpl implements SmtcWindows {
  final SmtcWindowsPlatform _platform;
  factory SmtcWindowsImpl(ExternalLibrary dylib) => SmtcWindowsImpl.raw(SmtcWindowsPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory SmtcWindowsImpl.wasm(FutureOr<WasmModule> module) => SmtcWindowsImpl(module as ExternalLibrary);
  SmtcWindowsImpl.raw(this._platform);
  SmtcInternal smtcNew({bool? enabled, dynamic hint}) {
    var arg0 = _platform.api2wire_opt_box_autoadd_bool(enabled);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_smtc_new(arg0),
      parseSuccessData: _wire2api_SmtcInternal,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcNewConstMeta,
      argValues: [
        enabled
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcNewConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_new",
        argNames: [
          "enabled"
        ],
      );

  Future<void> smtcUpdateConfig({required SmtcInternal internal, required SMTCConfig config, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = _platform.api2wire_box_autoadd_smtc_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_config(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdateConfigConstMeta,
      argValues: [
        internal,
        config
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateConfigConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_config",
        argNames: [
          "internal",
          "config"
        ],
      );

  Future<void> smtcUpdateMetadata({required SmtcInternal internal, required MusicMetadata metadata, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = _platform.api2wire_box_autoadd_music_metadata(metadata);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_metadata(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdateMetadataConstMeta,
      argValues: [
        internal,
        metadata
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateMetadataConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_metadata",
        argNames: [
          "internal",
          "metadata"
        ],
      );

  Future<void> smtcClearMetadata({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_clear_metadata(port_, arg0),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcClearMetadataConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcClearMetadataConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_clear_metadata",
        argNames: [
          "internal"
        ],
      );

  Future<void> smtcUpdateTimeline({required SmtcInternal internal, required PlaybackTimeline timeline, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = _platform.api2wire_box_autoadd_playback_timeline(timeline);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_timeline(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdateTimelineConstMeta,
      argValues: [
        internal,
        timeline
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateTimelineConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_timeline",
        argNames: [
          "internal",
          "timeline"
        ],
      );

  Future<void> smtcUpdatePlaybackStatus({required SmtcInternal internal, required PlaybackStatus status, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = api2wire_playback_status(status);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_playback_status(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdatePlaybackStatusConstMeta,
      argValues: [
        internal,
        status
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdatePlaybackStatusConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_playback_status",
        argNames: [
          "internal",
          "status"
        ],
      );

  Future<void> smtcUpdateShuffle({required SmtcInternal internal, required bool shuffle, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = shuffle;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_shuffle(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdateShuffleConstMeta,
      argValues: [
        internal,
        shuffle
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateShuffleConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_shuffle",
        argNames: [
          "internal",
          "shuffle"
        ],
      );

  Future<void> smtcUpdateRepeatMode({required SmtcInternal internal, required String repeatMode, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    var arg1 = _platform.api2wire_String(repeatMode);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_update_repeat_mode(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcUpdateRepeatModeConstMeta,
      argValues: [
        internal,
        repeatMode
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcUpdateRepeatModeConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_update_repeat_mode",
        argNames: [
          "internal",
          "repeatMode"
        ],
      );

  Future<void> smtcEnableSmtc({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_enable_smtc(port_, arg0),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcEnableSmtcConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcEnableSmtcConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_enable_smtc",
        argNames: [
          "internal"
        ],
      );

  Future<void> smtcDisableSmtc({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_disable_smtc(port_, arg0),
      parseSuccessData: _wire2api_unit,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcDisableSmtcConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcDisableSmtcConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_disable_smtc",
        argNames: [
          "internal"
        ],
      );

  Stream<String> smtcButtonPressEvent({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_button_press_event(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcButtonPressEventConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcButtonPressEventConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_button_press_event",
        argNames: [
          "internal"
        ],
      );

  Stream<int> smtcPositionChangeRequestEvent({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_position_change_request_event(port_, arg0),
      parseSuccessData: _wire2api_i64,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcPositionChangeRequestEventConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcPositionChangeRequestEventConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_position_change_request_event",
        argNames: [
          "internal"
        ],
      );

  Stream<bool> smtcShuffleRequestEvent({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_shuffle_request_event(port_, arg0),
      parseSuccessData: _wire2api_bool,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcShuffleRequestEventConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcShuffleRequestEventConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_shuffle_request_event",
        argNames: [
          "internal"
        ],
      );

  Stream<String> smtcRepeatModeRequestEvent({required SmtcInternal internal, dynamic hint}) {
    var arg0 = _platform.api2wire_SmtcInternal(internal);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_smtc_repeat_mode_request_event(port_, arg0),
      parseSuccessData: _wire2api_String,
      parseErrorData: _wire2api_FrbAnyhowException,
      constMeta: kSmtcRepeatModeRequestEventConstMeta,
      argValues: [
        internal
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSmtcRepeatModeRequestEventConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "smtc_repeat_mode_request_event",
        argNames: [
          "internal"
        ],
      );

  DropFnType get dropOpaqueSmtcInternal => _platform.inner.drop_opaque_SmtcInternal;
  ShareFnType get shareOpaqueSmtcInternal => _platform.inner.share_opaque_SmtcInternal;
  OpaqueTypeFinalizer get SmtcInternalFinalizer => _platform.SmtcInternalFinalizer;

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  FrbAnyhowException _wire2api_FrbAnyhowException(dynamic raw) {
    return FrbAnyhowException(raw as String);
  }

  SmtcInternal _wire2api_SmtcInternal(dynamic raw) {
    return SmtcInternal.fromRaw(raw[0], raw[1], this);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_playback_status(PlaybackStatus raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class SmtcWindowsPlatform extends FlutterRustBridgeBase<SmtcWindowsWire> {
  SmtcWindowsPlatform(ffi.DynamicLibrary dylib) : super(SmtcWindowsWire(dylib));

// Section: api2wire

  @protected
  wire_SmtcInternal api2wire_SmtcInternal(SmtcInternal raw) {
    final ptr = inner.new_SmtcInternal();
    _api_fill_to_wire_SmtcInternal(raw, ptr);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_box_autoadd_bool(bool raw) {
    return inner.new_box_autoadd_bool_0(api2wire_bool(raw));
  }

  @protected
  ffi.Pointer<ffi.Int64> api2wire_box_autoadd_i64(int raw) {
    return inner.new_box_autoadd_i64_0(api2wire_i64(raw));
  }

  @protected
  ffi.Pointer<wire_MusicMetadata> api2wire_box_autoadd_music_metadata(MusicMetadata raw) {
    final ptr = inner.new_box_autoadd_music_metadata_0();
    _api_fill_to_wire_music_metadata(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_PlaybackTimeline> api2wire_box_autoadd_playback_timeline(PlaybackTimeline raw) {
    final ptr = inner.new_box_autoadd_playback_timeline_0();
    _api_fill_to_wire_playback_timeline(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_SMTCConfig> api2wire_box_autoadd_smtc_config(SMTCConfig raw) {
    final ptr = inner.new_box_autoadd_smtc_config_0();
    _api_fill_to_wire_smtc_config(raw, ptr.ref);
    return ptr;
  }

  @protected
  int api2wire_i64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_opt_box_autoadd_bool(bool? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_bool(raw);
  }

  @protected
  ffi.Pointer<ffi.Int64> api2wire_opt_box_autoadd_i64(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_i64(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

  late final OpaqueTypeFinalizer _SmtcInternalFinalizer = OpaqueTypeFinalizer(inner._drop_opaque_SmtcInternalPtr);
  OpaqueTypeFinalizer get SmtcInternalFinalizer => _SmtcInternalFinalizer;
// Section: api_fill_to_wire

  void _api_fill_to_wire_SmtcInternal(SmtcInternal apiObj, wire_SmtcInternal wireObj) {
    wireObj.ptr = apiObj.shareOrMove();
  }

  void _api_fill_to_wire_box_autoadd_music_metadata(MusicMetadata apiObj, ffi.Pointer<wire_MusicMetadata> wireObj) {
    _api_fill_to_wire_music_metadata(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_playback_timeline(PlaybackTimeline apiObj, ffi.Pointer<wire_PlaybackTimeline> wireObj) {
    _api_fill_to_wire_playback_timeline(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_smtc_config(SMTCConfig apiObj, ffi.Pointer<wire_SMTCConfig> wireObj) {
    _api_fill_to_wire_smtc_config(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_music_metadata(MusicMetadata apiObj, wire_MusicMetadata wireObj) {
    wireObj.title = api2wire_opt_String(apiObj.title);
    wireObj.artist = api2wire_opt_String(apiObj.artist);
    wireObj.album = api2wire_opt_String(apiObj.album);
    wireObj.album_artist = api2wire_opt_String(apiObj.albumArtist);
    wireObj.thumbnail = api2wire_opt_String(apiObj.thumbnail);
  }

  void _api_fill_to_wire_playback_timeline(PlaybackTimeline apiObj, wire_PlaybackTimeline wireObj) {
    wireObj.start_time_ms = api2wire_i64(apiObj.startTimeMs);
    wireObj.end_time_ms = api2wire_i64(apiObj.endTimeMs);
    wireObj.position_ms = api2wire_i64(apiObj.positionMs);
    wireObj.min_seek_time_ms = api2wire_opt_box_autoadd_i64(apiObj.minSeekTimeMs);
    wireObj.max_seek_time_ms = api2wire_opt_box_autoadd_i64(apiObj.maxSeekTimeMs);
  }

  void _api_fill_to_wire_smtc_config(SMTCConfig apiObj, wire_SMTCConfig wireObj) {
    wireObj.play_enabled = api2wire_bool(apiObj.playEnabled);
    wireObj.pause_enabled = api2wire_bool(apiObj.pauseEnabled);
    wireObj.stop_enabled = api2wire_bool(apiObj.stopEnabled);
    wireObj.next_enabled = api2wire_bool(apiObj.nextEnabled);
    wireObj.prev_enabled = api2wire_bool(apiObj.prevEnabled);
    wireObj.fast_forward_enabled = api2wire_bool(apiObj.fastForwardEnabled);
    wireObj.rewind_enabled = api2wire_bool(apiObj.rewindEnabled);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class SmtcWindowsWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  SmtcWindowsWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  SmtcWindowsWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>('get_dart_object');
  late final _get_dart_object = _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>('drop_dart_object');
  late final _drop_dart_object = _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr = _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>('new_dart_opaque');
  late final _new_dart_opaque = _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr = _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>('init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  WireSyncReturn wire_smtc_new(
    ffi.Pointer<ffi.Bool> enabled,
  ) {
    return _wire_smtc_new(
      enabled,
    );
  }

  late final _wire_smtc_newPtr = _lookup<ffi.NativeFunction<WireSyncReturn Function(ffi.Pointer<ffi.Bool>)>>('wire_smtc_new');
  late final _wire_smtc_new = _wire_smtc_newPtr.asFunction<WireSyncReturn Function(ffi.Pointer<ffi.Bool>)>();

  void wire_smtc_update_config(
    int port_,
    wire_SmtcInternal internal,
    ffi.Pointer<wire_SMTCConfig> config,
  ) {
    return _wire_smtc_update_config(
      port_,
      internal,
      config,
    );
  }

  late final _wire_smtc_update_configPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Pointer<wire_SMTCConfig>)>>('wire_smtc_update_config');
  late final _wire_smtc_update_config = _wire_smtc_update_configPtr.asFunction<void Function(int, wire_SmtcInternal, ffi.Pointer<wire_SMTCConfig>)>();

  void wire_smtc_update_metadata(
    int port_,
    wire_SmtcInternal internal,
    ffi.Pointer<wire_MusicMetadata> metadata,
  ) {
    return _wire_smtc_update_metadata(
      port_,
      internal,
      metadata,
    );
  }

  late final _wire_smtc_update_metadataPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Pointer<wire_MusicMetadata>)>>('wire_smtc_update_metadata');
  late final _wire_smtc_update_metadata = _wire_smtc_update_metadataPtr.asFunction<void Function(int, wire_SmtcInternal, ffi.Pointer<wire_MusicMetadata>)>();

  void wire_smtc_clear_metadata(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_clear_metadata(
      port_,
      internal,
    );
  }

  late final _wire_smtc_clear_metadataPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_clear_metadata');
  late final _wire_smtc_clear_metadata = _wire_smtc_clear_metadataPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_update_timeline(
    int port_,
    wire_SmtcInternal internal,
    ffi.Pointer<wire_PlaybackTimeline> timeline,
  ) {
    return _wire_smtc_update_timeline(
      port_,
      internal,
      timeline,
    );
  }

  late final _wire_smtc_update_timelinePtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Pointer<wire_PlaybackTimeline>)>>('wire_smtc_update_timeline');
  late final _wire_smtc_update_timeline = _wire_smtc_update_timelinePtr.asFunction<void Function(int, wire_SmtcInternal, ffi.Pointer<wire_PlaybackTimeline>)>();

  void wire_smtc_update_playback_status(
    int port_,
    wire_SmtcInternal internal,
    int status,
  ) {
    return _wire_smtc_update_playback_status(
      port_,
      internal,
      status,
    );
  }

  late final _wire_smtc_update_playback_statusPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Int32)>>('wire_smtc_update_playback_status');
  late final _wire_smtc_update_playback_status = _wire_smtc_update_playback_statusPtr.asFunction<void Function(int, wire_SmtcInternal, int)>();

  void wire_smtc_update_shuffle(
    int port_,
    wire_SmtcInternal internal,
    bool shuffle,
  ) {
    return _wire_smtc_update_shuffle(
      port_,
      internal,
      shuffle,
    );
  }

  late final _wire_smtc_update_shufflePtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Bool)>>('wire_smtc_update_shuffle');
  late final _wire_smtc_update_shuffle = _wire_smtc_update_shufflePtr.asFunction<void Function(int, wire_SmtcInternal, bool)>();

  void wire_smtc_update_repeat_mode(
    int port_,
    wire_SmtcInternal internal,
    ffi.Pointer<wire_uint_8_list> repeat_mode,
  ) {
    return _wire_smtc_update_repeat_mode(
      port_,
      internal,
      repeat_mode,
    );
  }

  late final _wire_smtc_update_repeat_modePtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal, ffi.Pointer<wire_uint_8_list>)>>('wire_smtc_update_repeat_mode');
  late final _wire_smtc_update_repeat_mode = _wire_smtc_update_repeat_modePtr.asFunction<void Function(int, wire_SmtcInternal, ffi.Pointer<wire_uint_8_list>)>();

  void wire_smtc_enable_smtc(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_enable_smtc(
      port_,
      internal,
    );
  }

  late final _wire_smtc_enable_smtcPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_enable_smtc');
  late final _wire_smtc_enable_smtc = _wire_smtc_enable_smtcPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_disable_smtc(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_disable_smtc(
      port_,
      internal,
    );
  }

  late final _wire_smtc_disable_smtcPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_disable_smtc');
  late final _wire_smtc_disable_smtc = _wire_smtc_disable_smtcPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_button_press_event(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_button_press_event(
      port_,
      internal,
    );
  }

  late final _wire_smtc_button_press_eventPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_button_press_event');
  late final _wire_smtc_button_press_event = _wire_smtc_button_press_eventPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_position_change_request_event(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_position_change_request_event(
      port_,
      internal,
    );
  }

  late final _wire_smtc_position_change_request_eventPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_position_change_request_event');
  late final _wire_smtc_position_change_request_event = _wire_smtc_position_change_request_eventPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_shuffle_request_event(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_shuffle_request_event(
      port_,
      internal,
    );
  }

  late final _wire_smtc_shuffle_request_eventPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_shuffle_request_event');
  late final _wire_smtc_shuffle_request_event = _wire_smtc_shuffle_request_eventPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  void wire_smtc_repeat_mode_request_event(
    int port_,
    wire_SmtcInternal internal,
  ) {
    return _wire_smtc_repeat_mode_request_event(
      port_,
      internal,
    );
  }

  late final _wire_smtc_repeat_mode_request_eventPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_SmtcInternal)>>('wire_smtc_repeat_mode_request_event');
  late final _wire_smtc_repeat_mode_request_event = _wire_smtc_repeat_mode_request_eventPtr.asFunction<void Function(int, wire_SmtcInternal)>();

  wire_SmtcInternal new_SmtcInternal() {
    return _new_SmtcInternal();
  }

  late final _new_SmtcInternalPtr = _lookup<ffi.NativeFunction<wire_SmtcInternal Function()>>('new_SmtcInternal');
  late final _new_SmtcInternal = _new_SmtcInternalPtr.asFunction<wire_SmtcInternal Function()>();

  ffi.Pointer<ffi.Bool> new_box_autoadd_bool_0(
    bool value,
  ) {
    return _new_box_autoadd_bool_0(
      value,
    );
  }

  late final _new_box_autoadd_bool_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Bool> Function(ffi.Bool)>>('new_box_autoadd_bool_0');
  late final _new_box_autoadd_bool_0 = _new_box_autoadd_bool_0Ptr.asFunction<ffi.Pointer<ffi.Bool> Function(bool)>();

  ffi.Pointer<ffi.Int64> new_box_autoadd_i64_0(
    int value,
  ) {
    return _new_box_autoadd_i64_0(
      value,
    );
  }

  late final _new_box_autoadd_i64_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int64> Function(ffi.Int64)>>('new_box_autoadd_i64_0');
  late final _new_box_autoadd_i64_0 = _new_box_autoadd_i64_0Ptr.asFunction<ffi.Pointer<ffi.Int64> Function(int)>();

  ffi.Pointer<wire_MusicMetadata> new_box_autoadd_music_metadata_0() {
    return _new_box_autoadd_music_metadata_0();
  }

  late final _new_box_autoadd_music_metadata_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_MusicMetadata> Function()>>('new_box_autoadd_music_metadata_0');
  late final _new_box_autoadd_music_metadata_0 = _new_box_autoadd_music_metadata_0Ptr.asFunction<ffi.Pointer<wire_MusicMetadata> Function()>();

  ffi.Pointer<wire_PlaybackTimeline> new_box_autoadd_playback_timeline_0() {
    return _new_box_autoadd_playback_timeline_0();
  }

  late final _new_box_autoadd_playback_timeline_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_PlaybackTimeline> Function()>>('new_box_autoadd_playback_timeline_0');
  late final _new_box_autoadd_playback_timeline_0 = _new_box_autoadd_playback_timeline_0Ptr.asFunction<ffi.Pointer<wire_PlaybackTimeline> Function()>();

  ffi.Pointer<wire_SMTCConfig> new_box_autoadd_smtc_config_0() {
    return _new_box_autoadd_smtc_config_0();
  }

  late final _new_box_autoadd_smtc_config_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_SMTCConfig> Function()>>('new_box_autoadd_smtc_config_0');
  late final _new_box_autoadd_smtc_config_0 = _new_box_autoadd_smtc_config_0Ptr.asFunction<ffi.Pointer<wire_SMTCConfig> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void drop_opaque_SmtcInternal(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_SmtcInternal(
      ptr,
    );
  }

  late final _drop_opaque_SmtcInternalPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>('drop_opaque_SmtcInternal');
  late final _drop_opaque_SmtcInternal = _drop_opaque_SmtcInternalPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_SmtcInternal(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_SmtcInternal(
      ptr,
    );
  }

  late final _share_opaque_SmtcInternalPtr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>('share_opaque_SmtcInternal');
  late final _share_opaque_SmtcInternal = _share_opaque_SmtcInternalPtr.asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr = _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>('free_WireSyncReturn');
  late final _free_WireSyncReturn = _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_SmtcInternal extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

final class wire_SMTCConfig extends ffi.Struct {
  @ffi.Bool()
  external bool play_enabled;

  @ffi.Bool()
  external bool pause_enabled;

  @ffi.Bool()
  external bool stop_enabled;

  @ffi.Bool()
  external bool next_enabled;

  @ffi.Bool()
  external bool prev_enabled;

  @ffi.Bool()
  external bool fast_forward_enabled;

  @ffi.Bool()
  external bool rewind_enabled;
}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_MusicMetadata extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> title;

  external ffi.Pointer<wire_uint_8_list> artist;

  external ffi.Pointer<wire_uint_8_list> album;

  external ffi.Pointer<wire_uint_8_list> album_artist;

  external ffi.Pointer<wire_uint_8_list> thumbnail;
}

final class wire_PlaybackTimeline extends ffi.Struct {
  @ffi.Int64()
  external int start_time_ms;

  @ffi.Int64()
  external int end_time_ms;

  @ffi.Int64()
  external int position_ms;

  external ffi.Pointer<ffi.Int64> min_seek_time_ms;

  external ffi.Pointer<ffi.Int64> max_seek_time_ms;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
