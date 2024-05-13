import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

//! LOGIN REQUEST
LoginReq loginReqFromJson(String str) => LoginReq.fromJson(json.decode(str));
String loginReqToJson(LoginReq data) => json.encode(data.toJson());

@freezed
class LoginReq with _$LoginReq {
  const factory LoginReq({
    String? email,
    String? password,
  }) = _LoginReq;

  factory LoginReq.fromJson(Map<String, dynamic> json) =>
      _$LoginReqFromJson(json);
}

//! LOGIN RESPONSE

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));
String loginResToJson(LoginRes data) => json.encode(data.toJson());

@freezed
class LoginRes with _$LoginRes {
  const factory LoginRes({
    String? code,
    bool? status,
    String? message,
    Data? data,
  }) = _LoginRes;

  factory LoginRes.fromJson(Map<String, dynamic> json) =>
      _$LoginResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic otp,
    String? role,
    List<dynamic>? userHealthData,
    bool? isEmailVerified,
    @JsonKey(name: "_id") String? id,
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
