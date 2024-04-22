import 'dart:io';

import 'package:args/command_runner.dart';

class ProjectNameExtractCommand extends Command {
  @override
  String get name => "project_name";
  @override
  String get description =>
      "Extract the project name from the pubspec.yaml file";

  ProjectNameExtractCommand() {
    argParser.addOption("path", abbr: "p", mandatory: true);
  }

  @override
  run() async {
    final tagName = argResults?.arguments.firstOrNull;
    if (tagName == null || tagName.isEmpty) {
      stderr.writeln("No tag name provided");
      return;
    }

    stdout.writeln(tagName.split("-v").first.trim());
  }
}
