// To parse this JSON data, do
//
//     final getActivityTypeRes = getActivityTypeResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_activitytype_res.freezed.dart';
part 'get_activitytype_res.g.dart';

GetActivityTypeRes getActivityTypeResFromJson(String str) =>
    GetActivityTypeRes.fromJson(json.decode(str));

String getActivityTypeResToJson(GetActivityTypeRes data) =>
    json.encode(data.toJson());

@freezed
class GetActivityTypeRes with _$GetActivityTypeRes {
  const factory GetActivityTypeRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _GetActivityTypeRes;

  factory GetActivityTypeRes.fromJson(Map<String, dynamic> json) =>
      _$GetActivityTypeResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    String? types,
    String? icon,
    String? createdAt,
    String? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
