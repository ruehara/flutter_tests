import 'package:analyzer_front/app/analyzer_library.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final SideMenu sideMenu = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Row(
        children: [
          sideMenu,
          Expanded(
            flex: 1,
            child: Observer(
              builder: (context) => const Center(
                child: Text('home'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
