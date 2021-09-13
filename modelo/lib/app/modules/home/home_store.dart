import 'dart:io';

import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @action
  loadHomePageHtml() {
    File file = File('${Directory.current.path}/home.html');
    return file.readAsString();
  }
}
