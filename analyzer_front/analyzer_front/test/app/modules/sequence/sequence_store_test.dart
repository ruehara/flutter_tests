import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/sequence/sequence_store.dart';
 
void main() {
  late SequenceStore store;

  setUpAll(() {
    store = SequenceStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}