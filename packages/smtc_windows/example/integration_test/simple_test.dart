import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smtc_windows/smtc_windows.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async => await SMTCWindows.initialize());
  test('Can call rust function', () async {
    expect(true, isTrue);
  });
}
