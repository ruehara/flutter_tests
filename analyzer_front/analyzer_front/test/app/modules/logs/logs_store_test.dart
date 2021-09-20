import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/logs/logs_store.dart';
 
void main() {
  late LogsStore store;

  setUpAll(() {
    store = LogsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}