import 'package:mobx/mobx.dart';

part 'connection_store.g.dart';

class ConnectionStore = _ConnectionStoreBase with _$ConnectionStore;
abstract class _ConnectionStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}