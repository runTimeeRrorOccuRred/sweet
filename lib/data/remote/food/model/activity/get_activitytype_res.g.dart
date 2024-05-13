// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_activitytype_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetActivityTypeResImpl _$$GetActivityTypeResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetActivityTypeResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetActivityTypeResImplToJson(
        _$GetActivityTypeResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      types: json['types'] as String?,
      icon: json['icon'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'types': instance.types,
      'icon': instance.icon,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
