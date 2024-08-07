import 'dart:async';
import 'package:flutter_discord_rpc/src/rust/frb_generated.dart';

import 'rust/api/types.dart';
import 'rust/api/api.dart' as api;

import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

final class FlutterDiscordRPC {
  static FlutterDiscordRPC? _instance;
  static FlutterDiscordRPC get instance => _instance!;
  final StreamController<bool> _isConnectedStreamController;

  FlutterDiscordRPC._()
      : _isConnectedStreamController = StreamController<bool>.broadcast();

  static Future<void> initialize(String applicationId) async {
    if (_instance != null) {
      throw Exception('FlutterDiscordRPC has already been initialized');
    }
    _instance = FlutterDiscordRPC._();

    await RustLib.init();
    await RustLib.instance.executeRustInitializers();
    await api.discordInit(clientId: applicationId);
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
      await api.discordConnect();
      _onConnected(true);
      _timer?.cancel();
    } catch (e) {
      if (autoRetry) {
        _timer = Timer.periodic(retryDelay, (timer) async {
          try {
            await api.discordConnect();
            _onConnected(true);
            timer.cancel();
          } catch (e) {
            _onConnected(false);
          }
        });
        return;
      }
      _onConnected(false);
      rethrow;
    }
  }

  Future<void> disconnect() async {
    try {
      await api.discordClose();
    } finally {
      _timer?.cancel();
      _timer = null;
      _onConnected(false);
    }
  }

  Future<void> reconnect() async {
    if (!_isConnected) return;
    await api.discordReconnect();
  }

  Future<void> setActivity({required RPCActivity activity}) async {
    try {
      await api.discordSetActivity(activity: activity);
    } on AnyhowException catch (e) {
      if (e.message.contains("BrokenPipe")) {
        await connect(autoRetry: true);
        await api.discordSetActivity(activity: activity);
      } else {
        rethrow;
      }
    }
  }

  Future<void> clearActivity() async {
    if (!_isConnected) return;
    try {
      await api.discordClearActivity();
    } catch (e) {
      if (e is AnyhowException && e.message.contains("BrokenPipe")) {
        await disconnect();
        return;
      }
      rethrow;
    }
  }

  Future<void> dispose() async {
    _timer?.cancel();
    _timer = null;
    await api.discordDispose();
    RustLib.dispose();
  }
}
