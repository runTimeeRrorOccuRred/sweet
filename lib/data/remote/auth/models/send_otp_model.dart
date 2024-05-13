// To parse this JSON data, do
//
//     final sendOtpRes = sendOtpResFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_otp_model.freezed.dart';
part 'send_otp_model.g.dart';

//! SEND OTP REQUEST

SendOtpReq sendOtpReqFromJson(String str) =>
    SendOtpReq.fromJson(json.decode(str));

String sendOtpReqToJson(SendOtpReq data) => json.encode(data.toJson());

@freezed
class SendOtpReq with _$SendOtpReq {
  const factory SendOtpReq({
    String? email,
    String? role,
  }) = _SendOtpReq;

  factory SendOtpReq.fromJson(Map<String, dynamic> json) =>
      _$SendOtpReqFromJson(json);
}

//! SEND OTP RESPONSE

SendOtpRes sendOtpResFromJson(String str) =>
    SendOtpRes.fromJson(json.decode(str));

String sendOtpResToJson(SendOtpRes data) => json.encode(data.toJson());

@freezed
class SendOtpRes with _$SendOtpRes {
  const factory SendOtpRes({
    int? code,
    bool? status,
    String? message,
    Data? data,
  }) = _SendOtpRes;

  factory SendOtpRes.fromJson(Map<String, dynamic> json) =>
      _$SendOtpResFromJson(json);
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
