import 'dart:async';

import 'package:flutter_discord_rpc/src/ffi.dart';
import 'package:flutter_discord_rpc/src/bridge_generated.dart' as bridge;

final class FlutterDiscordRPC {
  static FlutterDiscordRPC? _instance;
  static FlutterDiscordRPC get instance => _instance!;

  final bridge.FlutterDiscordRpc _lib;
  final StreamController<bool> _isConnectedStreamController;

  FlutterDiscordRPC._()
      : _lib = createLib(),
        _isConnectedStreamController = StreamController<bool>.broadcast();

  static Future<void> initialize(String applicationId) async {
    if (_instance != null) {
      throw Exception('FlutterDiscordRPC has already been initialized');
    }
    _instance = FlutterDiscordRPC._();

    instance._lib.discordInit(clientId: applicationId);
  }

  bool _isConnected = false;
  bool get isConnected => _isConnected;
  Stream<bool> get isConnectedStream => _isConnectedStreamController.stream;

  Timer? _timer;

  void _onConnected(bool connected) {
    _isConnected = connected;
    _isConnectedStreamController.add(connected);
  }

  Future<void> connect({
    bool autoRetry = false,
    Duration retryDelay = const Duration(seconds: 5),
  }) async {
    try {
      await _lib.discordConnect();
      _onConnected(true);
      _timer?.cancel();
    } catch (e) {
      _onConnected(false);
      if (autoRetry) {
        _timer = Timer.periodic(retryDelay, (timer) async {
          try {
            await _lib.discordConnect();
            _onConnected(true);
            timer.cancel();
          } catch (e) {
            _onConnected(false);
          }
        });
        return;
      }
      rethrow;
    }
  }

  Future<void> disconnect() async {
    try {
      await _lib.discordClose();
    } finally {
      _timer?.cancel();
      _timer = null;
      _onConnected(false);
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
    _timer?.cancel();
    _timer = null;
    await _lib.discordDispose();
  }
}
