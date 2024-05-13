// To parse this JSON data, do
//
//     final forgetPasswordRequest = forgetPasswordRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_model.freezed.dart';
part 'forget_password_model.g.dart';

// ! FORGOT PASSWORD REQUEST (SEND OTP)
ForgotSendOtpReq forgotSendOtpReqFromJson(String str) =>
    ForgotSendOtpReq.fromJson(json.decode(str));

String forgotSendOtpReqToJson(ForgotSendOtpReq data) =>
    json.encode(data.toJson());

@freezed
class ForgotSendOtpReq with _$ForgotSendOtpReq {
  const factory ForgotSendOtpReq({
    String? email,
  }) = _ForgotSendOtpReq;

  factory ForgotSendOtpReq.fromJson(Map<String, dynamic> json) =>
      _$ForgotSendOtpReqFromJson(json);
}

// ! FORGOT PASSWORD RESPONSE (SEND OTP)

ForgotSendOtpRes forgotSendOtpResFromJson(String str) =>
    ForgotSendOtpRes.fromJson(json.decode(str));

String forgotSendOtpResToJson(ForgotSendOtpRes data) =>
    json.encode(data.toJson());

@freezed
class ForgotSendOtpRes with _$ForgotSendOtpRes {
  const factory ForgotSendOtpRes({
    int? code,
    bool? status,
    String? message,
    Data? data,
  }) = _ForgotSendOtpRes;

  factory ForgotSendOtpRes.fromJson(Map<String, dynamic> json) =>
      _$ForgotSendOtpResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? role,
    List<dynamic>? userHealthData,
    bool? isEmailVerified,
    String? id,
    String? expiaryDate,
    String? name,
    String? email,
    String? phone,
    String? location,
    String? createdAt,
    String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

// ! FORGOT PASSWORD REQUEST (VERIFY OTP)

ForgotVerifyOtpReq forgotVerifyOtpReqFromJson(String str) =>
    ForgotVerifyOtpReq.fromJson(json.decode(str));

String forgotVerifyOtpReqToJson(ForgotVerifyOtpReq data) =>
    json.encode(data.toJson());

@freezed
class ForgotVerifyOtpReq with _$ForgotVerifyOtpReq {
  const factory ForgotVerifyOtpReq({
    String? email,
    int? otp,
    String? password,
  }) = _ForgotVerifyOtpReq;

  factory ForgotVerifyOtpReq.fromJson(Map<String, dynamic> json) =>
      _$ForgotVerifyOtpReqFromJson(json);
}

// ! FORGOT PASSWORD RESPONSE (VERIFY OTP)

ForgotVerifyOtpRes forgotVerifyOtpResFromJson(String str) =>
    ForgotVerifyOtpRes.fromJson(json.decode(str));

String forgotVerifyOtpResToJson(ForgotVerifyOtpRes data) =>
    json.encode(data.toJson());

@freezed
class ForgotVerifyOtpRes with _$ForgotVerifyOtpRes {
  const factory ForgotVerifyOtpRes({
    int? code,
    bool? status,
    String? message,
    Datai? data,
  }) = _ForgotVerifyOtpRes;

  factory ForgotVerifyOtpRes.fromJson(Map<String, dynamic> json) =>
      _$ForgotVerifyOtpResFromJson(json);
}

@freezed
class Datai with _$Datai {
  const factory Datai({
    String? role,
    List<dynamic>? userHealthData,
    bool? isEmailVerified,
    String? id,
    String? expiaryDate,
    String? name,
    String? email,
    String? phone,
    String? location,
    String? createdAt,
    String? updatedAt,
  }) = _Datai;

  factory Datai.fromJson(Map<String, dynamic> json) => _$DataiFromJson(json);
}
