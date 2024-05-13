// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight_recomendation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeightRecomendationResImpl _$$WeightRecomendationResImplFromJson(
        Map<String, dynamic> json) =>
    _$WeightRecomendationResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeightRecomendationResImplToJson(
        _$WeightRecomendationResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      healthGoalOptionChoosen: json['healthGoalOptionChoosen'] as bool?,
      idleWeight: json['idleWeight'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'healthGoalOptionChoosen': instance.healthGoalOptionChoosen,
      'idleWeight': instance.idleWeight,
    };
