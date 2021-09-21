import 'package:analyzer_front/app/models/question.dart';
import 'package:mobx/mobx.dart';

part 'question_store.g.dart';

class QuestionStore = _QuestionStoreBase with _$QuestionStore;

abstract class _QuestionStoreBase with Store {
  @observable
  List<Question> questions = <Question>[];
}
