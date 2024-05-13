import 'dart:convert';

// To parse this JSON data, do
//
//     final createFoodReq = createFoodReqFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_food_res.freezed.dart';
part 'create_food_res.g.dart';

//! create food req

List<CreateFoodReq> createFoodReqFromJson(String str) =>
    List<CreateFoodReq>.from(
      json.decode(str).map((x) => CreateFoodReq.fromJson(x)),
    );

String createFoodReqToJson(List<CreateFoodReq> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CreateFoodReq with _$CreateFoodReq {
  const factory CreateFoodReq({
    String? foodName,
    String? imag,
    String? servingSize,
    String? servingType,
    String? carbohydrate,
    String? protein,
    String? fat,
    String? calories,
    String? mealType,
    String? types,
    List<dynamic>? ingredients,
    String? image,
  }) = _CreateFoodReq;

  factory CreateFoodReq.fromJson(Map<String, dynamic> json) =>
      _$CreateFoodReqFromJson(json);
}

// To parse this JSON data, do
//
//     final createFoodRes = createFoodResFromJson(jsonString);

//! response

CreateFoodRes createFoodResFromJson(String str) =>
    CreateFoodRes.fromJson(json.decode(str));

String createFoodResToJson(CreateFoodRes data) => json.encode(data.toJson());

@freezed
class CreateFoodRes with _$CreateFoodRes {
  const factory CreateFoodRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _CreateFoodRes;

  factory CreateFoodRes.fromJson(Map<String, dynamic> json) =>
      _$CreateFoodResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
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
    String? image,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
