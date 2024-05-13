// To parse this JSON data, do
//
//     final verifyOtpRequest = verifyOtpRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_model.freezed.dart';
part 'verify_otp_model.g.dart';

//! VERIFY OTP REQUEST

VerifyOtpReq verifyOtpReqFromJson(String str) =>
    VerifyOtpReq.fromJson(json.decode(str));

String verifyOtpReqToJson(VerifyOtpReq data) => json.encode(data.toJson());

@freezed
class VerifyOtpReq with _$VerifyOtpReq {
  const factory VerifyOtpReq({
    String? email,
    int? otp,
  }) = _VerifyOtpReq;

  factory VerifyOtpReq.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpReqFromJson(json);
}

//! VERIFY OTP RESPONSE

VerifyOtpRes verifyOtpResFromJson(String str) =>
    VerifyOtpRes.fromJson(json.decode(str));

String verifyOtpResToJson(VerifyOtpRes data) => json.encode(data.toJson());

@freezed
class VerifyOtpRes with _$VerifyOtpRes {
  const factory VerifyOtpRes({
    String? code,
    bool? status,
    String? message,
    Data? data,
  }) = _VerifyOtpRes;

  factory VerifyOtpRes.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    bool? isEmailVerified,
    int? otp,
    String? role,
    List<dynamic>? userHealthData,
    @JsonKey(name: "_id") String? id,
    String? expiaryDate,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? location,
    String? createdAt,
    String? updatedAt,
    Tokens? tokens,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    Access? access,
    Access? refresh,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

@freezed
class Access with _$Access {
  const factory Access({
    String? token,
    String? expires,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
}
