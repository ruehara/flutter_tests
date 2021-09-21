import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'sequence.g.dart';

@JsonSerializable()
class Sequence {
  Sequence();

  @JsonKey(name: 'Title')
  @observable
  String title = "";

  @JsonKey(name: 'Description')
  @observable
  String description = "";

  @JsonKey(name: 'DataBase')
  @observable
  List<String> dataBase = [];

  @JsonKey(name: 'Questions')
  @observable
  List<String> questions = [];

  @action
  factory Sequence.fromJson(Map<String, dynamic> json) =>
      _$SequenceFromJson(json);

  @action
  Map<String, dynamic> toJson() => _$SequenceToJson(this);
}
