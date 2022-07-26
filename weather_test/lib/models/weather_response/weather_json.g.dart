// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    WeatherResponse(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current_observation: json['current_observation'] == null
          ? null
          : Current.fromJson(
              json['current_observation'] as Map<String, dynamic>),
      pubDate: json['pubDate'] as int?,
    );

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current_observation': instance.current_observation,
      'pubDate': instance.pubDate,
    };
