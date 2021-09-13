import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/todo/todo_store.dart';
import 'package:flutter/material.dart';
import 'package:teste1/app/widgets/dialog.dart';
import 'package:teste1/app/widgets/side_bar.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key, this.title = 'TodoPage'}) : super(key: key);
  final String title;

  @override
  TodoPageState createState() => TodoPageState();
}

class TodoPageState extends State<TodoPage> {
  final TodoStore store = Modular.get();
  final SideMenu sideMenu = Modular.get();

  @override
  void initState() {
    super.initState();
    store.readJson().then(
          (value) => setState(() {
            store.initiatePage();
          }),
        );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Row(
        children: [
          sideMenu,
          Observer(
            builder: (_) => Expanded(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      Observer(
                        builder: (_) => TextField(
                          controller: store.edtname,
                          onChanged: (value) => store.todo.setUsername(value),
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            hintText: 'Pick a username',
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => TextFormField(
                          controller: store.edtemail,
                          onChanged: (value) => store.todo.setEmail(value),
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your email address',
                          ),
                        ),
                      ),
                      Observer(
                        builder: (_) => TextFormField(
                          controller: store.edtpass,
                          onChanged: (value) => store.todo.setPassword(value),
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Set a password',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        child: const Text('Sign up'),
                        onPressed: () {
                          Dialogs dialog = Dialogs(
                            context: context,
                            goToHome: true,
                          );
                          dialog.showAlertDialog().then(
                            (value) {
                              if (value) {
                                store.saveJsonFile();
                              }
                            },
                          );
                        },
                      ),
                      Observer(
                        builder: (_) => ElevatedButton(
                          child: const Text('Sign up'),
                          onPressed: () {
                            store.setDefaults();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}
