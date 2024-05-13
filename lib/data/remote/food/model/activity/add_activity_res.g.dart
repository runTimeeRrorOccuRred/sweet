// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_activity_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddActivityReqImpl _$$AddActivityReqImplFromJson(Map<String, dynamic> json) =>
    _$AddActivityReqImpl(
      activityName: json['activityName'] as String?,
      activityType: json['activityType'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      types: json['types'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$$AddActivityReqImplToJson(
        _$AddActivityReqImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'activityType': instance.activityType,
      'me': parseDouble(instance.me),
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'types': instance.types,
      'level': instance.level,
    };

_$AddActivityResImpl _$$AddActivityResImplFromJson(Map<String, dynamic> json) =>
    _$AddActivityResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddActivityResImplToJson(
        _$AddActivityResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      activityName: json['activityName'] as String?,
      id: json['id'] as String?,
      activityType: json['activityType'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      calories: (json['calories'] as num?)?.toInt(),
      types: json['types'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'id': instance.id,
      'activityType': instance.activityType,
      'duration': instance.duration,
      'calories': instance.calories,
      'types': instance.types,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
