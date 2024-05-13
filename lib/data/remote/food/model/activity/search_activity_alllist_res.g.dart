// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_activity_alllist_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchActivityAllListResImpl _$$SearchActivityAllListResImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchActivityAllListResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchActivityAllListResImplToJson(
        _$SearchActivityAllListResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      activityTypeListed: (json['activityTypeListed'] as List<dynamic>?)
          ?.map((e) => ActivityTypeListed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'activityTypeListed': instance.activityTypeListed,
    };

_$ActivityTypeListedImpl _$$ActivityTypeListedImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityTypeListedImpl(
      id: json['_id'] as String?,
      activityType: json['activityType'] == null
          ? null
          : ActivityType.fromJson(json['activityType'] as Map<String, dynamic>),
      activity: json['activity'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      level: json['level'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ActivityTypeListedImplToJson(
        _$ActivityTypeListedImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'activityType': instance.activityType,
      'activity': instance.activity,
      'me': parseDouble(instance.me),
      'calories': parseDouble(instance.calories),
      'duration': parseInteger(instance.duration),
      'level': instance.level,
      'type': instance.type,
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

_$SearchActivityAllListReqImpl _$$SearchActivityAllListReqImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchActivityAllListReqImpl(
      activityType: json['activityType'] as String?,
      activitykey: json['activitykey'] as String?,
    );

Map<String, dynamic> _$$SearchActivityAllListReqImplToJson(
        _$SearchActivityAllListReqImpl instance) =>
    <String, dynamic>{
      'activityType': instance.activityType,
      'activitykey': instance.activitykey,
    };
