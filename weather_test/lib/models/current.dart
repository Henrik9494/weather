import 'package:json_annotation/json_annotation.dart';
import 'package:weather_test/models/astronomy.dart';
import 'package:weather_test/models/atmosphere.dart';
import 'package:weather_test/models/condition.dart';
import 'package:weather_test/models/wind.dart';

part 'current.g.dart';

@JsonSerializable()
class Current {
  Wind? wind;
  Atmosphere? atmosphere;
  Astronomy? astronomy;
  Condition? condition;
  int? pubDate;
  Current({
    this.wind,
    this.atmosphere,
    this.astronomy,
    this.condition,
    this.pubDate,
  });
  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}
