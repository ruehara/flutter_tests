import 'package:mobx/mobx.dart';

part 'user_question_store.g.dart';

class UserQuestionStore = _UserQuestionStoreBase with _$UserQuestionStore;

abstract class _UserQuestionStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
