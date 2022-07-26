// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      atmosphere: json['atmosphere'] == null
          ? null
          : Atmosphere.fromJson(json['atmosphere'] as Map<String, dynamic>),
      astronomy: json['astronomy'] == null
          ? null
          : Astronomy.fromJson(json['astronomy'] as Map<String, dynamic>),
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      pubDate: json['pubDate'] as int?,
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'wind': instance.wind,
      'atmosphere': instance.atmosphere,
      'astronomy': instance.astronomy,
      'condition': instance.condition,
      'pubDate': instance.pubDate,
    };
