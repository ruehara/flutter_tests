import 'package:mobx/mobx.dart';

part 'database_store.g.dart';

class DatabaseStore = _DatabaseStoreBase with _$DatabaseStore;
abstract class _DatabaseStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}