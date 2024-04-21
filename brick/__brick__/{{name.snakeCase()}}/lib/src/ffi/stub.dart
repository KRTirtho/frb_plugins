import 'package:{{name.snakeCase()}}/src/bridge_generated.dart';

/// Represents the external library for {{name.snakeCase()}}
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

{{name.pascalCase()}} createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();
