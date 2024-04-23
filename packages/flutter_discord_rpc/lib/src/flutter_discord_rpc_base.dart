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

  Future<void> connect() async {
    await _lib.discordConnect();
  }

  Future<void> disconnect() async {
    await _lib.discordClose();
  }

  Future<void> reconnect() async {
    await _lib.discordReconnect();
  }

  Future<void> setActivity({required bridge.RPCActivity activity}) async {
    await _lib.discordSetActivity(activity: activity);
  }

  Future<void> clearActivity() async {
    await _lib.discordClearActivity();
  }
}
