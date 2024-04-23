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
    argParser.addFlag("copy", defaultsTo: false);
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

    final shell = Shell(workingDirectory: join(projectDir, "native"));

    await shell.run("""
      cargo install cargo-ndk
      rustup target add aarch64-linux-android armv7-linux-androideabi x86_64-linux-android i686-linux-android
    """);

    final jniDir = Directory(join(buildDir, "jniLibs"));

    await jniDir.create(recursive: true);

    await shell.run("""
      cargo ndk -o ${jniDir.path} \\
        --manifest-path ${join(projectDir, "Cargo.toml")} \\
        -t armeabi-v7a \\
        -t arm64-v8a \\
        -t x86 \\
        -t x86_64 \\
        build --release 
    """);

    await shell
        .cd(jniDir.path)
        .run("tar -czvf ../android.tar.gz armeabi-v7a arm64-v8a x86 x86_64");

    await jniDir.delete(recursive: true);

    final copyLib = argResults!.flag("copy");

    if (copyLib) {
      final libDir = join(projectDir, "android");
      final version = await pubspecVersion(projectDir);

      await File(join(buildDir, "android.tar.gz"))
          .copy(join(libDir, "$project-v$version.tar.gz"));
    }
  }
}
