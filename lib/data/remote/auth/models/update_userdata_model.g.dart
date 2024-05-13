// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_userdata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserDataReqImpl _$$UpdateUserDataReqImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserDataReqImpl(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      region: json['region'] as String?,
      countryCode: json['countryCode'] as String?,
      dob: json['dob'] as String?,
      height: json['height'] as String?,
      unitOfHeight: json['unitOfHeight'] as String?,
      weight: json['weight'] as String?,
      unitOfweight: json['unitOfweight'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      userHealthData: (json['userHealthData'] as List<dynamic>?)
          ?.map((e) => UserHealthDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpdateUserDataReqImplToJson(
        _$UpdateUserDataReqImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'region': instance.region,
      'countryCode': instance.countryCode,
      'dob': instance.dob,
      'height': instance.height,
      'unitOfHeight': instance.unitOfHeight,
      'weight': instance.weight,
      'unitOfweight': instance.unitOfweight,
      'gender': instance.gender,
      'image': instance.image,
      'userHealthData': instance.userHealthData,
    };

_$UserHealthDatumImpl _$$UserHealthDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHealthDatumImpl(
      questionId: json['questionId'] as String?,
      answear: (json['answear'] as List<dynamic>?)
          ?.map((e) => Answeari.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserHealthDatumImplToJson(
        _$UserHealthDatumImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answear': instance.answear,
    };

_$AnsweariImpl _$$AnsweariImplFromJson(Map<String, dynamic> json) =>
    _$AnsweariImpl(
      answerId: json['answerId'] as String?,
      answer: json['answer'] as String?,
      subAnswer: json['subAnswer'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$AnsweariImplToJson(_$AnsweariImpl instance) =>
    <String, dynamic>{
      'answerId': instance.answerId,
      'answer': instance.answer,
      'subAnswer': instance.subAnswer,
      'slug': instance.slug,
      'image': instance.image,
    };

_$UpdateUserDataResImpl _$$UpdateUserDataResImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserDataResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserDataResImplToJson(
        _$UpdateUserDataResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      region: json['region'] as String?,
      countryCode: json['countryCode'] as String?,
      location: json['location'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      dob: json['dob'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      unitOfHeight: json['unitOfHeight'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      unitOfweight: json['unitOfweight'] as String?,
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'region': instance.region,
      'countryCode': instance.countryCode,
      'location': instance.location,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'dob': instance.dob,
      'height': instance.height,
      'unitOfHeight': instance.unitOfHeight,
      'weight': instance.weight,
      'unitOfweight': instance.unitOfweight,
      'gender': instance.gender,
    };
