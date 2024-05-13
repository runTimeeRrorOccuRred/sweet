// To parse this JSON data, do
//
//     final healthConditionRes = healthConditionResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'healthCondition_model.freezed.dart';
part 'healthCondition_model.g.dart';

HealthConditionRes healthConditionResFromJson(String str) =>
    HealthConditionRes.fromJson(json.decode(str));

String healthConditionResToJson(HealthConditionRes data) =>
    json.encode(data.toJson());

@freezed
class HealthConditionRes with _$HealthConditionRes {
  const factory HealthConditionRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _HealthConditionRes;

  factory HealthConditionRes.fromJson(Map<String, dynamic> json) =>
      _$HealthConditionResFromJson(json);
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
