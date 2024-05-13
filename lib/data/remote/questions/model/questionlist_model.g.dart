// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionListResImpl _$$QuestionListResImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionListResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionListResImplToJson(
        _$QuestionListResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      subQuestion: json['subQuestion'] as String?,
      id: json['_id'] as String?,
      question: json['question'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'subQuestion': instance.subQuestion,
      '_id': instance.id,
      'question': instance.question,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
