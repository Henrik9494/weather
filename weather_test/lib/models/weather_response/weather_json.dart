// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:weather_test/models/current.dart';
import 'package:weather_test/models/location.dart';

part 'weather_json.g.dart';

@JsonSerializable()
class WeatherResponse {
  Location? location;
  Current? current_observation;
  int? pubDate;
  WeatherResponse({
    this.location,
    this.current_observation,
    this.pubDate,
  });
  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}
