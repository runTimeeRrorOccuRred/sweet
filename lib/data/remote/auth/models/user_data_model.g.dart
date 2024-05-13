// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataResImpl _$$UserDataResImplFromJson(Map<String, dynamic> json) =>
    _$UserDataResImpl(
      code: json['code'] as String?,
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataResImplToJson(_$UserDataResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      waterIntake: json['waterIntake'] as String?,
      sleep: json['sleep'] as String?,
      mode: json['mode'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      phone: json['phone'] as String?,
      region: json['region'] as String?,
      countryCode: json['countryCode'] as String?,
      location: json['location'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      unitOfHeight: json['unitOfHeight'] as String?,
      unitOfweight: json['unitOfweight'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      image: json['image'] as String?,
      healthData: (json['healthData'] as List<dynamic>?)
          ?.map((e) => HealthDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'waterIntake': instance.waterIntake,
      'sleep': instance.sleep,
      'mode': instance.mode,
      'isEmailVerified': instance.isEmailVerified,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'region': instance.region,
      'countryCode': instance.countryCode,
      'location': instance.location,
      'dob': instance.dob,
      'gender': instance.gender,
      'height': instance.height,
      'unitOfHeight': instance.unitOfHeight,
      'unitOfweight': instance.unitOfweight,
      'weight': instance.weight,
      'image': instance.image,
      'healthData': instance.healthData,
    };

_$HealthDatumImpl _$$HealthDatumImplFromJson(Map<String, dynamic> json) =>
    _$HealthDatumImpl(
      id: json['_id'] as String?,
      answear: (json['answear'] as List<dynamic>?)
          ?.map((e) => Answear.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      questionId: json['questionId'] as String?,
      question: json['question'] as String?,
      subQuestion: json['subQuestion'] as String?,
    );

Map<String, dynamic> _$$HealthDatumImplToJson(_$HealthDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'answear': instance.answear,
      'userId': instance.userId,
      'questionId': instance.questionId,
      'question': instance.question,
      'subQuestion': instance.subQuestion,
    };

_$AnswearImpl _$$AnswearImplFromJson(Map<String, dynamic> json) =>
    _$AnswearImpl(
      answerId: json['answerId'] as String?,
      answer: json['answer'] as String?,
      subAnswer: json['subAnswer'] as String?,
    );

Map<String, dynamic> _$$AnswearImplToJson(_$AnswearImpl instance) =>
    <String, dynamic>{
      'answerId': instance.answerId,
      'answer': instance.answer,
      'subAnswer': instance.subAnswer,
    };
