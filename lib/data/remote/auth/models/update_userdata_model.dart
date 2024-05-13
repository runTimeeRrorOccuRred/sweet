// To parse this JSON data, do
//
//     final UpdateUserDataRes = UpdateUserDataResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_userdata_model.freezed.dart';
part 'update_userdata_model.g.dart';

//! req
UpdateUserDataReq UpdateUserDataReqFromJson(String str) =>
    UpdateUserDataReq.fromJson(json.decode(str));

String UpdateUserDataReqToJson(UpdateUserDataReq data) =>
    json.encode(data.toJson());

@freezed
class UpdateUserDataReq with _$UpdateUserDataReq {
  const factory UpdateUserDataReq({
    String? name,
    String? phone,
    String? region,
    String? countryCode,
    String? dob,
    String? height,
    String? unitOfHeight,
    String? weight,
    String? unitOfweight,
    String? gender,
    String? image, 
    List<UserHealthDatum>? userHealthData,
  }) = _UpdateUserDataReq;

  factory UpdateUserDataReq.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDataReqFromJson(json);
}

@freezed
class UserHealthDatum with _$UserHealthDatum {
  const factory UserHealthDatum({
    String? questionId,
    List<Answeari>? answear,
  }) = _UserHealthDatum;

  factory UserHealthDatum.fromJson(Map<String, dynamic> json) =>
      _$UserHealthDatumFromJson(json);
}

@freezed
class Answeari with _$Answeari {
  const factory Answeari({
    String? answerId,
    String? answer,
    String? subAnswer,
    String? slug,
    String? image,
  }) = _Answeari;

  factory Answeari.fromJson(Map<String, dynamic> json) =>
      _$AnsweariFromJson(json);
}

//! res

UpdateUserDataRes UpdateUserDataResFromJson(String str) =>
    UpdateUserDataRes.fromJson(json.decode(str));

String UpdateUserDataResToJson(UpdateUserDataRes data) =>
    json.encode(data.toJson());

@freezed
class UpdateUserDataRes with _$UpdateUserDataRes {
  const factory UpdateUserDataRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _UpdateUserDataRes;

  factory UpdateUserDataRes.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserDataResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? role,
    bool? isEmailVerified,
    String? id,
    String? name,
    String? email,
    String? phone,
    String? region,
    String? countryCode,
    String? location,
    String? createdAt,
    String? updatedAt,
    String? dob,
    double? height,
    String? unitOfHeight,
    int? weight,
    String? unitOfweight,
    String? gender,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
