// To parse this JSON data, do
//
//     final updateActivityReq = updateActivityReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'update_activity_res.freezed.dart';
part 'update_activity_res.g.dart';

UpdateActivityReq updateActivityReqFromJson(String str) =>
    UpdateActivityReq.fromJson(json.decode(str));

String updateActivityReqToJson(UpdateActivityReq data) =>
    json.encode(data.toJson());

@freezed
class UpdateActivityReq with _$UpdateActivityReq {
  const factory UpdateActivityReq({
    String? activityName,
    String? activityType,
    String? userId,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? level,
    String? types,
  }) = _UpdateActivityReq;

  factory UpdateActivityReq.fromJson(Map<String, dynamic> json) =>
      _$UpdateActivityReqFromJson(json);
}

// To parse this JSON data, do
//
//     final updateActivityRes = updateActivityResFromJson(jsonString);

UpdateActivityRes updateActivityResFromJson(String str) =>
    UpdateActivityRes.fromJson(json.decode(str));

String updateActivityResToJson(UpdateActivityRes data) =>
    json.encode(data.toJson());

@freezed
class UpdateActivityRes with _$UpdateActivityRes {
  const factory UpdateActivityRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _UpdateActivityRes;

  factory UpdateActivityRes.fromJson(Map<String, dynamic> json) =>
      _$UpdateActivityResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? activityName,
    String? id,
    String? activityType,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? types,
    String? userId,
    String? createdAt,
    String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
