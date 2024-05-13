// To parse this JSON data, do
//
//     final activeActionRes = activeActionResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activeAction_model.freezed.dart';
part 'activeAction_model.g.dart';

ActiveActionRes activeActionResFromJson(String str) =>
    ActiveActionRes.fromJson(json.decode(str));

String activeActionResToJson(ActiveActionRes data) =>
    json.encode(data.toJson());

@freezed
class ActiveActionRes with _$ActiveActionRes {
  const factory ActiveActionRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _ActiveActionRes;

  factory ActiveActionRes.fromJson(Map<String, dynamic> json) =>
      _$ActiveActionResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    String? question,
    String? subQuestion,
    String? userId,
    String? createdAt,
    String? updatedAt,
    String? slug,
    List<AnswersDatum>? answersData,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class AnswersDatum with _$AnswersDatum {
  const factory AnswersDatum({
    @JsonKey(name: "_id") String? id,
    String? subAnswer,
    String? questionId,
    String? answer,
    String? userId,
    String? createdAt,
    String? updatedAt,
    String? slug,
  }) = _AnswersDatum;

  factory AnswersDatum.fromJson(Map<String, dynamic> json) =>
      _$AnswersDatumFromJson(json);
}
