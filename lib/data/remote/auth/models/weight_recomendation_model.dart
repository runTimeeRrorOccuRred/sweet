// To parse this JSON data, do
//
//     final weightRecomendationRes = weightRecomendationResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight_recomendation_model.freezed.dart';
part 'weight_recomendation_model.g.dart';

WeightRecomendationRes weightRecomendationResFromJson(String str) =>
    WeightRecomendationRes.fromJson(json.decode(str));

String weightRecomendationResToJson(WeightRecomendationRes data) =>
    json.encode(data.toJson());

@freezed
class WeightRecomendationRes with _$WeightRecomendationRes {
  const factory WeightRecomendationRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _WeightRecomendationRes;

  factory WeightRecomendationRes.fromJson(Map<String, dynamic> json) =>
      _$WeightRecomendationResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    bool? healthGoalOptionChoosen,
    bool? idleWeight,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
