// To parse this JSON data, do
//
//     final userDataRes = userDataResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

UserDataRes userDataResFromJson(String str) =>
    UserDataRes.fromJson(json.decode(str));

String userDataResToJson(UserDataRes data) => json.encode(data.toJson());

@freezed
class UserDataRes with _$UserDataRes {
  const factory UserDataRes({
    String? code,
    bool? status,
    String? message,
    Data? data,
  }) = _UserDataRes;

  factory UserDataRes.fromJson(Map<String, dynamic> json) =>
      _$UserDataResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: '_id') String? id,
    String? role,
    String? waterIntake,
    String? sleep,
    String? mode,
    bool? isEmailVerified,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? region,
    String? countryCode,
    String? location,
    String? dob,
    String? gender,
    double? height,
    String? unitOfHeight,
    String? unitOfweight,
    int? weight,
    String? image,
    List<HealthDatum>? healthData,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class HealthDatum with _$HealthDatum {
  const factory HealthDatum({
    @JsonKey(name: '_id') String? id,
    List<Answear>? answear,
    String? userId,
    String? questionId,
    String? question,
    String? subQuestion,
  }) = _HealthDatum;

  factory HealthDatum.fromJson(Map<String, dynamic> json) =>
      _$HealthDatumFromJson(json);
}

@freezed
class Answear with _$Answear {
  const factory Answear({
    String? answerId,
    String? answer,
    String? subAnswer,
  }) = _Answear;

  factory Answear.fromJson(Map<String, dynamic> json) =>
      _$AnswearFromJson(json);
}
