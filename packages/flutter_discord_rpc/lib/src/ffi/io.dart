import 'dart:ffi';
import 'dart:io';

import 'package:flutter_discord_rpc/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

FlutterDiscordRpc createWrapperImpl(ExternalLibrary dylib) =>
    FlutterDiscordRpcImpl(dylib);

DynamicLibrary createLibraryImpl() {
  const base = 'flutter_discord_rpc';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}
