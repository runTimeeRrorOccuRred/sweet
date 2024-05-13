// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_activity_temp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddActivityTempImpl _$$AddActivityTempImplFromJson(
        Map<String, dynamic> json) =>
    _$AddActivityTempImpl(
      activityName: json['activityName'] as String?,
      activityTypeId: json['activityTypeId'] as String?,
      activityTypeName: json['activityTypeName'] as String?,
      activityTypeIcon: json['activityTypeIcon'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      level: json['level'] as String?,
      types: json['types'] as String?,
    );

Map<String, dynamic> _$$AddActivityTempImplToJson(
        _$AddActivityTempImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'activityTypeId': instance.activityTypeId,
      'activityTypeName': instance.activityTypeName,
      'activityTypeIcon': instance.activityTypeIcon,
      'me': parseDouble(instance.me),
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'level': instance.level,
      'types': instance.types,
    };
