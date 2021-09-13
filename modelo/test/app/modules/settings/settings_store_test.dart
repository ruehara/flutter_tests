import 'package:flutter_test/flutter_test.dart';
import 'package:teste1/app/modules/settings/settings_store.dart';
 
void main() {
  late SettingsStore store;

  setUpAll(() {
    store = SettingsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}