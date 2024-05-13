// To parse this JSON data, do
//
//     final userSleepReq = userSleepReqFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_sleep_model.freezed.dart';
part 'update_sleep_model.g.dart';

//! response model
UserSleepReq userSleepReqFromJson(String str) =>
    UserSleepReq.fromJson(json.decode(str));

String userSleepReqToJson(UserSleepReq data) => json.encode(data.toJson());

@freezed
class UserSleepReq with _$UserSleepReq {
  const factory UserSleepReq({
    String? waterIntake,
    String? sleep,
    String? mode,
  }) = _UserSleepReq;

  factory UserSleepReq.fromJson(Map<String, dynamic> json) =>
      _$UserSleepReqFromJson(json);
}

//! response model

UserSleepRes userSleepResFromJson(String str) =>
    UserSleepRes.fromJson(json.decode(str));

String userSleepResToJson(UserSleepRes data) => json.encode(data.toJson());

@freezed
class UserSleepRes with _$UserSleepRes {
  const factory UserSleepRes({
    int? code,
    String? message,
    bool? status,
    Data? data,
  }) = _UserSleepRes;

  factory UserSleepRes.fromJson(Map<String, dynamic> json) =>
      _$UserSleepResFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? role,
    String? waterIntake,
    String? sleep,
    String? mode,
    bool? isEmailVerified,
    @JsonKey(name: "_id") String? id,
    List<dynamic>? userHealthData,
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
