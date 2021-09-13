import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/widgets/side_bar.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({this.title = "Home"});

  @override
  _HomePageState createState() => _HomePageState();
}

const htmlData = r"""<h1>Welcome To The Sql Analyzer Project!</h1>
<p style="font-size: 1.5em;">You can <strong style="background-color: #317399; padding: 0 5px; color: #fff;">type your text</strong> directly in the editor or paste it from a Word Doc, PDF, Excel etc.</p>
<p style="font-size: 1.5em;">The <strong>visual editor</strong> on the right and the <strong>source editor</strong> on the left are linked together and the changes are reflected in the other one as you type! <img src="https://html5-editor.net/images/smiley.png" alt="smiley" /></p>
<table class="editorDemoTable">
<tbody>
<tr>
<td><strong>Name</strong></td>
<td><strong>City</strong></td>
<td><strong>Age</strong></td>
</tr>
<tr>
<td>John</td>
<td>Chicago</td>
<td>23</td>
</tr>
<tr>
<td>Lucy</td>
<td>Wisconsin</td>
<td>19</td>
</tr>
<tr>
<td>Amanda</td>
<td>Madison</td>
<td>22</td>
</tr>
</tbody>
</table>
<p>This is a table you can experiment with.</p>
<p style="font-size: 1.5em;">You can <strong style="background-color: #317399; padding: 0 5px; color: #fff;">type your text</strong> directly in the editor or paste it from a Word Doc, PDF, Excel etc.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>
<p>This is a table you can experiment with.</p>

""";

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final SideMenu sideMenu = Modular.get();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Row(
        children: [
          sideMenu,
          Expanded(
            flex: 1,
            child: Observer(
              builder: (context) => SingleChildScrollView(
                child: Html(
                  data: htmlData,
                  style: {
                    "h1": Style(
                      color: Colors.blue,
                    ),
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String> loadFile() async {
    File file = File('${Directory.current.path}/README.md');
    return await file.readAsString();
  }
}
