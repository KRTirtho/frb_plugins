import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async => FlutterDiscordRPC.initialize("1234567890"));
  test('Can call rust function', () async {
    expect(FlutterDiscordRPC.instance.connect(), completes);
  });
}
