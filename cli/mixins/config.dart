import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec/pubspec.dart';

mixin BuildConfig on Command {
  String _buildDir = "platform-build";
  String get buildDir => _buildDir;
  final String cwd = Directory.current.path;

  Future<void> ensureBuildDirectoryExists(
    String project, {
    String? platformName,
    bool noWrite = false,
  }) async {
    _buildDir = join(cwd, _buildDir, project, platformName ?? name);
    final buildDirectory = Directory(join(cwd, _buildDir));

    if (!noWrite) {
      if (await buildDirectory.exists()) {
        await buildDirectory.delete(recursive: true);
      }
      await buildDirectory.create(recursive: true);
    }
  }

  Future<bool> platformDirExists(String project) async {
    final projectDir = join(cwd, "packages", project);
    final platformDir = join(projectDir, name);

    return await Directory(platformDir).exists();
  }

  Future<Version> pubspecVersion(String projectDir) async {
    final pubspec = await PubSpec.load(Directory(projectDir));

    return pubspec.version!;
  }
}
