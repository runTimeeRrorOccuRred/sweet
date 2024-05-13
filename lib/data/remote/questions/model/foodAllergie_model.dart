// To parse this JSON data, do
//
//     final foodAllergieModel = foodAllergieModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'foodAllergie_model.freezed.dart';
part 'foodAllergie_model.g.dart';

FoodAllergieModel foodAllergieModelFromJson(String str) =>
    FoodAllergieModel.fromJson(json.decode(str));

String foodAllergieModelToJson(FoodAllergieModel data) =>
    json.encode(data.toJson());

@freezed
class FoodAllergieModel with _$FoodAllergieModel {
  const factory FoodAllergieModel({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _FoodAllergieModel;

  factory FoodAllergieModel.fromJson(Map<String, dynamic> json) =>
      _$FoodAllergieModelFromJson(json);
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
