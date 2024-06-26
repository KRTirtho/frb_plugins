import 'package:flutter_discord_rpc/src/bridge_generated.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

FlutterDiscordRpc? _wrapper;

FlutterDiscordRpc createLib() {
  _wrapper ??= createWrapperImpl(createLibraryImpl());
  return _wrapper!;
}