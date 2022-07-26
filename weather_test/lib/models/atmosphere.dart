import 'package:json_annotation/json_annotation.dart';

part 'atmosphere.g.dart';

@JsonSerializable()
class Atmosphere {
  int? humidity;
  int? visibility;
  double? pressure;
  int? rising;
  Atmosphere({
    this.humidity,
    this.visibility,
    this.pressure,
    this.rising,
  });
  factory Atmosphere.fromJson(Map<String, dynamic> json) =>
      _$AtmosphereFromJson(json);
}
