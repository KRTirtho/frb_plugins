// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:toml/toml.dart';

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
      'no-tag-commit',
      help: 'Do not create a git tag and commit the changes.',
      negatable: false,
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

    if (argResults == null || argResults!.arguments.isEmpty) {
      stderr.writeln("Please provide a new <version>");
      return;
    }

    final newVersion = await Future.microtask(() async {
      return Version.parse(argResults!.arguments.first);
    }).catchError((e) {
      stderr.writeln("Invalid version format");
      exit(1);
    });

    final shell = Shell(workingDirectory: cwd);

    final processResult = await shell.run("""
      melos version -V $project:$newVersion --no-git-tag-version --no-git-commit-version --yes
    """);

    // exit if the process failed
    if (processResult.first.exitCode != 0) {
      exit(processResult.first.exitCode);
    }

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

    final cargoToml = File(join(projectDir, "native", "Cargo.toml"));

    if (await cargoToml.exists()) {
      final content =
          TomlDocument.parse(await cargoToml.readAsString()).toMap();

      content["package"]["version"] = newVersion.toString();

      await cargoToml.writeAsString(
        TomlDocument.fromMap(content).toString(),
      );
    }

    if (argResults?.flag("no-tag-commit") == false) {
      stdout.writeln("Version updated to $newVersion");
      stdout.writeln("Committing and tagging changes...");
      await shell.run("""
      git add .
      git commit -m "chore($project): bump version to v$newVersion"
      git tag -a $project-v$newVersion -m "chore($project): release v$newVersion"
    """);
    }
  }
}
