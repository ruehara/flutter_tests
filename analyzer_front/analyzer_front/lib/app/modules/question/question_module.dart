import 'package:analyzer_front/app/analyzer_library.dart';

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
