// To parse this JSON data, do
//
//     final registrationRequest = registrationRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

//! REGISTRATION REQUEST

RegisterReq registerReqFromJson(String str) =>
    RegisterReq.fromJson(json.decode(str));

String registerReqToJson(RegisterReq data) => json.encode(data.toJson());

@freezed
class RegisterReq with _$RegisterReq {
  const factory RegisterReq({
    String? name,
    String? email,
    String? password,
    String? phone,
    String? region,
    String? countryCode,
    String? location,
  }) = _RegisterReq;

  factory RegisterReq.fromJson(Map<String, dynamic> json) =>
      _$RegisterReqFromJson(json);
}

//! REGISTRATION RESPONSE

RegisterRes registerResFromJson(String str) =>
    RegisterRes.fromJson(json.decode(str));

String registerResToJson(RegisterRes data) => json.encode(data.toJson());

@freezed
class RegisterRes with _$RegisterRes {
  const factory RegisterRes({
    String? code,
    bool? status,
    String? message,
    Data? data,
  }) = _RegisterRes;

  factory RegisterRes.fromJson(Map<String, dynamic> json) =>
      _$RegisterResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic otp,
    String? role,
    List<dynamic>? userHealthData,
    bool? isEmailVerified,
    String? id,
    String? expiaryDate,
    String? name,
    String? email,
    String? password,
    String? phone,
    String? region,
    String? countryCode,
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
