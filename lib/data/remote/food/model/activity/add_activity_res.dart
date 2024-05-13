// To parse this JSON data, do
//
//     final addActivityReq = addActivityReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'add_activity_res.freezed.dart';
part 'add_activity_res.g.dart';

List<AddActivityReq> addActivityReqFromJson(String str) =>
    List<AddActivityReq>.from(
      json.decode(str).map((x) => AddActivityReq.fromJson(x)),
    );

String addActivityReqToJson(List<AddActivityReq> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AddActivityReq with _$AddActivityReq {
  const factory AddActivityReq({
    String? activityName,
    String? activityType,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? types,
    String? level,
  }) = _AddActivityReq;

  factory AddActivityReq.fromJson(Map<String, dynamic> json) =>
      _$AddActivityReqFromJson(json);
}

AddActivityRes addActivityResFromJson(String str) =>
    AddActivityRes.fromJson(json.decode(str));

String addActivityResToJson(AddActivityRes data) => json.encode(data.toJson());

@freezed
class AddActivityRes with _$AddActivityRes {
  const factory AddActivityRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _AddActivityRes;

  factory AddActivityRes.fromJson(Map<String, dynamic> json) =>
      _$AddActivityResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? activityName,
    String? id,
    String? activityType,
    int? duration,
    int? calories,
    String? types,
    String? userId,
    String? createdAt,
    String? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
