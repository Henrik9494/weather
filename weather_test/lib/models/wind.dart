import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable()
class Wind {
  int? chill;
  int? direction;
  int? speed;
  Wind({this.chill, this.direction, this.speed});
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
