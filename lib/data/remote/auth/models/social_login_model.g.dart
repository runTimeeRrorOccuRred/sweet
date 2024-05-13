// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialLoginRequestModelImpl _$$SocialLoginRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginRequestModelImpl(
      uid: json['uid'] as String?,
      loginType: json['loginType'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$SocialLoginRequestModelImplToJson(
        _$SocialLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'loginType': instance.loginType,
      'email': instance.email,
    };

_$SocialLoginResponseModelImpl _$$SocialLoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialLoginResponseModelImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocialLoginResponseModelImplToJson(
        _$SocialLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      otp: json['otp'],
      role: json['role'] as String?,
      waterIntake: json['waterIntake'] as String?,
      sleep: json['sleep'] as String?,
      mode: json['mode'] as String?,
      image: json['image'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['_id'] as String?,
      uid: json['uid'] as String?,
      newuser: json['newuser'] as bool?,
      loginType: json['loginType'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'role': instance.role,
      'waterIntake': instance.waterIntake,
      'sleep': instance.sleep,
      'mode': instance.mode,
      'image': instance.image,
      'isEmailVerified': instance.isEmailVerified,
      '_id': instance.id,
      'uid': instance.uid,
      'newuser': instance.newuser,
      'loginType': instance.loginType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'tokens': instance.tokens,
    };

_$TokensImpl _$$TokensImplFromJson(Map<String, dynamic> json) => _$TokensImpl(
      access: json['access'] == null
          ? null
          : Access.fromJson(json['access'] as Map<String, dynamic>),
      refresh: json['refresh'] == null
          ? null
          : Access.fromJson(json['refresh'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokensImplToJson(_$TokensImpl instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

_$AccessImpl _$$AccessImplFromJson(Map<String, dynamic> json) => _$AccessImpl(
      token: json['token'] as String?,
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String),
    );

Map<String, dynamic> _$$AccessImplToJson(_$AccessImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires?.toIso8601String(),
    };
