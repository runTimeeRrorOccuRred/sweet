// To parse this JSON data, do
//
//     final searchFoodReq = searchFoodReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_food_res.freezed.dart';
part 'search_food_res.g.dart';

SearchFoodReq searchFoodReqFromJson(String str) =>
    SearchFoodReq.fromJson(json.decode(str));

String searchFoodReqToJson(SearchFoodReq data) => json.encode(data.toJson());

@freezed
class SearchFoodReq with _$SearchFoodReq {
  const factory SearchFoodReq({
    String? foodName,
  }) = _SearchFoodReq;

  factory SearchFoodReq.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodReqFromJson(json);
}

SearchFoodRes searchFoodResFromJson(String str) =>
    SearchFoodRes.fromJson(json.decode(str));

String searchFoodResToJson(SearchFoodRes data) => json.encode(data.toJson());

@freezed
class SearchFoodRes with _$SearchFoodRes {
  const factory SearchFoodRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _SearchFoodRes;

  factory SearchFoodRes.fromJson(Map<String, dynamic> json) =>
      _$SearchFoodResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    List<BrandedFood>? consumptionHistory,
    List<BrandedFood>? commonlyTrackedFood,
    List<BrandedFood>? brandedFood,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class BrandedFood with _$BrandedFood {
  const factory BrandedFood({
    @JsonKey(name: "_id") String? id,
    List<dynamic>? ingradients,
    String? foodName,
    String? image,
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
  }) = _BrandedFood;

  factory BrandedFood.fromJson(Map<String, dynamic> json) =>
      _$BrandedFoodFromJson(json);
}
