import 'package:flutter_test/flutter_test.dart';
import 'package:teste1/app/modules/question/question_store.dart';
 
void main() {
  late QuestionStore store;

  setUpAll(() {
    store = QuestionStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}