import 'package:flutter_discord_rpc/src/ffi.dart';
import 'package:flutter_discord_rpc/src/bridge_generated.dart' as bridge;

final class FlutterDiscordRPC {
  static FlutterDiscordRPC? _instance;
  static FlutterDiscordRPC get instance => _instance!;

  final bridge.FlutterDiscordRpc _lib;
  FlutterDiscordRPC._() : _lib = createLib();

  static Future<void> initialize(String applicationId) async {
    if (_instance != null) {
      throw Exception('FlutterDiscordRPC has already been initialized');
    }
    _instance = FlutterDiscordRPC._();

    instance._lib.discordInit(clientId: applicationId);
  }

  bool _isConnected = false;
  bool get isConnected => _isConnected;

  Future<void> connect() async {
    try {
      await _lib.discordConnect();
      _isConnected = true;
    } catch (e) {
      _isConnected = false;
      rethrow;
    }
  }

  Future<void> disconnect() async {
    try {
      await _lib.discordClose();
    } catch (e) {
      _isConnected = false;
      rethrow;
    }
  }

  Future<void> reconnect() async {
    if (!_isConnected) return;
    await _lib.discordReconnect();
  }

  Future<void> setActivity({required bridge.RPCActivity activity}) async {
    if (!_isConnected) return;
    await _lib.discordSetActivity(activity: activity);
  }

  Future<void> clearActivity() async {
    if (!_isConnected) return;
    await _lib.discordClearActivity();
  }

  Future<void> dispose() async {
    await _lib.discordDispose();
  }
}
