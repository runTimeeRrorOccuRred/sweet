// To parse this JSON data, do
//
//     final questionListRes = questionListResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionlist_model.freezed.dart';
part 'questionlist_model.g.dart';

QuestionListRes questionListResFromJson(String str) =>
    QuestionListRes.fromJson(json.decode(str));

String questionListResToJson(QuestionListRes data) =>
    json.encode(data.toJson());

@freezed
class QuestionListRes with _$QuestionListRes {
  const factory QuestionListRes({
    int? code,
    String? message,
    bool? status,
    List<Datum>? data,
  }) = _QuestionListRes;

  factory QuestionListRes.fromJson(Map<String, dynamic> json) =>
      _$QuestionListResFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? subQuestion,
    @JsonKey(name: "_id") String? id,
    String? question,
    String? userId,
    String? createdAt,
    String? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
