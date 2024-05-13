// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sleep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSleepReqImpl _$$UserSleepReqImplFromJson(Map<String, dynamic> json) =>
    _$UserSleepReqImpl(
      waterIntake: json['waterIntake'] as String?,
      sleep: json['sleep'] as String?,
      mode: json['mode'] as String?,
    );

Map<String, dynamic> _$$UserSleepReqImplToJson(_$UserSleepReqImpl instance) =>
    <String, dynamic>{
      'waterIntake': instance.waterIntake,
      'sleep': instance.sleep,
      'mode': instance.mode,
    };

_$UserSleepResImpl _$$UserSleepResImplFromJson(Map<String, dynamic> json) =>
    _$UserSleepResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserSleepResImplToJson(_$UserSleepResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      waterIntake: json['waterIntake'] as String?,
      sleep: json['sleep'] as String?,
      mode: json['mode'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['_id'] as String?,
      userHealthData: json['userHealthData'] as List<dynamic>?,
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
      'waterIntake': instance.waterIntake,
      'sleep': instance.sleep,
      'mode': instance.mode,
      'isEmailVerified': instance.isEmailVerified,
      '_id': instance.id,
      'userHealthData': instance.userHealthData,
      'expiaryDate': instance.expiaryDate,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
