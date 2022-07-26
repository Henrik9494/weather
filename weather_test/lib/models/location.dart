import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  String? city;
  String? region;
  int? woeid;
  String? country;
  double? lat;
  double? long;
  String? timezone_id;
  Location({
    required this.city,
    this.region,
    this.woeid,
    this.country,
    this.lat,
    this.long,
    this.timezone_id,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
