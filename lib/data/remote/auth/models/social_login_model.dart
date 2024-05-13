// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'social_login_model.freezed.dart';
part 'social_login_model.g.dart';


//========= REQUEST =========//
SocialLoginRequestModel socialLoginRequestModelFromJson(String str) => SocialLoginRequestModel.fromJson(json.decode(str));
String socialLoginRequestModelToJson(SocialLoginRequestModel data) => json.encode(data.toJson());

@freezed
class SocialLoginRequestModel with _$SocialLoginRequestModel {
    const factory SocialLoginRequestModel({
        @JsonKey(name: "uid")
        String? uid,
        @JsonKey(name: "loginType")
        String? loginType,
        @JsonKey(name: "email")
        String? email,
    }) = _SocialLoginRequestModel;

    factory SocialLoginRequestModel.fromJson(Map<String, dynamic> json) => _$SocialLoginRequestModelFromJson(json);
}


//========= RESPONSE =========//
SocialLoginResponseModel socialLoginResponseModelFromJson(String str) => SocialLoginResponseModel.fromJson(json.decode(str));
String socialLoginResponseModelToJson(SocialLoginResponseModel data) => json.encode(data.toJson());

@freezed
class SocialLoginResponseModel with _$SocialLoginResponseModel {
    const factory SocialLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "status")
        bool? status,
        @JsonKey(name: "data")
        Data? data,
    }) = _SocialLoginResponseModel;

    factory SocialLoginResponseModel.fromJson(Map<String, dynamic> json) => _$SocialLoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "waterIntake")
        String? waterIntake,
        @JsonKey(name: "sleep")
        String? sleep,
        @JsonKey(name: "mode")
        String? mode,
        @JsonKey(name: "image")
        String? image,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "uid")
        String? uid,
        @JsonKey(name: "newuser")
        bool? newuser,
        @JsonKey(name: "loginType")
        String? loginType,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "__v")
        int? v,
        @JsonKey(name: "tokens")
        Tokens? tokens,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Tokens with _$Tokens {
    const factory Tokens({
        @JsonKey(name: "access")
        Access? access,
        @JsonKey(name: "refresh")
        Access? refresh,
    }) = _Tokens;

    factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

@freezed
class Access with _$Access {
    const factory Access({
        @JsonKey(name: "token")
        String? token,
        @JsonKey(name: "expires")
        DateTime? expires,
    }) = _Access;

    factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
}
