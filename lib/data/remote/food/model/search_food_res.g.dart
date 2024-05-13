// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_food_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFoodReqImpl _$$SearchFoodReqImplFromJson(Map<String, dynamic> json) =>
    _$SearchFoodReqImpl(
      foodName: json['foodName'] as String?,
    );

Map<String, dynamic> _$$SearchFoodReqImplToJson(_$SearchFoodReqImpl instance) =>
    <String, dynamic>{
      'foodName': instance.foodName,
    };

_$SearchFoodResImpl _$$SearchFoodResImplFromJson(Map<String, dynamic> json) =>
    _$SearchFoodResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchFoodResImplToJson(_$SearchFoodResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      consumptionHistory: (json['consumptionHistory'] as List<dynamic>?)
          ?.map((e) => BrandedFood.fromJson(e as Map<String, dynamic>))
          .toList(),
      commonlyTrackedFood: (json['commonlyTrackedFood'] as List<dynamic>?)
          ?.map((e) => BrandedFood.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandedFood: (json['brandedFood'] as List<dynamic>?)
          ?.map((e) => BrandedFood.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'consumptionHistory': instance.consumptionHistory,
      'commonlyTrackedFood': instance.commonlyTrackedFood,
      'brandedFood': instance.brandedFood,
    };

_$BrandedFoodImpl _$$BrandedFoodImplFromJson(Map<String, dynamic> json) =>
    _$BrandedFoodImpl(
      id: json['_id'] as String?,
      ingradients: json['ingradients'] as List<dynamic>?,
      foodName: json['foodName'] as String?,
      image: json['image'] as String?,
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

Map<String, dynamic> _$$BrandedFoodImplToJson(_$BrandedFoodImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ingradients': instance.ingradients,
      'foodName': instance.foodName,
      'image': instance.image,
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
