import 'package:mobx/mobx.dart';

part 'report_store.g.dart';

class ReportStore = _ReportStoreBase with _$ReportStore;
abstract class _ReportStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}