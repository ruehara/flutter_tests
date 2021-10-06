import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/modules/sequence/sequence_detail.dart';

class SequenceModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => SequenceStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SequencePage()),
    ChildRoute(
      '/:action/:index',
      child: (_, args) => SequenceDetail(
        action: args.params['action'],
        index: args.params['index'],
      ),
    ),
    ChildRoute(
      '/:action',
      child: (_, args) => SequenceDetail(
        action: args.params['action'],
      ),
    ),
  ];
}
