// To parse this JSON data, do
//
//     final dailyEatingRoutineRes = dailyEatingRoutineResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'dailyEatingRoutine_model.freezed.dart';
part 'dailyEatingRoutine_model.g.dart';

DailyEatingRoutineRes dailyEatingRoutineResFromJson(String str) =>
    DailyEatingRoutineRes.fromJson(json.decode(str));

String dailyEatingRoutineResToJson(DailyEatingRoutineRes data) =>
    json.encode(data.toJson());

@freezed
class DailyEatingRoutineRes with _$DailyEatingRoutineRes {
  const factory DailyEatingRoutineRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _DailyEatingRoutineRes;

  factory DailyEatingRoutineRes.fromJson(Map<String, dynamic> json) =>
      _$DailyEatingRoutineResFromJson(json);
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
    String? icon,
  }) = _AnswersDatum;

  factory AnswersDatum.fromJson(Map<String, dynamic> json) =>
      _$AnswersDatumFromJson(json);
}
