import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:metadata_god/metadata_god.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async => await MetadataGod.initialize());
  test('Can call rust function', () async {
    expect(MetadataGod.readMetadata(file: "assets/test.m4a"), isA<Metadata>());
  });
}
