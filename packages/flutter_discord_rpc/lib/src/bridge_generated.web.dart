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

class FlutterDiscordRpcPlatform extends FlutterRustBridgeBase<FlutterDiscordRpcWire> with FlutterRustBridgeSetupMixin {
  FlutterDiscordRpcPlatform(FutureOr<WasmModule> dylib) : super(FlutterDiscordRpcWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  Object api2wire_box_autoadd_i64(int raw) {
    return api2wire_i64(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_rpc_activity(RPCActivity raw) {
    return api2wire_rpc_activity(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_rpc_assets(RPCAssets raw) {
    return api2wire_rpc_assets(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_rpc_party(RPCParty raw) {
    return api2wire_rpc_party(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_rpc_secrets(RPCSecrets raw) {
    return api2wire_rpc_secrets(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_rpc_timestamps(RPCTimestamps raw) {
    return api2wire_rpc_timestamps(raw);
  }

  @protected
  Int32List api2wire_i32_array_2(I32Array2 raw) {
    return Int32List.fromList(raw);
  }

  @protected
  Object api2wire_i64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  Int32List api2wire_int_32_list(Int32List raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_list_rpc_button(List<RPCButton> raw) {
    return raw.map(api2wire_rpc_button).toList();
  }

  @protected
  String? api2wire_opt_String(String? raw) {
    return raw == null ? null : api2wire_String(raw);
  }

  @protected
  Object? api2wire_opt_box_autoadd_i64(int? raw) {
    return raw == null ? null : api2wire_box_autoadd_i64(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_rpc_assets(RPCAssets? raw) {
    return raw == null ? null : api2wire_box_autoadd_rpc_assets(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_rpc_party(RPCParty? raw) {
    return raw == null ? null : api2wire_box_autoadd_rpc_party(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_rpc_secrets(RPCSecrets? raw) {
    return raw == null ? null : api2wire_box_autoadd_rpc_secrets(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_rpc_timestamps(RPCTimestamps? raw) {
    return raw == null ? null : api2wire_box_autoadd_rpc_timestamps(raw);
  }

  @protected
  Int32List? api2wire_opt_i32_array_2(I32Array2? raw) {
    return raw == null ? null : api2wire_i32_array_2(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_list_rpc_button(List<RPCButton>? raw) {
    return raw == null ? null : api2wire_list_rpc_button(raw);
  }

  @protected
  List<dynamic> api2wire_rpc_activity(RPCActivity raw) {
    return [
      api2wire_opt_String(raw.state),
      api2wire_opt_String(raw.details),
      api2wire_opt_box_autoadd_rpc_timestamps(raw.timestamps),
      api2wire_opt_box_autoadd_rpc_party(raw.party),
      api2wire_opt_box_autoadd_rpc_assets(raw.assets),
      api2wire_opt_box_autoadd_rpc_secrets(raw.secrets),
      api2wire_opt_list_rpc_button(raw.buttons)
    ];
  }

  @protected
  List<dynamic> api2wire_rpc_assets(RPCAssets raw) {
    return [
      api2wire_opt_String(raw.largeImage),
      api2wire_opt_String(raw.largeText),
      api2wire_opt_String(raw.smallImage),
      api2wire_opt_String(raw.smallText)
    ];
  }

  @protected
  List<dynamic> api2wire_rpc_button(RPCButton raw) {
    return [
      api2wire_String(raw.label),
      api2wire_String(raw.url)
    ];
  }

  @protected
  List<dynamic> api2wire_rpc_party(RPCParty raw) {
    return [
      api2wire_opt_String(raw.id),
      api2wire_opt_i32_array_2(raw.size)
    ];
  }

  @protected
  List<dynamic> api2wire_rpc_secrets(RPCSecrets raw) {
    return [
      api2wire_opt_String(raw.join),
      api2wire_opt_String(raw.spectate),
      api2wire_opt_String(raw.matchStr)
    ];
  }

  @protected
  List<dynamic> api2wire_rpc_timestamps(RPCTimestamps raw) {
    return [
      api2wire_opt_box_autoadd_i64(raw.start),
      api2wire_opt_box_autoadd_i64(raw.end)
    ];
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external FlutterDiscordRpcWasmModule get wasmModule;

@JS()
@anonymous
class FlutterDiscordRpcWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external FlutterDiscordRpcWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_discord_init(NativePortType port_, String client_id);

  external dynamic /* void */ wire_discord_connect(NativePortType port_);

  external dynamic /* void */ wire_discord_reconnect(NativePortType port_);

  external dynamic /* void */ wire_discord_close(NativePortType port_);

  external dynamic /* void */ wire_discord_clear_activity(NativePortType port_);

  external dynamic /* void */ wire_discord_set_activity(NativePortType port_, List<dynamic> activity);

  external dynamic /* void */ wire_discord_dispose(NativePortType port_);
}

// Section: WASM wire connector

class FlutterDiscordRpcWire extends FlutterRustBridgeWasmWireBase<FlutterDiscordRpcWasmModule> {
  FlutterDiscordRpcWire(FutureOr<WasmModule> module) : super(WasmModule.cast<FlutterDiscordRpcWasmModule>(module));

  void wire_discord_init(NativePortType port_, String client_id) => wasmModule.wire_discord_init(port_, client_id);

  void wire_discord_connect(NativePortType port_) => wasmModule.wire_discord_connect(port_);

  void wire_discord_reconnect(NativePortType port_) => wasmModule.wire_discord_reconnect(port_);

  void wire_discord_close(NativePortType port_) => wasmModule.wire_discord_close(port_);

  void wire_discord_clear_activity(NativePortType port_) => wasmModule.wire_discord_clear_activity(port_);

  void wire_discord_set_activity(NativePortType port_, List<dynamic> activity) => wasmModule.wire_discord_set_activity(port_, activity);

  void wire_discord_dispose(NativePortType port_) => wasmModule.wire_discord_dispose(port_);
}
