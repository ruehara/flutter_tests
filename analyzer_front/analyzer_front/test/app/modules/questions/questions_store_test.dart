import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/questions/questions_store.dart';
 
void main() {
  late QuestionsStore store;

  setUpAll(() {
    store = QuestionsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}