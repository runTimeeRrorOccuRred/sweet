// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_activity_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetActivityRes _$GetActivityResFromJson(Map<String, dynamic> json) {
  return _GetActivityRes.fromJson(json);
}

/// @nodoc
mixin _$GetActivityRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetActivityResCopyWith<GetActivityRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetActivityResCopyWith<$Res> {
  factory $GetActivityResCopyWith(
          GetActivityRes value, $Res Function(GetActivityRes) then) =
      _$GetActivityResCopyWithImpl<$Res, GetActivityRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$GetActivityResCopyWithImpl<$Res, $Val extends GetActivityRes>
    implements $GetActivityResCopyWith<$Res> {
  _$GetActivityResCopyWithImpl(this._value, this._then);

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
abstract class _$$GetActivityResImplCopyWith<$Res>
    implements $GetActivityResCopyWith<$Res> {
  factory _$$GetActivityResImplCopyWith(_$GetActivityResImpl value,
          $Res Function(_$GetActivityResImpl) then) =
      __$$GetActivityResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$GetActivityResImplCopyWithImpl<$Res>
    extends _$GetActivityResCopyWithImpl<$Res, _$GetActivityResImpl>
    implements _$$GetActivityResImplCopyWith<$Res> {
  __$$GetActivityResImplCopyWithImpl(
      _$GetActivityResImpl _value, $Res Function(_$GetActivityResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetActivityResImpl(
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
class _$GetActivityResImpl implements _GetActivityRes {
  const _$GetActivityResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$GetActivityResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetActivityResImplFromJson(json);

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
    return 'GetActivityRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityResImpl &&
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
  _$$GetActivityResImplCopyWith<_$GetActivityResImpl> get copyWith =>
      __$$GetActivityResImplCopyWithImpl<_$GetActivityResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetActivityResImplToJson(
      this,
    );
  }
}

abstract class _GetActivityRes implements GetActivityRes {
  const factory _GetActivityRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$GetActivityResImpl;

  factory _GetActivityRes.fromJson(Map<String, dynamic> json) =
      _$GetActivityResImpl.fromJson;

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
  _$$GetActivityResImplCopyWith<_$GetActivityResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get activityName => throw _privateConstructorUsedError;
  ActivityType? get activityType => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get me => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get calories => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get duration => throw _privateConstructorUsedError;
  String? get types => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String? id,
      String? activityName,
      ActivityType? activityType,
      String? userId,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? types,
      String? level,
      String? createdAt,
      String? updatedAt});

  $ActivityTypeCopyWith<$Res>? get activityType;
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
    Object? id = freezed,
    Object? activityName = freezed,
    Object? activityType = freezed,
    Object? userId = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? types = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $ActivityTypeCopyWith<$Res>? get activityType {
    if (_value.activityType == null) {
      return null;
    }

    return $ActivityTypeCopyWith<$Res>(_value.activityType!, (value) {
      return _then(_value.copyWith(activityType: value) as $Val);
    });
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
      {@JsonKey(name: '_id') String? id,
      String? activityName,
      ActivityType? activityType,
      String? userId,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? types,
      String? level,
      String? createdAt,
      String? updatedAt});

  @override
  $ActivityTypeCopyWith<$Res>? get activityType;
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
    Object? id = freezed,
    Object? activityName = freezed,
    Object? activityType = freezed,
    Object? userId = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? types = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityName: freezed == activityName
          ? _value.activityName
          : activityName // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: '_id') this.id,
      this.activityName,
      this.activityType,
      this.userId,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.duration,
      this.types,
      this.level,
      this.createdAt,
      this.updatedAt});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? activityName;
  @override
  final ActivityType? activityType;
  @override
  final String? userId;
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
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Datum(id: $id, activityName: $activityName, activityType: $activityType, userId: $userId, me: $me, calories: $calories, duration: $duration, types: $types, level: $level, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityName, activityName) ||
                other.activityName == activityName) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, activityName, activityType,
      userId, me, calories, duration, types, level, createdAt, updatedAt);

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
      {@JsonKey(name: '_id') final String? id,
      final String? activityName,
      final ActivityType? activityType,
      final String? userId,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? duration,
      final String? types,
      final String? level,
      final String? createdAt,
      final String? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get activityName;
  @override
  ActivityType? get activityType;
  @override
  String? get userId;
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
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityType _$ActivityTypeFromJson(Map<String, dynamic> json) {
  return _ActivityType.fromJson(json);
}

/// @nodoc
mixin _$ActivityType {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get types => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityTypeCopyWith<ActivityType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTypeCopyWith<$Res> {
  factory $ActivityTypeCopyWith(
          ActivityType value, $Res Function(ActivityType) then) =
      _$ActivityTypeCopyWithImpl<$Res, ActivityType>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? types, String? icon});
}

/// @nodoc
class _$ActivityTypeCopyWithImpl<$Res, $Val extends ActivityType>
    implements $ActivityTypeCopyWith<$Res> {
  _$ActivityTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? types = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityTypeImplCopyWith<$Res>
    implements $ActivityTypeCopyWith<$Res> {
  factory _$$ActivityTypeImplCopyWith(
          _$ActivityTypeImpl value, $Res Function(_$ActivityTypeImpl) then) =
      __$$ActivityTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? types, String? icon});
}

/// @nodoc
class __$$ActivityTypeImplCopyWithImpl<$Res>
    extends _$ActivityTypeCopyWithImpl<$Res, _$ActivityTypeImpl>
    implements _$$ActivityTypeImplCopyWith<$Res> {
  __$$ActivityTypeImplCopyWithImpl(
      _$ActivityTypeImpl _value, $Res Function(_$ActivityTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? types = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$ActivityTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityTypeImpl implements _ActivityType {
  const _$ActivityTypeImpl(
      {@JsonKey(name: '_id') this.id, this.types, this.icon});

  factory _$ActivityTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityTypeImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? types;
  @override
  final String? icon;

  @override
  String toString() {
    return 'ActivityType(id: $id, types: $types, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.types, types) || other.types == types) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, types, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityTypeImplCopyWith<_$ActivityTypeImpl> get copyWith =>
      __$$ActivityTypeImplCopyWithImpl<_$ActivityTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityTypeImplToJson(
      this,
    );
  }
}

abstract class _ActivityType implements ActivityType {
  const factory _ActivityType(
      {@JsonKey(name: '_id') final String? id,
      final String? types,
      final String? icon}) = _$ActivityTypeImpl;

  factory _ActivityType.fromJson(Map<String, dynamic> json) =
      _$ActivityTypeImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get types;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$ActivityTypeImplCopyWith<_$ActivityTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetActivityReq _$GetActivityReqFromJson(Map<String, dynamic> json) {
  return _GetActivityReq.fromJson(json);
}

/// @nodoc
mixin _$GetActivityReq {
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetActivityReqCopyWith<GetActivityReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetActivityReqCopyWith<$Res> {
  factory $GetActivityReqCopyWith(
          GetActivityReq value, $Res Function(GetActivityReq) then) =
      _$GetActivityReqCopyWithImpl<$Res, GetActivityReq>;
  @useResult
  $Res call({String? date});
}

/// @nodoc
class _$GetActivityReqCopyWithImpl<$Res, $Val extends GetActivityReq>
    implements $GetActivityReqCopyWith<$Res> {
  _$GetActivityReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetActivityReqImplCopyWith<$Res>
    implements $GetActivityReqCopyWith<$Res> {
  factory _$$GetActivityReqImplCopyWith(_$GetActivityReqImpl value,
          $Res Function(_$GetActivityReqImpl) then) =
      __$$GetActivityReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date});
}

/// @nodoc
class __$$GetActivityReqImplCopyWithImpl<$Res>
    extends _$GetActivityReqCopyWithImpl<$Res, _$GetActivityReqImpl>
    implements _$$GetActivityReqImplCopyWith<$Res> {
  __$$GetActivityReqImplCopyWithImpl(
      _$GetActivityReqImpl _value, $Res Function(_$GetActivityReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$GetActivityReqImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetActivityReqImpl implements _GetActivityReq {
  const _$GetActivityReqImpl({this.date});

  factory _$GetActivityReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetActivityReqImplFromJson(json);

  @override
  final String? date;

  @override
  String toString() {
    return 'GetActivityReq(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActivityReqImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActivityReqImplCopyWith<_$GetActivityReqImpl> get copyWith =>
      __$$GetActivityReqImplCopyWithImpl<_$GetActivityReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetActivityReqImplToJson(
      this,
    );
  }
}

abstract class _GetActivityReq implements GetActivityReq {
  const factory _GetActivityReq({final String? date}) = _$GetActivityReqImpl;

  factory _GetActivityReq.fromJson(Map<String, dynamic> json) =
      _$GetActivityReqImpl.fromJson;

  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$GetActivityReqImplCopyWith<_$GetActivityReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
