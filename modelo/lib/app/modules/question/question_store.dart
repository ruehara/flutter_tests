import 'dart:io';
import 'package:mobx/mobx.dart';

part 'question_store.g.dart';

class QuestionStore = _QuestionStoreBase with _$QuestionStore;

abstract class _QuestionStoreBase with Store {
  @observable
  int value = 0;

  @action
  Future<void> start() async {
    var process = await Process.run(
        '${Directory.current.path}\\netcoreapp3.1\\db_status.exe',
        ["-i", "teste.json", "-t", "question"]);
    print(process.exitCode);
    print(process.stderr);
    print(process.stdout);
  }
}
