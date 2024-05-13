// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpReqImpl _$$VerifyOtpReqImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpReqImpl(
      email: json['email'] as String?,
      otp: (json['otp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VerifyOtpReqImplToJson(_$VerifyOtpReqImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };

_$VerifyOtpResImpl _$$VerifyOtpResImplFromJson(Map<String, dynamic> json) =>
    _$VerifyOtpResImpl(
      code: json['code'] as String?,
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyOtpResImplToJson(_$VerifyOtpResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      isEmailVerified: json['isEmailVerified'] as bool?,
      otp: (json['otp'] as num?)?.toInt(),
      role: json['role'] as String?,
      userHealthData: json['userHealthData'] as List<dynamic>?,
      id: json['_id'] as String?,
      expiaryDate: json['expiaryDate'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'isEmailVerified': instance.isEmailVerified,
      'otp': instance.otp,
      'role': instance.role,
      'userHealthData': instance.userHealthData,
      '_id': instance.id,
      'expiaryDate': instance.expiaryDate,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
      expires: json['expires'] as String?,
    );

Map<String, dynamic> _$$AccessImplToJson(_$AccessImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires,
    };
