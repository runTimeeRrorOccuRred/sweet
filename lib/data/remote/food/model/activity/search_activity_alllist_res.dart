// To parse this JSON data, do
//
//     final searchActivityAllList = searchActivityAllListFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'search_activity_alllist_res.freezed.dart';
part 'search_activity_alllist_res.g.dart';

SearchActivityAllListRes searchActivityAllListResFromJson(String str) =>
    SearchActivityAllListRes.fromJson(json.decode(str));

String searchActivityAllListResToJson(SearchActivityAllListRes data) =>
    json.encode(data.toJson());

@freezed
class SearchActivityAllListRes with _$SearchActivityAllListRes {
  const factory SearchActivityAllListRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _SearchActivityAllListRes;

  factory SearchActivityAllListRes.fromJson(Map<String, dynamic> json) =>
      _$SearchActivityAllListResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<ActivityTypeListed>? activityTypeListed,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ActivityTypeListed with _$ActivityTypeListed {
  const factory ActivityTypeListed({
    @JsonKey(name: '_id') String? id,
    ActivityType? activityType,
    String? activity,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? level,
    String? type,
  }) = _ActivityTypeListed;

  factory ActivityTypeListed.fromJson(Map<String, dynamic> json) =>
      _$ActivityTypeListedFromJson(json);
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

// To parse this JSON data, do
//
//     final searchActivityAllListReq = searchActivityAllListReqFromJson(jsonString);

SearchActivityAllListReq searchActivityAllListReqFromJson(String str) =>
    SearchActivityAllListReq.fromJson(json.decode(str));

String searchActivityAllListReqToJson(SearchActivityAllListReq data) =>
    json.encode(data.toJson());

@freezed
class SearchActivityAllListReq with _$SearchActivityAllListReq {
  const factory SearchActivityAllListReq({
    String? activityType,
    String? activitykey,
  }) = _SearchActivityAllListReq;

  factory SearchActivityAllListReq.fromJson(Map<String, dynamic> json) =>
      _$SearchActivityAllListReqFromJson(json);
}
