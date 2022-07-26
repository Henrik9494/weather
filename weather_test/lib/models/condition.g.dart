// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      code: json['code'] as int?,
      text: json['text'] as String?,
      temperature: json['temperature'] as int?,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'code': instance.code,
      'text': instance.text,
      'temperature': instance.temperature,
    };
