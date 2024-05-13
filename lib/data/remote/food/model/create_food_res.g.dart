// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_food_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFoodReqImpl _$$CreateFoodReqImplFromJson(Map<String, dynamic> json) =>
    _$CreateFoodReqImpl(
      foodName: json['foodName'] as String?,
      imag: json['imag'] as String?,
      servingSize: json['servingSize'] as String?,
      servingType: json['servingType'] as String?,
      carbohydrate: json['carbohydrate'] as String?,
      protein: json['protein'] as String?,
      fat: json['fat'] as String?,
      calories: json['calories'] as String?,
      mealType: json['mealType'] as String?,
      types: json['types'] as String?,
      ingredients: json['ingredients'] as List<dynamic>?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CreateFoodReqImplToJson(_$CreateFoodReqImpl instance) =>
    <String, dynamic>{
      'foodName': instance.foodName,
      'imag': instance.imag,
      'servingSize': instance.servingSize,
      'servingType': instance.servingType,
      'carbohydrate': instance.carbohydrate,
      'protein': instance.protein,
      'fat': instance.fat,
      'calories': instance.calories,
      'mealType': instance.mealType,
      'types': instance.types,
      'ingredients': instance.ingredients,
      'image': instance.image,
    };

_$CreateFoodResImpl _$$CreateFoodResImplFromJson(Map<String, dynamic> json) =>
    _$CreateFoodResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateFoodResImplToJson(_$CreateFoodResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
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
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
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
      'image': instance.image,
    };
