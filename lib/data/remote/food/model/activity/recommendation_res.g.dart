// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendedResImpl _$$RecommendedResImplFromJson(Map<String, dynamic> json) =>
    _$RecommendedResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecommendedResImplToJson(
        _$RecommendedResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      activityType: json['activityType'] == null
          ? null
          : ActivityType.fromJson(json['activityType'] as Map<String, dynamic>),
      activity: json['activity'] as String?,
      slug: json['slug'] as String?,
      me: parseDouble(json['me']),
      calories: parseDouble(json['calories']),
      duration: parseInteger(json['duration']),
      level: json['level'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'activityType': instance.activityType,
      'activity': instance.activity,
      'slug': instance.slug,
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
