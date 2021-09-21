import 'package:analyzer_front/app/analyzer_library.dart';

class LogsPage extends CustomPage {
  final LogsStore store = Modular.get();
  LogsPage({Key? key})
      : super(
          key: key,
          title: 'Logs Page',
          bodyPage: const Text('In construction...'),
        );
}
