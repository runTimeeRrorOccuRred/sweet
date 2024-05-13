// To parse this JSON data, do
//
//     final recommendedRes = recommendedResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'recommendation_res.freezed.dart';
part 'recommendation_res.g.dart';

RecommendedRes recommendedResFromJson(String str) =>
    RecommendedRes.fromJson(json.decode(str));

String recommendedResToJson(RecommendedRes data) => json.encode(data.toJson());

@freezed
class RecommendedRes with _$RecommendedRes {
  const factory RecommendedRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _RecommendedRes;

  factory RecommendedRes.fromJson(Map<String, dynamic> json) =>
      _$RecommendedResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: '_id') String? id,
    ActivityType? activityType,
    String? activity,
    String? slug,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? level,
    String? type,
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
