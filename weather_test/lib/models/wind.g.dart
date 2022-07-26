// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Wind _$WindFromJson(Map<String, dynamic> json) => Wind(
      chill: json['chill'] as int?,
      direction: json['direction'] as int?,
      speed: json['speed'] as int?,
    );

Map<String, dynamic> _$WindToJson(Wind instance) => <String, dynamic>{
      'chill': instance.chill,
      'direction': instance.direction,
      'speed': instance.speed,
    };
