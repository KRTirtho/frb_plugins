import 'package:flutter_discord_rpc/src/bridge_generated.dart';

/// Represents the external library for flutter_discord_rpc
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

FlutterDiscordRpc createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();
