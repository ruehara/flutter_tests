import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/question/question_module.dart';

void main() {
  setUpAll(() {
    initModule(QuestionModule());
  });
}
