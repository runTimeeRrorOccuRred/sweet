// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_food_list_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFoodlistRes _$GetFoodlistResFromJson(Map<String, dynamic> json) {
  return _GetFoodlistRes.fromJson(json);
}

/// @nodoc
mixin _$GetFoodlistRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<GetFoodlistResDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFoodlistResCopyWith<GetFoodlistRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFoodlistResCopyWith<$Res> {
  factory $GetFoodlistResCopyWith(
          GetFoodlistRes value, $Res Function(GetFoodlistRes) then) =
      _$GetFoodlistResCopyWithImpl<$Res, GetFoodlistRes>;
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? status,
      List<GetFoodlistResDatum>? data});
}

/// @nodoc
class _$GetFoodlistResCopyWithImpl<$Res, $Val extends GetFoodlistRes>
    implements $GetFoodlistResCopyWith<$Res> {
  _$GetFoodlistResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetFoodlistResDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFoodlistResImplCopyWith<$Res>
    implements $GetFoodlistResCopyWith<$Res> {
  factory _$$GetFoodlistResImplCopyWith(_$GetFoodlistResImpl value,
          $Res Function(_$GetFoodlistResImpl) then) =
      __$$GetFoodlistResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code,
      String? message,
      bool? status,
      List<GetFoodlistResDatum>? data});
}

/// @nodoc
class __$$GetFoodlistResImplCopyWithImpl<$Res>
    extends _$GetFoodlistResCopyWithImpl<$Res, _$GetFoodlistResImpl>
    implements _$$GetFoodlistResImplCopyWith<$Res> {
  __$$GetFoodlistResImplCopyWithImpl(
      _$GetFoodlistResImpl _value, $Res Function(_$GetFoodlistResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetFoodlistResImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetFoodlistResDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFoodlistResImpl implements _GetFoodlistRes {
  const _$GetFoodlistResImpl(
      {this.code,
      this.message,
      this.status,
      final List<GetFoodlistResDatum>? data})
      : _data = data;

  factory _$GetFoodlistResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFoodlistResImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? status;
  final List<GetFoodlistResDatum>? _data;
  @override
  List<GetFoodlistResDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetFoodlistRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFoodlistResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, status,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFoodlistResImplCopyWith<_$GetFoodlistResImpl> get copyWith =>
      __$$GetFoodlistResImplCopyWithImpl<_$GetFoodlistResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFoodlistResImplToJson(
      this,
    );
  }
}

abstract class _GetFoodlistRes implements GetFoodlistRes {
  const factory _GetFoodlistRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<GetFoodlistResDatum>? data}) = _$GetFoodlistResImpl;

  factory _GetFoodlistRes.fromJson(Map<String, dynamic> json) =
      _$GetFoodlistResImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<GetFoodlistResDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetFoodlistResImplCopyWith<_$GetFoodlistResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetFoodlistResDatum _$GetFoodlistResDatumFromJson(Map<String, dynamic> json) {
  return _GetFoodlistResDatum.fromJson(json);
}

/// @nodoc
mixin _$GetFoodlistResDatum {
  String? get mealType => throw _privateConstructorUsedError;
  List<DatumDatum>? get data => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFoodlistResDatumCopyWith<GetFoodlistResDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFoodlistResDatumCopyWith<$Res> {
  factory $GetFoodlistResDatumCopyWith(
          GetFoodlistResDatum value, $Res Function(GetFoodlistResDatum) then) =
      _$GetFoodlistResDatumCopyWithImpl<$Res, GetFoodlistResDatum>;
  @useResult
  $Res call({String? mealType, List<DatumDatum>? data, String? image});
}

/// @nodoc
class _$GetFoodlistResDatumCopyWithImpl<$Res, $Val extends GetFoodlistResDatum>
    implements $GetFoodlistResDatumCopyWith<$Res> {
  _$GetFoodlistResDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = freezed,
    Object? data = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      mealType: freezed == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumDatum>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFoodlistResDatumImplCopyWith<$Res>
    implements $GetFoodlistResDatumCopyWith<$Res> {
  factory _$$GetFoodlistResDatumImplCopyWith(_$GetFoodlistResDatumImpl value,
          $Res Function(_$GetFoodlistResDatumImpl) then) =
      __$$GetFoodlistResDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mealType, List<DatumDatum>? data, String? image});
}

/// @nodoc
class __$$GetFoodlistResDatumImplCopyWithImpl<$Res>
    extends _$GetFoodlistResDatumCopyWithImpl<$Res, _$GetFoodlistResDatumImpl>
    implements _$$GetFoodlistResDatumImplCopyWith<$Res> {
  __$$GetFoodlistResDatumImplCopyWithImpl(_$GetFoodlistResDatumImpl _value,
      $Res Function(_$GetFoodlistResDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealType = freezed,
    Object? data = freezed,
    Object? image = freezed,
  }) {
    return _then(_$GetFoodlistResDatumImpl(
      mealType: freezed == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DatumDatum>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFoodlistResDatumImpl implements _GetFoodlistResDatum {
  const _$GetFoodlistResDatumImpl(
      {this.mealType, final List<DatumDatum>? data, this.image})
      : _data = data;

  factory _$GetFoodlistResDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFoodlistResDatumImplFromJson(json);

  @override
  final String? mealType;
  final List<DatumDatum>? _data;
  @override
  List<DatumDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? image;

  @override
  String toString() {
    return 'GetFoodlistResDatum(mealType: $mealType, data: $data, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFoodlistResDatumImpl &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mealType, const DeepCollectionEquality().hash(_data), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFoodlistResDatumImplCopyWith<_$GetFoodlistResDatumImpl> get copyWith =>
      __$$GetFoodlistResDatumImplCopyWithImpl<_$GetFoodlistResDatumImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFoodlistResDatumImplToJson(
      this,
    );
  }
}

abstract class _GetFoodlistResDatum implements GetFoodlistResDatum {
  const factory _GetFoodlistResDatum(
      {final String? mealType,
      final List<DatumDatum>? data,
      final String? image}) = _$GetFoodlistResDatumImpl;

  factory _GetFoodlistResDatum.fromJson(Map<String, dynamic> json) =
      _$GetFoodlistResDatumImpl.fromJson;

  @override
  String? get mealType;
  @override
  List<DatumDatum>? get data;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$GetFoodlistResDatumImplCopyWith<_$GetFoodlistResDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DatumDatum _$DatumDatumFromJson(Map<String, dynamic> json) {
  return _DatumDatum.fromJson(json);
}

/// @nodoc
mixin _$DatumDatum {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  List<dynamic>? get ingradients => throw _privateConstructorUsedError;
  String? get foodName => throw _privateConstructorUsedError;
  String? get servingSize => throw _privateConstructorUsedError;
  String? get servingType => throw _privateConstructorUsedError;
  double? get carbohydrate => throw _privateConstructorUsedError;
  double? get protein => throw _privateConstructorUsedError;
  double? get fat => throw _privateConstructorUsedError;
  double? get calories => throw _privateConstructorUsedError;
  String? get mealType => throw _privateConstructorUsedError;
  String? get types => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumDatumCopyWith<DatumDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumDatumCopyWith<$Res> {
  factory $DatumDatumCopyWith(
          DatumDatum value, $Res Function(DatumDatum) then) =
      _$DatumDatumCopyWithImpl<$Res, DatumDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<dynamic>? ingradients,
      String? foodName,
      String? servingSize,
      String? servingType,
      double? carbohydrate,
      double? protein,
      double? fat,
      double? calories,
      String? mealType,
      String? types,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? image});
}

/// @nodoc
class _$DatumDatumCopyWithImpl<$Res, $Val extends DatumDatum>
    implements $DatumDatumCopyWith<$Res> {
  _$DatumDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ingradients = freezed,
    Object? foodName = freezed,
    Object? servingSize = freezed,
    Object? servingType = freezed,
    Object? carbohydrate = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? calories = freezed,
    Object? mealType = freezed,
    Object? types = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ingradients: freezed == ingradients
          ? _value.ingradients
          : ingradients // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSize: freezed == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      servingType: freezed == servingType
          ? _value.servingType
          : servingType // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      mealType: freezed == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumDatumImplCopyWith<$Res>
    implements $DatumDatumCopyWith<$Res> {
  factory _$$DatumDatumImplCopyWith(
          _$DatumDatumImpl value, $Res Function(_$DatumDatumImpl) then) =
      __$$DatumDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<dynamic>? ingradients,
      String? foodName,
      String? servingSize,
      String? servingType,
      double? carbohydrate,
      double? protein,
      double? fat,
      double? calories,
      String? mealType,
      String? types,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? image});
}

/// @nodoc
class __$$DatumDatumImplCopyWithImpl<$Res>
    extends _$DatumDatumCopyWithImpl<$Res, _$DatumDatumImpl>
    implements _$$DatumDatumImplCopyWith<$Res> {
  __$$DatumDatumImplCopyWithImpl(
      _$DatumDatumImpl _value, $Res Function(_$DatumDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ingradients = freezed,
    Object? foodName = freezed,
    Object? servingSize = freezed,
    Object? servingType = freezed,
    Object? carbohydrate = freezed,
    Object? protein = freezed,
    Object? fat = freezed,
    Object? calories = freezed,
    Object? mealType = freezed,
    Object? types = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? image = freezed,
  }) {
    return _then(_$DatumDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ingradients: freezed == ingradients
          ? _value._ingradients
          : ingradients // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSize: freezed == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      servingType: freezed == servingType
          ? _value.servingType
          : servingType // ignore: cast_nullable_to_non_nullable
              as String?,
      carbohydrate: freezed == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as double?,
      protein: freezed == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double?,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      mealType: freezed == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumDatumImpl implements _DatumDatum {
  const _$DatumDatumImpl(
      {@JsonKey(name: '_id') this.id,
      final List<dynamic>? ingradients,
      this.foodName,
      this.servingSize,
      this.servingType,
      this.carbohydrate,
      this.protein,
      this.fat,
      this.calories,
      this.mealType,
      this.types,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.image})
      : _ingradients = ingradients;

  factory _$DatumDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumDatumImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  final List<dynamic>? _ingradients;
  @override
  List<dynamic>? get ingradients {
    final value = _ingradients;
    if (value == null) return null;
    if (_ingradients is EqualUnmodifiableListView) return _ingradients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? foodName;
  @override
  final String? servingSize;
  @override
  final String? servingType;
  @override
  final double? carbohydrate;
  @override
  final double? protein;
  @override
  final double? fat;
  @override
  final double? calories;
  @override
  final String? mealType;
  @override
  final String? types;
  @override
  final String? userId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? image;

  @override
  String toString() {
    return 'DatumDatum(id: $id, ingradients: $ingradients, foodName: $foodName, servingSize: $servingSize, servingType: $servingType, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, calories: $calories, mealType: $mealType, types: $types, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._ingradients, _ingradients) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.servingSize, servingSize) ||
                other.servingSize == servingSize) &&
            (identical(other.servingType, servingType) ||
                other.servingType == servingType) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_ingradients),
      foodName,
      servingSize,
      servingType,
      carbohydrate,
      protein,
      fat,
      calories,
      mealType,
      types,
      userId,
      createdAt,
      updatedAt,
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumDatumImplCopyWith<_$DatumDatumImpl> get copyWith =>
      __$$DatumDatumImplCopyWithImpl<_$DatumDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumDatumImplToJson(
      this,
    );
  }
}

abstract class _DatumDatum implements DatumDatum {
  const factory _DatumDatum(
      {@JsonKey(name: '_id') final String? id,
      final List<dynamic>? ingradients,
      final String? foodName,
      final String? servingSize,
      final String? servingType,
      final double? carbohydrate,
      final double? protein,
      final double? fat,
      final double? calories,
      final String? mealType,
      final String? types,
      final String? userId,
      final String? createdAt,
      final String? updatedAt,
      final String? image}) = _$DatumDatumImpl;

  factory _DatumDatum.fromJson(Map<String, dynamic> json) =
      _$DatumDatumImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  List<dynamic>? get ingradients;
  @override
  String? get foodName;
  @override
  String? get servingSize;
  @override
  String? get servingType;
  @override
  double? get carbohydrate;
  @override
  double? get protein;
  @override
  double? get fat;
  @override
  double? get calories;
  @override
  String? get mealType;
  @override
  String? get types;
  @override
  String? get userId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$DatumDatumImplCopyWith<_$DatumDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
