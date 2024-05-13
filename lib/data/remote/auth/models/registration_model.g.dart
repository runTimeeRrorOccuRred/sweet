// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterReqImpl _$$RegisterReqImplFromJson(Map<String, dynamic> json) =>
    _$RegisterReqImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      region: json['region'] as String?,
      countryCode: json['countryCode'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$RegisterReqImplToJson(_$RegisterReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'region': instance.region,
      'countryCode': instance.countryCode,
      'location': instance.location,
    };

_$RegisterResImpl _$$RegisterResImplFromJson(Map<String, dynamic> json) =>
    _$RegisterResImpl(
      code: json['code'] as String?,
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterResImplToJson(_$RegisterResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      otp: json['otp'],
      role: json['role'] as String?,
      userHealthData: json['userHealthData'] as List<dynamic>?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['id'] as String?,
      expiaryDate: json['expiaryDate'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      region: json['region'] as String?,
      countryCode: json['countryCode'] as String?,
      location: json['location'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'role': instance.role,
      'userHealthData': instance.userHealthData,
      'isEmailVerified': instance.isEmailVerified,
      'id': instance.id,
      'expiaryDate': instance.expiaryDate,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'region': instance.region,
      'countryCode': instance.countryCode,
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
