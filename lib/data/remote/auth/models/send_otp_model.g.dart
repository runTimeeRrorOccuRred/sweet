// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpReqImpl _$$SendOtpReqImplFromJson(Map<String, dynamic> json) =>
    _$SendOtpReqImpl(
      email: json['email'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$SendOtpReqImplToJson(_$SendOtpReqImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
    };

_$SendOtpResImpl _$$SendOtpResImplFromJson(Map<String, dynamic> json) =>
    _$SendOtpResImpl(
      code: (json['code'] as num?)?.toInt(),
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendOtpResImplToJson(_$SendOtpResImpl instance) =>
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
