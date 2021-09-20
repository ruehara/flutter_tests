import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/connection/connection_store.dart';
 
void main() {
  late ConnectionStore store;

  setUpAll(() {
    store = ConnectionStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}