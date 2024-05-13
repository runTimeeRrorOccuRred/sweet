// To parse this JSON data, do
//
//     final getFoodlistRes = getFoodlistResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_food_list_res.freezed.dart';
part 'get_food_list_res.g.dart';

//! get food response
GetFoodlistRes getFoodlistResFromJson(String str) =>
    GetFoodlistRes.fromJson(json.decode(str));

String getFoodlistResToJson(GetFoodlistRes data) => json.encode(data.toJson());

@freezed
class GetFoodlistRes with _$GetFoodlistRes {
  const factory GetFoodlistRes({
    int? code,
    String? message,
    bool? status,
    List<GetFoodlistResDatum>? data,
  }) = _GetFoodlistRes;

  factory GetFoodlistRes.fromJson(Map<String, dynamic> json) =>
      _$GetFoodlistResFromJson(json);
}

@freezed
class GetFoodlistResDatum with _$GetFoodlistResDatum {
  const factory GetFoodlistResDatum({
    String? mealType,
    List<DatumDatum>? data,
    String? image,
  }) = _GetFoodlistResDatum;

  factory GetFoodlistResDatum.fromJson(Map<String, dynamic> json) =>
      _$GetFoodlistResDatumFromJson(json);
}

@freezed
class DatumDatum with _$DatumDatum {
  const factory DatumDatum({
    @JsonKey(name: '_id') String? id,
    List<dynamic>? ingradients,
    String? foodName,
    String? servingSize,
    String? servingType,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? calories,
    String? mealType,
    String? types,
    String? userId,
    String? createdAt,
    String? updatedAt,
    String? image,
  }) = _DatumDatum;

  factory DatumDatum.fromJson(Map<String, dynamic> json) =>
      _$DatumDatumFromJson(json);
}
