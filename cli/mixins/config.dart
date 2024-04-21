import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';

mixin BuildConfig on Command {
  String _buildDir = "platform-build";
  String get buildDir => _buildDir;
  final String cwd = Directory.current.path;

  Future<void> ensureBuildDirectoryExists(String project) async {
    _buildDir = join(cwd, _buildDir, name, project);
    Directory(join(cwd, _buildDir))
      ..delete(recursive: true)
      ..create(recursive: true);
  }
}
