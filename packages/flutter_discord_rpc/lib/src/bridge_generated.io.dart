// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.6.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class FlutterDiscordRpcPlatform extends FlutterRustBridgeBase<FlutterDiscordRpcWire> {
  FlutterDiscordRpcPlatform(ffi.DynamicLibrary dylib) : super(FlutterDiscordRpcWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<ffi.Int64> api2wire_box_autoadd_i64(int raw) {
    return inner.new_box_autoadd_i64_0(api2wire_i64(raw));
  }

  @protected
  ffi.Pointer<wire_RPCActivity> api2wire_box_autoadd_rpc_activity(RPCActivity raw) {
    final ptr = inner.new_box_autoadd_rpc_activity_0();
    _api_fill_to_wire_rpc_activity(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_RPCAssets> api2wire_box_autoadd_rpc_assets(RPCAssets raw) {
    final ptr = inner.new_box_autoadd_rpc_assets_0();
    _api_fill_to_wire_rpc_assets(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_RPCParty> api2wire_box_autoadd_rpc_party(RPCParty raw) {
    final ptr = inner.new_box_autoadd_rpc_party_0();
    _api_fill_to_wire_rpc_party(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_RPCSecrets> api2wire_box_autoadd_rpc_secrets(RPCSecrets raw) {
    final ptr = inner.new_box_autoadd_rpc_secrets_0();
    _api_fill_to_wire_rpc_secrets(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_RPCTimestamps> api2wire_box_autoadd_rpc_timestamps(RPCTimestamps raw) {
    final ptr = inner.new_box_autoadd_rpc_timestamps_0();
    _api_fill_to_wire_rpc_timestamps(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_int_32_list> api2wire_i32_array_2(I32Array2 raw) {
    final ans = inner.new_int_32_list_0(2);
    ans.ref.ptr.asTypedList(2).setAll(0, raw);
    return ans;
  }

  @protected
  int api2wire_i64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_int_32_list> api2wire_int_32_list(Int32List raw) {
    final ans = inner.new_int_32_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_rpc_button> api2wire_list_rpc_button(List<RPCButton> raw) {
    final ans = inner.new_list_rpc_button_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_rpc_button(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Int64> api2wire_opt_box_autoadd_i64(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_i64(raw);
  }

  @protected
  ffi.Pointer<wire_RPCAssets> api2wire_opt_box_autoadd_rpc_assets(RPCAssets? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_rpc_assets(raw);
  }

  @protected
  ffi.Pointer<wire_RPCParty> api2wire_opt_box_autoadd_rpc_party(RPCParty? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_rpc_party(raw);
  }

  @protected
  ffi.Pointer<wire_RPCSecrets> api2wire_opt_box_autoadd_rpc_secrets(RPCSecrets? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_rpc_secrets(raw);
  }

  @protected
  ffi.Pointer<wire_RPCTimestamps> api2wire_opt_box_autoadd_rpc_timestamps(RPCTimestamps? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_rpc_timestamps(raw);
  }

  @protected
  ffi.Pointer<wire_int_32_list> api2wire_opt_i32_array_2(I32Array2? raw) {
    return raw == null ? ffi.nullptr : api2wire_i32_array_2(raw);
  }

  @protected
  ffi.Pointer<wire_list_rpc_button> api2wire_opt_list_rpc_button(List<RPCButton>? raw) {
    return raw == null ? ffi.nullptr : api2wire_list_rpc_button(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_rpc_activity(RPCActivity apiObj, ffi.Pointer<wire_RPCActivity> wireObj) {
    _api_fill_to_wire_rpc_activity(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_rpc_assets(RPCAssets apiObj, ffi.Pointer<wire_RPCAssets> wireObj) {
    _api_fill_to_wire_rpc_assets(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_rpc_party(RPCParty apiObj, ffi.Pointer<wire_RPCParty> wireObj) {
    _api_fill_to_wire_rpc_party(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_rpc_secrets(RPCSecrets apiObj, ffi.Pointer<wire_RPCSecrets> wireObj) {
    _api_fill_to_wire_rpc_secrets(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_rpc_timestamps(RPCTimestamps apiObj, ffi.Pointer<wire_RPCTimestamps> wireObj) {
    _api_fill_to_wire_rpc_timestamps(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_rpc_activity(RPCActivity apiObj, wire_RPCActivity wireObj) {
    wireObj.state = api2wire_opt_String(apiObj.state);
    wireObj.details = api2wire_opt_String(apiObj.details);
    wireObj.timestamps = api2wire_opt_box_autoadd_rpc_timestamps(apiObj.timestamps);
    wireObj.party = api2wire_opt_box_autoadd_rpc_party(apiObj.party);
    wireObj.assets = api2wire_opt_box_autoadd_rpc_assets(apiObj.assets);
    wireObj.secrets = api2wire_opt_box_autoadd_rpc_secrets(apiObj.secrets);
    wireObj.buttons = api2wire_opt_list_rpc_button(apiObj.buttons);
  }

  void _api_fill_to_wire_rpc_assets(RPCAssets apiObj, wire_RPCAssets wireObj) {
    wireObj.large_image = api2wire_opt_String(apiObj.largeImage);
    wireObj.large_text = api2wire_opt_String(apiObj.largeText);
    wireObj.small_image = api2wire_opt_String(apiObj.smallImage);
    wireObj.small_text = api2wire_opt_String(apiObj.smallText);
  }

  void _api_fill_to_wire_rpc_button(RPCButton apiObj, wire_RPCButton wireObj) {
    wireObj.label = api2wire_String(apiObj.label);
    wireObj.url = api2wire_String(apiObj.url);
  }

  void _api_fill_to_wire_rpc_party(RPCParty apiObj, wire_RPCParty wireObj) {
    wireObj.id = api2wire_opt_String(apiObj.id);
    wireObj.size = api2wire_opt_i32_array_2(apiObj.size);
  }

  void _api_fill_to_wire_rpc_secrets(RPCSecrets apiObj, wire_RPCSecrets wireObj) {
    wireObj.join = api2wire_opt_String(apiObj.join);
    wireObj.spectate = api2wire_opt_String(apiObj.spectate);
    wireObj.match_str = api2wire_opt_String(apiObj.matchStr);
  }

  void _api_fill_to_wire_rpc_timestamps(RPCTimestamps apiObj, wire_RPCTimestamps wireObj) {
    wireObj.start = api2wire_opt_box_autoadd_i64(apiObj.start);
    wireObj.end = api2wire_opt_box_autoadd_i64(apiObj.end);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class FlutterDiscordRpcWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterDiscordRpcWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterDiscordRpcWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

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

  void wire_discord_init(
    int port_,
    ffi.Pointer<wire_uint_8_list> client_id,
  ) {
    return _wire_discord_init(
      port_,
      client_id,
    );
  }

  late final _wire_discord_initPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_discord_init');
  late final _wire_discord_init = _wire_discord_initPtr.asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_discord_connect(
    int port_,
  ) {
    return _wire_discord_connect(
      port_,
    );
  }

  late final _wire_discord_connectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_discord_connect');
  late final _wire_discord_connect = _wire_discord_connectPtr.asFunction<void Function(int)>();

  void wire_discord_reconnect(
    int port_,
  ) {
    return _wire_discord_reconnect(
      port_,
    );
  }

  late final _wire_discord_reconnectPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_discord_reconnect');
  late final _wire_discord_reconnect = _wire_discord_reconnectPtr.asFunction<void Function(int)>();

  void wire_discord_close(
    int port_,
  ) {
    return _wire_discord_close(
      port_,
    );
  }

  late final _wire_discord_closePtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_discord_close');
  late final _wire_discord_close = _wire_discord_closePtr.asFunction<void Function(int)>();

  void wire_discord_clear_activity(
    int port_,
  ) {
    return _wire_discord_clear_activity(
      port_,
    );
  }

  late final _wire_discord_clear_activityPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_discord_clear_activity');
  late final _wire_discord_clear_activity = _wire_discord_clear_activityPtr.asFunction<void Function(int)>();

  void wire_discord_set_activity(
    int port_,
    ffi.Pointer<wire_RPCActivity> activity,
  ) {
    return _wire_discord_set_activity(
      port_,
      activity,
    );
  }

  late final _wire_discord_set_activityPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_RPCActivity>)>>('wire_discord_set_activity');
  late final _wire_discord_set_activity = _wire_discord_set_activityPtr.asFunction<void Function(int, ffi.Pointer<wire_RPCActivity>)>();

  void wire_discord_dispose(
    int port_,
  ) {
    return _wire_discord_dispose(
      port_,
    );
  }

  late final _wire_discord_disposePtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>('wire_discord_dispose');
  late final _wire_discord_dispose = _wire_discord_disposePtr.asFunction<void Function(int)>();

  ffi.Pointer<ffi.Int64> new_box_autoadd_i64_0(
    int value,
  ) {
    return _new_box_autoadd_i64_0(
      value,
    );
  }

  late final _new_box_autoadd_i64_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int64> Function(ffi.Int64)>>('new_box_autoadd_i64_0');
  late final _new_box_autoadd_i64_0 = _new_box_autoadd_i64_0Ptr.asFunction<ffi.Pointer<ffi.Int64> Function(int)>();

  ffi.Pointer<wire_RPCActivity> new_box_autoadd_rpc_activity_0() {
    return _new_box_autoadd_rpc_activity_0();
  }

  late final _new_box_autoadd_rpc_activity_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_RPCActivity> Function()>>('new_box_autoadd_rpc_activity_0');
  late final _new_box_autoadd_rpc_activity_0 = _new_box_autoadd_rpc_activity_0Ptr.asFunction<ffi.Pointer<wire_RPCActivity> Function()>();

  ffi.Pointer<wire_RPCAssets> new_box_autoadd_rpc_assets_0() {
    return _new_box_autoadd_rpc_assets_0();
  }

  late final _new_box_autoadd_rpc_assets_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_RPCAssets> Function()>>('new_box_autoadd_rpc_assets_0');
  late final _new_box_autoadd_rpc_assets_0 = _new_box_autoadd_rpc_assets_0Ptr.asFunction<ffi.Pointer<wire_RPCAssets> Function()>();

  ffi.Pointer<wire_RPCParty> new_box_autoadd_rpc_party_0() {
    return _new_box_autoadd_rpc_party_0();
  }

  late final _new_box_autoadd_rpc_party_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_RPCParty> Function()>>('new_box_autoadd_rpc_party_0');
  late final _new_box_autoadd_rpc_party_0 = _new_box_autoadd_rpc_party_0Ptr.asFunction<ffi.Pointer<wire_RPCParty> Function()>();

  ffi.Pointer<wire_RPCSecrets> new_box_autoadd_rpc_secrets_0() {
    return _new_box_autoadd_rpc_secrets_0();
  }

  late final _new_box_autoadd_rpc_secrets_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_RPCSecrets> Function()>>('new_box_autoadd_rpc_secrets_0');
  late final _new_box_autoadd_rpc_secrets_0 = _new_box_autoadd_rpc_secrets_0Ptr.asFunction<ffi.Pointer<wire_RPCSecrets> Function()>();

  ffi.Pointer<wire_RPCTimestamps> new_box_autoadd_rpc_timestamps_0() {
    return _new_box_autoadd_rpc_timestamps_0();
  }

  late final _new_box_autoadd_rpc_timestamps_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_RPCTimestamps> Function()>>('new_box_autoadd_rpc_timestamps_0');
  late final _new_box_autoadd_rpc_timestamps_0 = _new_box_autoadd_rpc_timestamps_0Ptr.asFunction<ffi.Pointer<wire_RPCTimestamps> Function()>();

  ffi.Pointer<wire_int_32_list> new_int_32_list_0(
    int len,
  ) {
    return _new_int_32_list_0(
      len,
    );
  }

  late final _new_int_32_list_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_int_32_list> Function(ffi.Int32)>>('new_int_32_list_0');
  late final _new_int_32_list_0 = _new_int_32_list_0Ptr.asFunction<ffi.Pointer<wire_int_32_list> Function(int)>();

  ffi.Pointer<wire_list_rpc_button> new_list_rpc_button_0(
    int len,
  ) {
    return _new_list_rpc_button_0(
      len,
    );
  }

  late final _new_list_rpc_button_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_list_rpc_button> Function(ffi.Int32)>>('new_list_rpc_button_0');
  late final _new_list_rpc_button_0 = _new_list_rpc_button_0Ptr.asFunction<ffi.Pointer<wire_list_rpc_button> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

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

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_RPCTimestamps extends ffi.Struct {
  external ffi.Pointer<ffi.Int64> start;

  external ffi.Pointer<ffi.Int64> end;
}

final class wire_int_32_list extends ffi.Struct {
  external ffi.Pointer<ffi.Int32> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_RPCParty extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> id;

  external ffi.Pointer<wire_int_32_list> size;
}

final class wire_RPCAssets extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> large_image;

  external ffi.Pointer<wire_uint_8_list> large_text;

  external ffi.Pointer<wire_uint_8_list> small_image;

  external ffi.Pointer<wire_uint_8_list> small_text;
}

final class wire_RPCSecrets extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> join;

  external ffi.Pointer<wire_uint_8_list> spectate;

  external ffi.Pointer<wire_uint_8_list> match_str;
}

final class wire_RPCButton extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> label;

  external ffi.Pointer<wire_uint_8_list> url;
}

final class wire_list_rpc_button extends ffi.Struct {
  external ffi.Pointer<wire_RPCButton> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_RPCActivity extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> state;

  external ffi.Pointer<wire_uint_8_list> details;

  external ffi.Pointer<wire_RPCTimestamps> timestamps;

  external ffi.Pointer<wire_RPCParty> party;

  external ffi.Pointer<wire_RPCAssets> assets;

  external ffi.Pointer<wire_RPCSecrets> secrets;

  external ffi.Pointer<wire_list_rpc_button> buttons;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
