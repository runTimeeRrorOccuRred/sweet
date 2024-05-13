// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_food_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateFoodReqImpl _$$UpdateFoodReqImplFromJson(Map<String, dynamic> json) =>
    _$UpdateFoodReqImpl(
      foodName: json['foodName'] as String?,
      servingSize: json['servingSize'] as String?,
      servingType: json['servingType'] as String?,
      carbohydrate: (json['carbohydrate'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      calories: (json['calories'] as num?)?.toDouble(),
      mealType: json['mealType'] as String?,
    );

Map<String, dynamic> _$$UpdateFoodReqImplToJson(_$UpdateFoodReqImpl instance) =>
    <String, dynamic>{
      'foodName': instance.foodName,
      'servingSize': instance.servingSize,
      'servingType': instance.servingType,
      'carbohydrate': instance.carbohydrate,
      'protein': instance.protein,
      'fat': instance.fat,
      'calories': instance.calories,
      'mealType': instance.mealType,
    };

_$UpdateFoodResImpl _$$UpdateFoodResImplFromJson(Map<String, dynamic> json) =>
    _$UpdateFoodResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateFoodResImplToJson(_$UpdateFoodResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ingradients: json['ingradients'] as List<dynamic>?,
      id: json['_id'] as String?,
      foodName: json['foodName'] as String?,
      servingSize: json['servingSize'] as String?,
      servingType: json['servingType'] as String?,
      carbohydrate: (json['carbohydrate'] as num?)?.toDouble(),
      protein: (json['protein'] as num?)?.toDouble(),
      fat: (json['fat'] as num?)?.toDouble(),
      calories: (json['calories'] as num?)?.toDouble(),
      mealType: json['mealType'] as String?,
      types: json['types'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ingradients': instance.ingradients,
      '_id': instance.id,
      'foodName': instance.foodName,
      'servingSize': instance.servingSize,
      'servingType': instance.servingType,
      'carbohydrate': instance.carbohydrate,
      'protein': instance.protein,
      'fat': instance.fat,
      'calories': instance.calories,
      'mealType': instance.mealType,
      'types': instance.types,
      'userId': instance.userId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
