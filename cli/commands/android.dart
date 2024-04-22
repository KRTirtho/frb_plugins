import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:process_run/process_run.dart';
import 'package:path/path.dart';

import '../mixins/config.dart';

class AndroidBuildCommand extends Command with BuildConfig {
  @override
  String get name => "android";
  @override
  String get description => "Build the Android libraries";

  AndroidBuildCommand() {
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

    final shell = Shell(workingDirectory: buildDir);

    await shell.run("""
      cargo install cargo-ndk
      rustup target add aarch64-linux-android armv7-linux-androideabi x86_64-linux-android i686-linux-android
    """);

    final jniDir = join(cwd, "jniLibs");
    await shell.run("""
      cargo ndk -o ${shellArgument(jniDir)} \\
        --manifest-path ${shellArgument(join(projectDir, "Cargo.toml"))} \\
        -t armeabi-v7a \\
        -t arm64-v8a \\
        -t x86 \\
        -t x86_64 \\
        build --release 
    """);

    await shell.cd(jniDir).run("tar -czvf ../android.tar.gz *");

    await Directory(jniDir).delete(recursive: true);
  }
}
