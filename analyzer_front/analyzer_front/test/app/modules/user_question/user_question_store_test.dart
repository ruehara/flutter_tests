import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/user_question/userQuestion_store.dart';
 
void main() {
  late UserQuestionStore store;

  setUpAll(() {
    store = UserQuestionStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}