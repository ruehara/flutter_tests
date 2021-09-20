import 'package:mobx/mobx.dart';

part 'question_store.g.dart';

class QuestionStore = _QuestionStoreBase with _$QuestionStore;
abstract class _QuestionStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}