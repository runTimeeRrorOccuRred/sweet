// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_activity_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateActivityReqImpl _$$UpdateActivityReqImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateActivityReqImpl(
      activityName: json['activityName'] as String?,
      activityType: json['activityType'] as String?,
      userId: json['userId'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      level: json['level'] as String?,
      types: json['types'] as String?,
    );

Map<String, dynamic> _$$UpdateActivityReqImplToJson(
        _$UpdateActivityReqImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'activityType': instance.activityType,
      'userId': instance.userId,
      'me': parseDouble(instance.me),
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'level': instance.level,
      'types': instance.types,
    };

_$UpdateActivityResImpl _$$UpdateActivityResImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateActivityResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateActivityResImplToJson(
        _$UpdateActivityResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      activityName: json['activityName'] as String?,
      id: json['id'] as String?,
      activityType: json['activityType'] as String?,
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      types: json['types'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'id': instance.id,
      'activityType': instance.activityType,
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'types': instance.types,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
