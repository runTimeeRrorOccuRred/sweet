// To parse this JSON data, do
//
//     final caloryCalculationReq = caloryCalculationReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'calory_calculation_res.freezed.dart';
part 'calory_calculation_res.g.dart';

CaloryCalculationReq caloryCalculationReqFromJson(String str) =>
    CaloryCalculationReq.fromJson(json.decode(str));

String caloryCalculationReqToJson(CaloryCalculationReq data) =>
    json.encode(data.toJson());

@freezed
class CaloryCalculationReq with _$CaloryCalculationReq {
  const factory CaloryCalculationReq({
    double? me,
    String? level,
    int? time,
  }) = _CaloryCalculationReq;

  factory CaloryCalculationReq.fromJson(Map<String, dynamic> json) =>
      _$CaloryCalculationReqFromJson(json);
}

// To parse this JSON data, do
//
//     final caloryCalculationRes = caloryCalculationResFromJson(jsonString);

CaloryCalculationRes caloryCalculationResFromJson(String str) =>
    CaloryCalculationRes.fromJson(json.decode(str));

String caloryCalculationResToJson(CaloryCalculationRes data) =>
    json.encode(data.toJson());

@freezed
class CaloryCalculationRes with _$CaloryCalculationRes {
  const factory CaloryCalculationRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _CaloryCalculationRes;

  factory CaloryCalculationRes.fromJson(Map<String, dynamic> json) =>
      _$CaloryCalculationResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    double? calories,
    int? duration,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
