// To parse this JSON data, do
//
//     final getActivityRes = getActivityResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'get_activity_res.freezed.dart';
part 'get_activity_res.g.dart';

//! response
GetActivityRes getActivityResFromJson(String str) =>
    GetActivityRes.fromJson(json.decode(str));

String getActivityResToJson(GetActivityRes data) => json.encode(data.toJson());

@freezed
class GetActivityRes with _$GetActivityRes {
  const factory GetActivityRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _GetActivityRes;

  factory GetActivityRes.fromJson(Map<String, dynamic> json) =>
      _$GetActivityResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: '_id') String? id,
    String? activityName,
    ActivityType? activityType,
    String? userId,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? types,
    String? level,
    String? createdAt,
    String? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class ActivityType with _$ActivityType {
  const factory ActivityType({
    @JsonKey(name: '_id') String? id,
    String? types,
    String? icon,
  }) = _ActivityType;

  factory ActivityType.fromJson(Map<String, dynamic> json) =>
      _$ActivityTypeFromJson(json);
}

//! request
GetActivityReq getActivityReqFromJson(String str) =>
    GetActivityReq.fromJson(json.decode(str));

String getActivityReqToJson(GetActivityReq data) => json.encode(data.toJson());

@freezed
class GetActivityReq with _$GetActivityReq {
  const factory GetActivityReq({
    String? date,
  }) = _GetActivityReq;

  factory GetActivityReq.fromJson(Map<String, dynamic> json) =>
      _$GetActivityReqFromJson(json);
}
