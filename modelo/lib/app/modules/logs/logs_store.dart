import 'dart:io';

import 'package:mobx/mobx.dart';
part 'logs_store.g.dart';

class LogsStore = _LogsStoreBase with _$LogsStore;

abstract class _LogsStoreBase with Store {
  final dir = Directory('${Directory.current.path}\\Logs');
  @observable
  List<FileSystemEntity> folders = <FileSystemEntity>[];

  @observable
  List<String> folderList = <String>[];

  @action
  getFolders() async {
    folders = await dir.list().toList();

    await for (var entity in dir.list(recursive: false, followLinks: false)) {
      folderList.add(entity.path.substring(dir.path.length + 1));
    }
  }

  @observable
  int value = 0;

  @action
  String getName(int index) {
    var teste = folderList[index];
    return teste;
  }
}
