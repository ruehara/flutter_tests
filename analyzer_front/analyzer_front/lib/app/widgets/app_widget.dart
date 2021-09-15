import 'package:analyzer_front/app/analyzer_library.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sql Analyzer',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular();
  }
}
