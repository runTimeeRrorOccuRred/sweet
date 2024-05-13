// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionReqImpl _$$UpdateQuestionReqImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionReqImpl(
      questionId: json['questionId'] as String?,
      answear: (json['answear'] as List<dynamic>?)
          ?.map((e) => Answear.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpdateQuestionReqImplToJson(
        _$UpdateQuestionReqImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answear': instance.answear,
    };

_$AnswearImpl _$$AnswearImplFromJson(Map<String, dynamic> json) =>
    _$AnswearImpl(
      answerId: json['answerId'] as String?,
      answer: json['answer'] as String?,
      subAnswer: json['subAnswer'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$AnswearImplToJson(_$AnswearImpl instance) =>
    <String, dynamic>{
      'answerId': instance.answerId,
      'answer': instance.answer,
      'subAnswer': instance.subAnswer,
      'slug': instance.slug,
      'image': instance.image,
    };

_$UpdateQuestionResImpl _$$UpdateQuestionResImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateQuestionResImplToJson(
        _$UpdateQuestionResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ok: (json['ok'] as num?)?.toInt(),
      writeErrors: json['writeErrors'] as List<dynamic>?,
      writeConcernErrors: json['writeConcernErrors'] as List<dynamic>?,
      insertedIds: json['insertedIds'] as List<dynamic>?,
      upserted: (json['upserted'] as List<dynamic>?)
          ?.map((e) => Upserted.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastOp: json['lastOp'] == null
          ? null
          : LastOp.fromJson(json['lastOp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'writeErrors': instance.writeErrors,
      'writeConcernErrors': instance.writeConcernErrors,
      'insertedIds': instance.insertedIds,
      'upserted': instance.upserted,
      'lastOp': instance.lastOp,
    };

_$LastOpImpl _$$LastOpImplFromJson(Map<String, dynamic> json) => _$LastOpImpl(
      ts: json['ts'] as String?,
      t: (json['t'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LastOpImplToJson(_$LastOpImpl instance) =>
    <String, dynamic>{
      'ts': instance.ts,
      't': instance.t,
    };

_$UpsertedImpl _$$UpsertedImplFromJson(Map<String, dynamic> json) =>
    _$UpsertedImpl(
      index: (json['index'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$UpsertedImplToJson(_$UpsertedImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'id': instance.id,
    };
