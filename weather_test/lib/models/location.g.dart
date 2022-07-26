// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      city: json['city'] as String?,
      region: json['region'] as String?,
      woeid: json['woeid'] as int?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
      timezone_id: json['timezone_id'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'city': instance.city,
      'region': instance.region,
      'woeid': instance.woeid,
      'country': instance.country,
      'lat': instance.lat,
      'long': instance.long,
      'timezone_id': instance.timezone_id,
    };
