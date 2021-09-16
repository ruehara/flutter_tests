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
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: Container(
                color: darkBlue,
                padding: const EdgeInsets.all(1),
                child: Center(
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.007)
                      ..rotateX(-0.7),
                    alignment: FractionalOffset.center,
                    child: SingleChildScrollView(
                      controller: store.scrollController,
                      child: Text(
                        store.val,
                        textAlign: TextAlign.justify,
                        maxLines: 1000,
                        style: const TextStyle(
                            color: Colors.yellow, fontSize: 20.0),
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
