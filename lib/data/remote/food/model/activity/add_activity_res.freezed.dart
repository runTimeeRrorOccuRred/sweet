// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_activity_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddActivityReq _$AddActivityReqFromJson(Map<String, dynamic> json) {
  return _AddActivityReq.fromJson(json);
}

/// @nodoc
mixin _$AddActivityReq {
  String? get activityName => throw _privateConstructorUsedError;
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get me => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get calories => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get duration => throw _privateConstructorUsedError;
  String? get types => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddActivityReqCopyWith<AddActivityReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddActivityReqCopyWith<$Res> {
  factory $AddActivityReqCopyWith(
          AddActivityReq value, $Res Function(AddActivityReq) then) =
      _$AddActivityReqCopyWithImpl<$Res, AddActivityReq>;
  @useResult
  $Res call(
      {String? activityName,
      String? activityType,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? types,
      String? level});
}

/// @nodoc
class _$AddActivityReqCopyWithImpl<$Res, $Val extends AddActivityReq>
    implements $AddActivityReqCopyWith<$Res> {
  _$AddActivityReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityName = freezed,
    Object? activityType = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? types = freezed,
    Object? level = freezed,
  }) {
    return _then(_value.copyWith(
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddActivityReqImplCopyWith<$Res>
    implements $AddActivityReqCopyWith<$Res> {
  factory _$$AddActivityReqImplCopyWith(_$AddActivityReqImpl value,
          $Res Function(_$AddActivityReqImpl) then) =
      __$$AddActivityReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? activityName,
      String? activityType,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? types,
      String? level});
}

/// @nodoc
class __$$AddActivityReqImplCopyWithImpl<$Res>
    extends _$AddActivityReqCopyWithImpl<$Res, _$AddActivityReqImpl>
    implements _$$AddActivityReqImplCopyWith<$Res> {
  __$$AddActivityReqImplCopyWithImpl(
      _$AddActivityReqImpl _value, $Res Function(_$AddActivityReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityName = freezed,
    Object? activityType = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? types = freezed,
    Object? level = freezed,
  }) {
    return _then(_$AddActivityReqImpl(
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as double?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddActivityReqImpl implements _AddActivityReq {
  const _$AddActivityReqImpl(
      {this.activityName,
      this.activityType,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.duration,
      this.types,
      this.level});

  factory _$AddActivityReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddActivityReqImplFromJson(json);

  @override
  final String? activityName;
  @override
  final String? activityType;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? me;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? calories;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? duration;
  @override
  final String? types;
  @override
  final String? level;

  @override
  String toString() {
    return 'AddActivityReq(activityName: $activityName, activityType: $activityType, me: $me, calories: $calories, duration: $duration, types: $types, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddActivityReqImpl &&
            (identical(other.activityName, activityName) ||
                other.activityName == activityName) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityName, activityType, me,
      calories, duration, types, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddActivityReqImplCopyWith<_$AddActivityReqImpl> get copyWith =>
      __$$AddActivityReqImplCopyWithImpl<_$AddActivityReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddActivityReqImplToJson(
      this,
    );
  }
}

abstract class _AddActivityReq implements AddActivityReq {
  const factory _AddActivityReq(
      {final String? activityName,
      final String? activityType,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? duration,
      final String? types,
      final String? level}) = _$AddActivityReqImpl;

  factory _AddActivityReq.fromJson(Map<String, dynamic> json) =
      _$AddActivityReqImpl.fromJson;

  @override
  String? get activityName;
  @override
  String? get activityType;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get me;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get calories;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get duration;
  @override
  String? get types;
  @override
  String? get level;
  @override
  @JsonKey(ignore: true)
  _$$AddActivityReqImplCopyWith<_$AddActivityReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddActivityRes _$AddActivityResFromJson(Map<String, dynamic> json) {
  return _AddActivityRes.fromJson(json);
}

/// @nodoc
mixin _$AddActivityRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddActivityResCopyWith<AddActivityRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddActivityResCopyWith<$Res> {
  factory $AddActivityResCopyWith(
          AddActivityRes value, $Res Function(AddActivityRes) then) =
      _$AddActivityResCopyWithImpl<$Res, AddActivityRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$AddActivityResCopyWithImpl<$Res, $Val extends AddActivityRes>
    implements $AddActivityResCopyWith<$Res> {
  _$AddActivityResCopyWithImpl(this._value, this._then);

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
abstract class _$$AddActivityResImplCopyWith<$Res>
    implements $AddActivityResCopyWith<$Res> {
  factory _$$AddActivityResImplCopyWith(_$AddActivityResImpl value,
          $Res Function(_$AddActivityResImpl) then) =
      __$$AddActivityResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$AddActivityResImplCopyWithImpl<$Res>
    extends _$AddActivityResCopyWithImpl<$Res, _$AddActivityResImpl>
    implements _$$AddActivityResImplCopyWith<$Res> {
  __$$AddActivityResImplCopyWithImpl(
      _$AddActivityResImpl _value, $Res Function(_$AddActivityResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddActivityResImpl(
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
class _$AddActivityResImpl implements _AddActivityRes {
  const _$AddActivityResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$AddActivityResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddActivityResImplFromJson(json);

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
    return 'AddActivityRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddActivityResImpl &&
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
  _$$AddActivityResImplCopyWith<_$AddActivityResImpl> get copyWith =>
      __$$AddActivityResImplCopyWithImpl<_$AddActivityResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddActivityResImplToJson(
      this,
    );
  }
}

abstract class _AddActivityRes implements AddActivityRes {
  const factory _AddActivityRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$AddActivityResImpl;

  factory _AddActivityRes.fromJson(Map<String, dynamic> json) =
      _$AddActivityResImpl.fromJson;

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
  _$$AddActivityResImplCopyWith<_$AddActivityResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get activityName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get activityType => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get calories => throw _privateConstructorUsedError;
  String? get types => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {String? activityName,
      String? id,
      String? activityType,
      int? duration,
      int? calories,
      String? types,
      String? userId,
      String? createdAt,
      String? updatedAt});
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
    Object? activityName = freezed,
    Object? id = freezed,
    Object? activityType = freezed,
    Object? duration = freezed,
    Object? calories = freezed,
    Object? types = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? activityName,
      String? id,
      String? activityType,
      int? duration,
      int? calories,
      String? types,
      String? userId,
      String? createdAt,
      String? updatedAt});
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
    Object? activityName = freezed,
    Object? id = freezed,
    Object? activityType = freezed,
    Object? duration = freezed,
    Object? calories = freezed,
    Object? types = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.activityName,
      this.id,
      this.activityType,
      this.duration,
      this.calories,
      this.types,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? activityName;
  @override
  final String? id;
  @override
  final String? activityType;
  @override
  final int? duration;
  @override
  final int? calories;
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
    return 'Datum(activityName: $activityName, id: $id, activityType: $activityType, duration: $duration, calories: $calories, types: $types, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.activityName, activityName) ||
                other.activityName == activityName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityName, id, activityType,
      duration, calories, types, userId, createdAt, updatedAt);

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
      {final String? activityName,
      final String? id,
      final String? activityType,
      final int? duration,
      final int? calories,
      final String? types,
      final String? userId,
      final String? createdAt,
      final String? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get activityName;
  @override
  String? get id;
  @override
  String? get activityType;
  @override
  int? get duration;
  @override
  int? get calories;
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
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
