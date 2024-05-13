// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calory_calculation_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaloryCalculationReqImpl _$$CaloryCalculationReqImplFromJson(
        Map<String, dynamic> json) =>
    _$CaloryCalculationReqImpl(
      me: (json['me'] as num?)?.toDouble(),
      level: json['level'] as String?,
      time: (json['time'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CaloryCalculationReqImplToJson(
        _$CaloryCalculationReqImpl instance) =>
    <String, dynamic>{
      'me': instance.me,
      'level': instance.level,
      'time': instance.time,
    };

_$CaloryCalculationResImpl _$$CaloryCalculationResImplFromJson(
        Map<String, dynamic> json) =>
    _$CaloryCalculationResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaloryCalculationResImplToJson(
        _$CaloryCalculationResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      calories: (json['calories'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'duration': instance.duration,
    };
