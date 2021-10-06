import 'package:analyzer_front/app/analyzer_library.dart';

class ConnectionPage extends CustomPage {
  final ConnectionStore store = Modular.get();
  ConnectionPage({Key? key})
      : super(
          key: key,
          title: 'Connection Page',
          bodyPage: const Text('Connection Page in construction...'),
        );
}
