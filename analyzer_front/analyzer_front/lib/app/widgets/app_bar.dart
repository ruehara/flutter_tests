import 'package:analyzer_front/app/analyzer_library.dart';

class MyAppBar {
  String _title = "";
  MyAppBar({required String title}) {
    _title = title;
  }
  SliverAppBar appBar() {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 160.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(_title),
        background: const FlutterLogo(),
      ),
    );
  }
}
