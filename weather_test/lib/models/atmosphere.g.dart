// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atmosphere.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Atmosphere _$AtmosphereFromJson(Map<String, dynamic> json) => Atmosphere(
      humidity: json['humidity'] as int?,
      visibility: json['visibility'] as int?,
      pressure: (json['pressure'] as num?)?.toDouble(),
      rising: json['rising'] as int?,
    );

Map<String, dynamic> _$AtmosphereToJson(Atmosphere instance) =>
    <String, dynamic>{
      'humidity': instance.humidity,
      'visibility': instance.visibility,
      'pressure': instance.pressure,
      'rising': instance.rising,
    };
