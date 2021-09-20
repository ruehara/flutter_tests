import 'package:analyzer_front/app/analyzer_library.dart';

class SequenceModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SequenceStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SequencePage()),
  ];
}
