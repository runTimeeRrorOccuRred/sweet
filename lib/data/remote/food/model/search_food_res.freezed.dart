// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_food_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchFoodReq _$SearchFoodReqFromJson(Map<String, dynamic> json) {
  return _SearchFoodReq.fromJson(json);
}

/// @nodoc
mixin _$SearchFoodReq {
  String? get foodName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFoodReqCopyWith<SearchFoodReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFoodReqCopyWith<$Res> {
  factory $SearchFoodReqCopyWith(
          SearchFoodReq value, $Res Function(SearchFoodReq) then) =
      _$SearchFoodReqCopyWithImpl<$Res, SearchFoodReq>;
  @useResult
  $Res call({String? foodName});
}

/// @nodoc
class _$SearchFoodReqCopyWithImpl<$Res, $Val extends SearchFoodReq>
    implements $SearchFoodReqCopyWith<$Res> {
  _$SearchFoodReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = freezed,
  }) {
    return _then(_value.copyWith(
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFoodReqImplCopyWith<$Res>
    implements $SearchFoodReqCopyWith<$Res> {
  factory _$$SearchFoodReqImplCopyWith(
          _$SearchFoodReqImpl value, $Res Function(_$SearchFoodReqImpl) then) =
      __$$SearchFoodReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? foodName});
}

/// @nodoc
class __$$SearchFoodReqImplCopyWithImpl<$Res>
    extends _$SearchFoodReqCopyWithImpl<$Res, _$SearchFoodReqImpl>
    implements _$$SearchFoodReqImplCopyWith<$Res> {
  __$$SearchFoodReqImplCopyWithImpl(
      _$SearchFoodReqImpl _value, $Res Function(_$SearchFoodReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = freezed,
  }) {
    return _then(_$SearchFoodReqImpl(
      foodName: freezed == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFoodReqImpl implements _SearchFoodReq {
  const _$SearchFoodReqImpl({this.foodName});

  factory _$SearchFoodReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFoodReqImplFromJson(json);

  @override
  final String? foodName;

  @override
  String toString() {
    return 'SearchFoodReq(foodName: $foodName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFoodReqImpl &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, foodName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFoodReqImplCopyWith<_$SearchFoodReqImpl> get copyWith =>
      __$$SearchFoodReqImplCopyWithImpl<_$SearchFoodReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFoodReqImplToJson(
      this,
    );
  }
}

abstract class _SearchFoodReq implements SearchFoodReq {
  const factory _SearchFoodReq({final String? foodName}) = _$SearchFoodReqImpl;

  factory _SearchFoodReq.fromJson(Map<String, dynamic> json) =
      _$SearchFoodReqImpl.fromJson;

  @override
  String? get foodName;
  @override
  @JsonKey(ignore: true)
  _$$SearchFoodReqImplCopyWith<_$SearchFoodReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchFoodRes _$SearchFoodResFromJson(Map<String, dynamic> json) {
  return _SearchFoodRes.fromJson(json);
}

/// @nodoc
mixin _$SearchFoodRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFoodResCopyWith<SearchFoodRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFoodResCopyWith<$Res> {
  factory $SearchFoodResCopyWith(
          SearchFoodRes value, $Res Function(SearchFoodRes) then) =
      _$SearchFoodResCopyWithImpl<$Res, SearchFoodRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$SearchFoodResCopyWithImpl<$Res, $Val extends SearchFoodRes>
    implements $SearchFoodResCopyWith<$Res> {
  _$SearchFoodResCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFoodResImplCopyWith<$Res>
    implements $SearchFoodResCopyWith<$Res> {
  factory _$$SearchFoodResImplCopyWith(
          _$SearchFoodResImpl value, $Res Function(_$SearchFoodResImpl) then) =
      __$$SearchFoodResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$SearchFoodResImplCopyWithImpl<$Res>
    extends _$SearchFoodResCopyWithImpl<$Res, _$SearchFoodResImpl>
    implements _$$SearchFoodResImplCopyWith<$Res> {
  __$$SearchFoodResImplCopyWithImpl(
      _$SearchFoodResImpl _value, $Res Function(_$SearchFoodResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchFoodResImpl(
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
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFoodResImpl implements _SearchFoodRes {
  const _$SearchFoodResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$SearchFoodResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFoodResImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? status;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchFoodRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFoodResImpl &&
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
  _$$SearchFoodResImplCopyWith<_$SearchFoodResImpl> get copyWith =>
      __$$SearchFoodResImplCopyWithImpl<_$SearchFoodResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFoodResImplToJson(
      this,
    );
  }
}

abstract class _SearchFoodRes implements SearchFoodRes {
  const factory _SearchFoodRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$SearchFoodResImpl;

  factory _SearchFoodRes.fromJson(Map<String, dynamic> json) =
      _$SearchFoodResImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get status;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchFoodResImplCopyWith<_$SearchFoodResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  List<BrandedFood>? get consumptionHistory =>
      throw _privateConstructorUsedError;
  List<BrandedFood>? get commonlyTrackedFood =>
      throw _privateConstructorUsedError;
  List<BrandedFood>? get brandedFood => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {List<BrandedFood>? consumptionHistory,
      List<BrandedFood>? commonlyTrackedFood,
      List<BrandedFood>? brandedFood});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consumptionHistory = freezed,
    Object? commonlyTrackedFood = freezed,
    Object? brandedFood = freezed,
  }) {
    return _then(_value.copyWith(
      consumptionHistory: freezed == consumptionHistory
          ? _value.consumptionHistory
          : consumptionHistory // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
      commonlyTrackedFood: freezed == commonlyTrackedFood
          ? _value.commonlyTrackedFood
          : commonlyTrackedFood // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
      brandedFood: freezed == brandedFood
          ? _value.brandedFood
          : brandedFood // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BrandedFood>? consumptionHistory,
      List<BrandedFood>? commonlyTrackedFood,
      List<BrandedFood>? brandedFood});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consumptionHistory = freezed,
    Object? commonlyTrackedFood = freezed,
    Object? brandedFood = freezed,
  }) {
    return _then(_$DatumImpl(
      consumptionHistory: freezed == consumptionHistory
          ? _value._consumptionHistory
          : consumptionHistory // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
      commonlyTrackedFood: freezed == commonlyTrackedFood
          ? _value._commonlyTrackedFood
          : commonlyTrackedFood // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
      brandedFood: freezed == brandedFood
          ? _value._brandedFood
          : brandedFood // ignore: cast_nullable_to_non_nullable
              as List<BrandedFood>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {final List<BrandedFood>? consumptionHistory,
      final List<BrandedFood>? commonlyTrackedFood,
      final List<BrandedFood>? brandedFood})
      : _consumptionHistory = consumptionHistory,
        _commonlyTrackedFood = commonlyTrackedFood,
        _brandedFood = brandedFood;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  final List<BrandedFood>? _consumptionHistory;
  @override
  List<BrandedFood>? get consumptionHistory {
    final value = _consumptionHistory;
    if (value == null) return null;
    if (_consumptionHistory is EqualUnmodifiableListView)
      return _consumptionHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandedFood>? _commonlyTrackedFood;
  @override
  List<BrandedFood>? get commonlyTrackedFood {
    final value = _commonlyTrackedFood;
    if (value == null) return null;
    if (_commonlyTrackedFood is EqualUnmodifiableListView)
      return _commonlyTrackedFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandedFood>? _brandedFood;
  @override
  List<BrandedFood>? get brandedFood {
    final value = _brandedFood;
    if (value == null) return null;
    if (_brandedFood is EqualUnmodifiableListView) return _brandedFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(consumptionHistory: $consumptionHistory, commonlyTrackedFood: $commonlyTrackedFood, brandedFood: $brandedFood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            const DeepCollectionEquality()
                .equals(other._consumptionHistory, _consumptionHistory) &&
            const DeepCollectionEquality()
                .equals(other._commonlyTrackedFood, _commonlyTrackedFood) &&
            const DeepCollectionEquality()
                .equals(other._brandedFood, _brandedFood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_consumptionHistory),
      const DeepCollectionEquality().hash(_commonlyTrackedFood),
      const DeepCollectionEquality().hash(_brandedFood));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final List<BrandedFood>? consumptionHistory,
      final List<BrandedFood>? commonlyTrackedFood,
      final List<BrandedFood>? brandedFood}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  List<BrandedFood>? get consumptionHistory;
  @override
  List<BrandedFood>? get commonlyTrackedFood;
  @override
  List<BrandedFood>? get brandedFood;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandedFood _$BrandedFoodFromJson(Map<String, dynamic> json) {
  return _BrandedFood.fromJson(json);
}

/// @nodoc
mixin _$BrandedFood {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<dynamic>? get ingradients => throw _privateConstructorUsedError;
  String? get foodName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandedFoodCopyWith<BrandedFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandedFoodCopyWith<$Res> {
  factory $BrandedFoodCopyWith(
          BrandedFood value, $Res Function(BrandedFood) then) =
      _$BrandedFoodCopyWithImpl<$Res, BrandedFood>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<dynamic>? ingradients,
      String? foodName,
      String? image,
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
      String? updatedAt});
}

/// @nodoc
class _$BrandedFoodCopyWithImpl<$Res, $Val extends BrandedFood>
    implements $BrandedFoodCopyWith<$Res> {
  _$BrandedFoodCopyWithImpl(this._value, this._then);

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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandedFoodImplCopyWith<$Res>
    implements $BrandedFoodCopyWith<$Res> {
  factory _$$BrandedFoodImplCopyWith(
          _$BrandedFoodImpl value, $Res Function(_$BrandedFoodImpl) then) =
      __$$BrandedFoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      List<dynamic>? ingradients,
      String? foodName,
      String? image,
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
      String? updatedAt});
}

/// @nodoc
class __$$BrandedFoodImplCopyWithImpl<$Res>
    extends _$BrandedFoodCopyWithImpl<$Res, _$BrandedFoodImpl>
    implements _$$BrandedFoodImplCopyWith<$Res> {
  __$$BrandedFoodImplCopyWithImpl(
      _$BrandedFoodImpl _value, $Res Function(_$BrandedFoodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ingradients = freezed,
    Object? foodName = freezed,
    Object? image = freezed,
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
  }) {
    return _then(_$BrandedFoodImpl(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandedFoodImpl implements _BrandedFood {
  const _$BrandedFoodImpl(
      {@JsonKey(name: "_id") this.id,
      final List<dynamic>? ingradients,
      this.foodName,
      this.image,
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
      this.updatedAt})
      : _ingradients = ingradients;

  factory _$BrandedFoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandedFoodImplFromJson(json);

  @override
  @JsonKey(name: "_id")
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
  final String? image;
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
  String toString() {
    return 'BrandedFood(id: $id, ingradients: $ingradients, foodName: $foodName, image: $image, servingSize: $servingSize, servingType: $servingType, carbohydrate: $carbohydrate, protein: $protein, fat: $fat, calories: $calories, mealType: $mealType, types: $types, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandedFoodImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._ingradients, _ingradients) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.image, image) || other.image == image) &&
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
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_ingradients),
      foodName,
      image,
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
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandedFoodImplCopyWith<_$BrandedFoodImpl> get copyWith =>
      __$$BrandedFoodImplCopyWithImpl<_$BrandedFoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandedFoodImplToJson(
      this,
    );
  }
}

abstract class _BrandedFood implements BrandedFood {
  const factory _BrandedFood(
      {@JsonKey(name: "_id") final String? id,
      final List<dynamic>? ingradients,
      final String? foodName,
      final String? image,
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
      final String? updatedAt}) = _$BrandedFoodImpl;

  factory _BrandedFood.fromJson(Map<String, dynamic> json) =
      _$BrandedFoodImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  List<dynamic>? get ingradients;
  @override
  String? get foodName;
  @override
  String? get image;
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
  @JsonKey(ignore: true)
  _$$BrandedFoodImplCopyWith<_$BrandedFoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
