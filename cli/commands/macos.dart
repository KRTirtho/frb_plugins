import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';
import '../mixins/config.dart';

class MacOSBuildCommand extends Command with BuildConfig {
  @override
  String get name => "macos";
  @override
  String get description => "Build the macos libraries";

  @override
  FutureOr? run() async {
    final project = argResults?.option("project");

    final projectDir = join(cwd, "packages", project);

    if (!await Directory(projectDir).exists()) {
      stderr.writeln("Project $project not found");
      return;
    }
    await ensureBuildDirectoryExists(project!);

    final shell = Shell(workingDirectory: buildDir);
    final arch = ["x86_64-apple-darwin", "aarch64-apple-darwin"];
    await shell.run("rustup target add ${arch.join(" ")}");
    for (final target in arch) {
      await shell.run(
        "cargo build -r --target=$target --manifest=${join(projectDir, "Cargo.toml")}",
      );
    }

    final framework = "$project-$name.xcframework";
    final libname = "$project.a";
    final macosSimLipo = join(buildDir, "macos-sim-lipo", libname);

    await Directory(join(buildDir, "macos-sim-lipo")).create(recursive: true);

    await shell.run("""
      lipo -create -output $macosSimLipo \\
          ${join(projectDir, "target", "aarch64-apple-darwin", "release", libname)} \\
          ${join(projectDir, "target", "x86_64-apple-darwin", "release", libname)}

      xcodebuild -create-xcframework \\
        -library $macosSimLipo \\
        -output $framework

      zip -r $framework.zip $framework
      rm -rf macos-sim-lipo $framework
    """);
  }
}
