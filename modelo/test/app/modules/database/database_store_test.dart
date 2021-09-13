import 'package:flutter_test/flutter_test.dart';
import 'package:teste1/app/modules/database/database_store.dart';
 
void main() {
  late DatabaseStore store;

  setUpAll(() {
    store = DatabaseStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}