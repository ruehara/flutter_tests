import 'package:mobx/mobx.dart';

part 'sequence_store.g.dart';

class SequenceStore = _SequenceStoreBase with _$SequenceStore;
abstract class _SequenceStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}