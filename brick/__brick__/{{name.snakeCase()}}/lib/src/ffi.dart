import 'package:{{name.snakeCase()}}/src/bridge_generated.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

{{name.pascalCase()}}? _wrapper;

{{name.pascalCase()}} createLib() {
  _wrapper ??= createWrapperImpl(createLibraryImpl());
  return _wrapper!;
}