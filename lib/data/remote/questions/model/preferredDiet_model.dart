// To parse this JSON data, do
//
//     final preferdDietRes = preferdDietResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferredDiet_model.freezed.dart';
part 'preferredDiet_model.g.dart';

PreferdDietRes preferdDietResFromJson(String str) =>
    PreferdDietRes.fromJson(json.decode(str));

String preferdDietResToJson(PreferdDietRes data) => json.encode(data.toJson());

@freezed
class PreferdDietRes with _$PreferdDietRes {
  const factory PreferdDietRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _PreferdDietRes;

  factory PreferdDietRes.fromJson(Map<String, dynamic> json) =>
      _$PreferdDietResFromJson(json);
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
