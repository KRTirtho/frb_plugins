import 'package:args/command_runner.dart';

import 'commands/android.dart';
import 'commands/ios.dart';
import 'commands/linux.dart';
import 'commands/macos.dart';
import 'commands/version.dart';
import 'commands/windows.dart';

void main(List<String> args) {
  final runner = CommandRunner("cli", "CLI for the Rust-Flutter project");

  runner
    ..addCommand(AndroidBuildCommand())
    ..addCommand(IOSBuildCommand())
    ..addCommand(MacOSBuildCommand())
    ..addCommand(WindowsBuildCommand())
    ..addCommand(LinuxBuildCommand())
    ..addCommand(VersionCommand())
    ..run(args);
}
