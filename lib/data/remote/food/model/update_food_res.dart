// To parse this JSON data, do
//
//     final updateFoodReq = updateFoodReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_food_res.freezed.dart';
part 'update_food_res.g.dart';

//! update food req
UpdateFoodReq updateFoodReqFromJson(String str) =>
    UpdateFoodReq.fromJson(json.decode(str));

String updateFoodReqToJson(UpdateFoodReq data) => json.encode(data.toJson());

@freezed
class UpdateFoodReq with _$UpdateFoodReq {
  const factory UpdateFoodReq({
    String? foodName,
    String? servingSize,
    String? servingType,
    double? carbohydrate,
    double? protein,
    double? fat,
    double? calories,
    String? mealType,
  }) = _UpdateFoodReq;

  factory UpdateFoodReq.fromJson(Map<String, dynamic> json) =>
      _$UpdateFoodReqFromJson(json);
}

//! update food res

UpdateFoodRes updateFoodResFromJson(String str) =>
    UpdateFoodRes.fromJson(json.decode(str));

String updateFoodResToJson(UpdateFoodRes data) => json.encode(data.toJson());

@freezed
class UpdateFoodRes with _$UpdateFoodRes {
  const factory UpdateFoodRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _UpdateFoodRes;

  factory UpdateFoodRes.fromJson(Map<String, dynamic> json) =>
      _$UpdateFoodResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<dynamic>? ingradients,
    @JsonKey(name: "_id") String? id,
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
