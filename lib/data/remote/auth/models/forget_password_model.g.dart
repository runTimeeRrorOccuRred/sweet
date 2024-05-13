// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotSendOtpReqImpl _$$ForgotSendOtpReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotSendOtpReqImpl(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ForgotSendOtpReqImplToJson(
        _$ForgotSendOtpReqImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$ForgotSendOtpResImpl _$$ForgotSendOtpResImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotSendOtpResImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotSendOtpResImplToJson(
        _$ForgotSendOtpResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      userHealthData: json['userHealthData'] as List<dynamic>?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['id'] as String?,
      expiaryDate: json['expiaryDate'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'userHealthData': instance.userHealthData,
      'isEmailVerified': instance.isEmailVerified,
      'id': instance.id,
      'expiaryDate': instance.expiaryDate,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ForgotVerifyOtpReqImpl _$$ForgotVerifyOtpReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotVerifyOtpReqImpl(
      email: json['email'] as String?,
      otp: (json['otp'] as num?)?.toInt(),
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$ForgotVerifyOtpReqImplToJson(
        _$ForgotVerifyOtpReqImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
      'password': instance.password,
    };

_$ForgotVerifyOtpResImpl _$$ForgotVerifyOtpResImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotVerifyOtpResImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Datai.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotVerifyOtpResImplToJson(
        _$ForgotVerifyOtpResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataiImpl _$$DataiImplFromJson(Map<String, dynamic> json) => _$DataiImpl(
      role: json['role'] as String?,
      userHealthData: json['userHealthData'] as List<dynamic>?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['id'] as String?,
      expiaryDate: json['expiaryDate'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataiImplToJson(_$DataiImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'userHealthData': instance.userHealthData,
      'isEmailVerified': instance.isEmailVerified,
      'id': instance.id,
      'expiaryDate': instance.expiaryDate,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
