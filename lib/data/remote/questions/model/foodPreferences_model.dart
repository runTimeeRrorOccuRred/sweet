// To parse this JSON data, do
//
//     final foodPreferencesModel = foodPreferencesModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'foodPreferences_model.freezed.dart';
part 'foodPreferences_model.g.dart';

FoodPreferencesRes foodPreferencesResFromJson(String str) =>
    FoodPreferencesRes.fromJson(json.decode(str));

String foodPreferencesResToJson(FoodPreferencesRes data) =>
    json.encode(data.toJson());

@freezed
class FoodPreferencesRes with _$FoodPreferencesRes {
  const factory FoodPreferencesRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _FoodPreferencesRes;

  factory FoodPreferencesRes.fromJson(Map<String, dynamic> json) =>
      _$FoodPreferencesResFromJson(json);
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
