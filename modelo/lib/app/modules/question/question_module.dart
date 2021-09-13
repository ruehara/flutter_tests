import 'package:teste1/app/modules/question/question_Page.dart';
import 'package:teste1/app/modules/question/question_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QuestionModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => QuestionStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const QuestionPage()),
  ];
}
