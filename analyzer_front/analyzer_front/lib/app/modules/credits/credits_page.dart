import 'package:analyzer_front/app/analyzer_library.dart';

class CreditsPage extends StatefulWidget {
  final String title;

  const CreditsPage({Key? key, this.title = 'Credits Page'}) : super(key: key);

  @override
  CreditsPageState createState() => CreditsPageState();
}

class CreditsPageState extends State<CreditsPage>
    with TickerProviderStateMixin {
  final CreditsStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();
  CustomScrollBehavior scroll = CustomScrollBehavior();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      store.scroll();
    });
    super.initState();
  }

  @override
  void dispose() {
    store.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          sideMenu,
          Expanded(
            flex: 1,
            child: ScrollConfiguration(
              behavior: scroll.copyWith(scrollbars: false),
              child: Container(
                color: darkBlue,
                padding: const EdgeInsets.all(1),
                child: Center(
                  widthFactor: 0.9,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.01)
                      ..rotateX(-0.45),
                    alignment: FractionalOffset.center,
                    child: SingleChildScrollView(
                      controller: store.scrollController,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            store.cast,
                            textAlign: TextAlign.center,
                            maxLines: 1000,
                            style: const TextStyle(
                                color: Colors.yellow, fontSize: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                store.roles,
                                textAlign: TextAlign.end,
                                maxLines: 1000,
                                style: const TextStyle(
                                    color: Colors.yellow, fontSize: 20.0),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                store.persons,
                                textAlign: TextAlign.start,
                                maxLines: 1000,
                                style: const TextStyle(
                                    color: Colors.yellow, fontSize: 20.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
