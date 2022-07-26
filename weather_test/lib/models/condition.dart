import 'package:json_annotation/json_annotation.dart';

part 'condition.g.dart';

@JsonSerializable()
class Condition {
  int? code;
  String? text;
  int? temperature;
  Condition({
    this.code,
    this.text,
    this.temperature,
  });
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
