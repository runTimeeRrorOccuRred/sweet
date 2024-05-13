// To parse this JSON data, do
//
//     final healthGoalRes = healthGoalResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'healthGoal_model.freezed.dart';
part 'healthGoal_model.g.dart';

HealthGoalRes healthGoalResFromJson(String str) =>
    HealthGoalRes.fromJson(json.decode(str));

String healthGoalResToJson(HealthGoalRes data) => json.encode(data.toJson());

@freezed
class HealthGoalRes with _$HealthGoalRes {
  const factory HealthGoalRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _HealthGoalRes;

  factory HealthGoalRes.fromJson(Map<String, dynamic> json) =>
      _$HealthGoalResFromJson(json);
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
