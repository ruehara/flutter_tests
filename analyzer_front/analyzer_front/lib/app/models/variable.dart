import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';
part 'variable.g.dart';

@JsonSerializable()
class Variable {
  Variable();
  @JsonKey(name: 'Name')
  @observable
  String name = "";

  @JsonKey(name: 'Type')
  @observable
  String type = "";

  @action
  factory Variable.fromJson(Map<String, dynamic> json) =>
      _$VariableFromJson(json);

  @action
  Map<String, dynamic> toJson() => _$VariableToJson(this);
}
