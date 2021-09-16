import 'package:analyzer_front/app/analyzer_library.dart';

class CreditsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => CreditsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CreditsPage()),
  ];
}
