// To parse this JSON data, do
//
//     final updateQuestionRes = updateQuestionResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_question_model.freezed.dart';
part 'update_question_model.g.dart';

//! req

List<UpdateQuestionReq> updateQuestionReqFromJson(String str) =>
    List<UpdateQuestionReq>.from(
      json.decode(str).map((x) => UpdateQuestionReq.fromJson(x)),
    );

String updateQuestionReqToJson(List<UpdateQuestionReq> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class UpdateQuestionReq with _$UpdateQuestionReq {
  const factory UpdateQuestionReq({
    String? questionId,
    List<Answear>? answear,
  }) = _UpdateQuestionReq;

  factory UpdateQuestionReq.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuestionReqFromJson(json);
}

@freezed
class Answear with _$Answear {
  const factory Answear({
    String? answerId,
    String? answer,
    String? subAnswer,
    String? slug,
    String? image,
  }) = _Answear;

  factory Answear.fromJson(Map<String, dynamic> json) =>
      _$AnswearFromJson(json);
}

//! res

UpdateQuestionRes updateQuestionResFromJson(String str) =>
    UpdateQuestionRes.fromJson(json.decode(str));

String updateQuestionResToJson(UpdateQuestionRes data) =>
    json.encode(data.toJson());

@freezed
class UpdateQuestionRes with _$UpdateQuestionRes {
  const factory UpdateQuestionRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _UpdateQuestionRes;

  factory UpdateQuestionRes.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuestionResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? ok,
    List<dynamic>? writeErrors,
    List<dynamic>? writeConcernErrors,
    List<dynamic>? insertedIds,
    List<Upserted>? upserted,
    LastOp? lastOp,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class LastOp with _$LastOp {
  const factory LastOp({
    String? ts,
    int? t,
  }) = _LastOp;

  factory LastOp.fromJson(Map<String, dynamic> json) => _$LastOpFromJson(json);
}

@freezed
class Upserted with _$Upserted {
  const factory Upserted({
    int? index,
    String? id,
  }) = _Upserted;

  factory Upserted.fromJson(Map<String, dynamic> json) =>
      _$UpsertedFromJson(json);
}
