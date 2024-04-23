import 'package:flutter_discord_rpc/src/ffi.dart';
import 'package:flutter_discord_rpc/src/bridge_generated.dart' as bridge;

final class FlutterDiscordRPC {
  static FlutterDiscordRPC? _instance;
  static FlutterDiscordRPC get instance => _instance!;

  final bridge.FlutterDiscordRpc lib;
  FlutterDiscordRPC._() : lib = createLib();

  static Future<void> initialize(String applicationId) async {
    if (_instance != null) {
      throw Exception('FlutterDiscordRPC has already been initialized');
    }
    _instance = FlutterDiscordRPC._();

    instance.lib.discordInit(clientId: applicationId);
  }

  Future<void> connect() async {
    await lib.discordConnect();
  }

  Future<void> disconnect() async {
    await lib.discordClose();
  }

  Future<void> reconnect() async {
    await lib.discordReconnect();
  }

  Future<void> setActivity({required bridge.RPCActivity activity}) async {
    await lib.discordSetActivity(activity: activity);
  }

  Future<void> clearActivity() async {
    await lib.discordClearActivity();
  }
}
