// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_list_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFoodlistResImpl _$$GetFoodlistResImplFromJson(Map<String, dynamic> json) =>
    _$GetFoodlistResImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetFoodlistResDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetFoodlistResImplToJson(
        _$GetFoodlistResImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

_$GetFoodlistResDatumImpl _$$GetFoodlistResDatumImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFoodlistResDatumImpl(
      mealType: json['mealType'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DatumDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$GetFoodlistResDatumImplToJson(
        _$GetFoodlistResDatumImpl instance) =>
    <String, dynamic>{
      'mealType': instance.mealType,
      'data': instance.data,
      'image': instance.image,
    };

_$DatumDatumImpl _$$DatumDatumImplFromJson(Map<String, dynamic> json) =>
    _$DatumDatumImpl(
      id: json['_id'] as String?,
      ingradients: json['ingradients'] as List<dynamic>?,
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

Map<String, dynamic> _$$DatumDatumImplToJson(_$DatumDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ingradients': instance.ingradients,
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
