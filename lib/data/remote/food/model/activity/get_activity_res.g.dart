// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_activity_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetActivityResImpl _$$GetActivityResImplFromJson(Map<String, dynamic> json) =>
    _$GetActivityResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetActivityResImplToJson(
        _$GetActivityResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      activityName: json['activityName'] as String?,
      activityType: json['activityType'] == null
          ? null
          : ActivityType.fromJson(json['activityType'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      types: json['types'] as String?,
      level: json['level'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'activityName': instance.activityName,
      'activityType': instance.activityType,
      'userId': instance.userId,
      'me': parseDouble(instance.me),
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'types': instance.types,
      'level': instance.level,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ActivityTypeImpl _$$ActivityTypeImplFromJson(Map<String, dynamic> json) =>
    _$ActivityTypeImpl(
      id: json['_id'] as String?,
      types: json['types'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$ActivityTypeImplToJson(_$ActivityTypeImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'types': instance.types,
      'icon': instance.icon,
    };

_$GetActivityReqImpl _$$GetActivityReqImplFromJson(Map<String, dynamic> json) =>
    _$GetActivityReqImpl(
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$GetActivityReqImplToJson(
        _$GetActivityReqImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
    };
