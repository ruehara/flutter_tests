import 'package:analyzer_front/app/analyzer_library.dart';

void main() => runApp(
      ModularApp(
        module: AppModule(),
        child: const AppWidget(),
      ),
    );
