import 'package:json_annotation/json_annotation.dart';

part 'astronomy.g.dart';

@JsonSerializable()
class Astronomy {
  String? sunrise;
  String? sunset;
  Astronomy({
    this.sunrise,
    this.sunset,
  });
  factory Astronomy.fromJson(Map<String, dynamic> json) =>
      _$AstronomyFromJson(json);
}
