import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';
import '../mixins/config.dart';

class WindowsBuildCommand extends Command with BuildConfig {
  @override
  String get name => "windows";
  @override
  String get description => "Build the windows libraries";

  WindowsBuildCommand() {
    argParser.addOption("project", abbr: "p", mandatory: true);
  }

  @override
  FutureOr? run() async {
    final project = argResults?.option("project");

    final projectDir = join(cwd, "packages", project);

    if (!await Directory(projectDir).exists()) {
      stderr.writeln("Project $project not found");
      return;
    }
    if (!await platformDirExists(project!)) {
      stdout.writeln("Platform $name is not enabled for $project");
      return;
    }

    await ensureBuildDirectoryExists(project);

    final shell = Shell(
      workingDirectory: buildDir,
    );

    if (!Platform.isWindows) {
      await shell.run("cargo install cargo-xwin");
    }

    final libname = "$project.dll";

    final targets = [
      ("x86_64-pc-windows-msvc", "windows-x64"),
      ("aarch64-pc-windows-msvc", "windows-arm64"),
    ];
    for (final (target, arch) in targets) {
      final archDir = Directory(join(buildDir, arch))..create(recursive: true);
      await shell.run("""
        rustup target add $target
        cargo ${Platform.isWindows ? "" : "xwin"} build --target=$target -r --manifest-path ${join(projectDir, "Cargo.toml")}
        cp ${join(projectDir, "target", target, "release", libname)} ${archDir.path}
      """);
    }

    await shell.run("tar -czvf windows.tar.gz windows-x64 windows-arm64");

    for (final (_, arch) in targets) {
      final archDir = Directory(join(buildDir, arch));
      await archDir.delete(recursive: true);
    }
  }
}
