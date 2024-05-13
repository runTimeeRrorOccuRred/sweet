// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodAllergie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodAllergieModelImpl _$$FoodAllergieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodAllergieModelImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FoodAllergieModelImplToJson(
        _$FoodAllergieModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      question: json['question'] as String?,
      subQuestion: json['subQuestion'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
      answersData: (json['answersData'] as List<dynamic>?)
          ?.map((e) => AnswersDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'subQuestion': instance.subQuestion,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
      'answersData': instance.answersData,
    };

_$AnswersDatumImpl _$$AnswersDatumImplFromJson(Map<String, dynamic> json) =>
    _$AnswersDatumImpl(
      id: json['_id'] as String?,
      subAnswer: json['subAnswer'] as String?,
      questionId: json['questionId'] as String?,
      answer: json['answer'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$AnswersDatumImplToJson(_$AnswersDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subAnswer': instance.subAnswer,
      'questionId': instance.questionId,
      'answer': instance.answer,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'slug': instance.slug,
    };
