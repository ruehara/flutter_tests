import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:analyzer_front/app/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        MyAppBar(title: 'Home').appBar(),
        Row(
          children: [
            sideMenu,
            Expanded(
              flex: 1,
              child: Observer(
                builder: (context) => Center(
                  child: ScrollConfiguration(
                    behavior: scroll,
                    child: const Text('teste'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
