import 'package:mobx/mobx.dart';

part 'logs_store.g.dart';

class LogsStore = _LogsStoreBase with _$LogsStore;

abstract class _LogsStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
