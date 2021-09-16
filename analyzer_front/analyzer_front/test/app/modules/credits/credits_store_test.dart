import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/credits/credits_store.dart';
 
void main() {
  late CreditsStore store;

  setUpAll(() {
    store = CreditsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}