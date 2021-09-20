import 'package:analyzer_front/app/analyzer_library.dart';

class ReportModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ReportStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const ReportPage()),
  ];
}
