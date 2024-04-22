// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec/pubspec.dart';

class VersionCommand extends Command {
  @override
  String get name => 'version';

  @override
  String get description => 'Update the version of a specific project.';

  VersionCommand() {
    argParser.addOption(
      'project',
      abbr: 'p',
      help: 'The project to update the version.',
      valueHelp: 'project_name',
      mandatory: true,
    );

    argParser.addFlag(
      'pubspec',
      help: 'Update the version from the pubspec.yaml file.',
      defaultsTo: false,
    );
  }

  String get cwd => Directory.current.path;

  @override
  void run() async {
    final project = argResults?.option("project");

    if (project == null || project.isEmpty) {
      stderr.writeln("Please provide a project name");
      return;
    }

    final projectDir = join(cwd, "packages", project);

    if (!await Directory(projectDir).exists()) {
      stderr.writeln("Project $project not found");
      return;
    }

    final isPubspec = argResults?.flag("pubspec") == true;

    if (argResults == null || (!isPubspec && argResults!.arguments.isEmpty)) {
      stderr.writeln("Please provide a new <version>");
      return;
    }

    final newVersion = await Future.microtask(() async {
      if (isPubspec) {
        final pubspecFile = File(join(projectDir, "pubspec.yaml"));

        if (!await pubspecFile.exists()) {
          stderr.writeln("pubspec.yaml not found");
          exit(1);
        }

        final pubspecContent = await pubspecFile.readAsString();
        final pubspec = PubSpec.fromYamlString(pubspecContent);

        return pubspec.version!;
      }

      return Version.parse(argResults!.arguments.first);
    }).catchError((e) {
      stderr.writeln("Invalid version format");
      exit(1);
    });

    final buildFiles = [
      join(projectDir, "ios", "$project.podspec"),
      join(projectDir, "macos", "$project.podspec"),
      join(projectDir, "android", "CMakeLists.txt"),
      join(projectDir, "windows", "CMakeLists.txt"),
      join(projectDir, "linux", "CMakeLists.txt"),
    ];

    final versionRegEx = RegExp("$project-v[0-9]+\\.[0-9]+\\.[0-9]+");

    for (final buildFilePath in buildFiles) {
      final buildFile = File(buildFilePath);

      if (!await buildFile.exists()) continue;

      final content = (await buildFile.readAsString())
          .replaceAll(versionRegEx, '$project-v$newVersion');

      await buildFile.writeAsString(content);
    }
  }
}
