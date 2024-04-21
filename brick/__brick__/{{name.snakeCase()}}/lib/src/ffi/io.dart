import 'dart:ffi';
import 'dart:io';

import 'package:{{name.snakeCase()}}/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

{{name.pascalCase()}} createWrapperImpl(ExternalLibrary dylib) =>
    {{name.pascalCase()}}Impl(dylib);

DynamicLibrary createLibraryImpl() {
  const base = '{{name.snakeCase()}}';

  if (Platform.isIOS || Platform.isMacOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isWindows) {
    return DynamicLibrary.open('$base.dll');
  } else {
    return DynamicLibrary.open('lib$base.so');
  }
}
