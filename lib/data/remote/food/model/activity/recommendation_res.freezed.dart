// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecommendedRes _$RecommendedResFromJson(Map<String, dynamic> json) {
  return _RecommendedRes.fromJson(json);
}

/// @nodoc
mixin _$RecommendedRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedResCopyWith<RecommendedRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedResCopyWith<$Res> {
  factory $RecommendedResCopyWith(
          RecommendedRes value, $Res Function(RecommendedRes) then) =
      _$RecommendedResCopyWithImpl<$Res, RecommendedRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$RecommendedResCopyWithImpl<$Res, $Val extends RecommendedRes>
    implements $RecommendedResCopyWith<$Res> {
  _$RecommendedResCopyWithImpl(this._value, this._then);

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
abstract class _$$RecommendedResImplCopyWith<$Res>
    implements $RecommendedResCopyWith<$Res> {
  factory _$$RecommendedResImplCopyWith(_$RecommendedResImpl value,
          $Res Function(_$RecommendedResImpl) then) =
      __$$RecommendedResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$RecommendedResImplCopyWithImpl<$Res>
    extends _$RecommendedResCopyWithImpl<$Res, _$RecommendedResImpl>
    implements _$$RecommendedResImplCopyWith<$Res> {
  __$$RecommendedResImplCopyWithImpl(
      _$RecommendedResImpl _value, $Res Function(_$RecommendedResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RecommendedResImpl(
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
class _$RecommendedResImpl implements _RecommendedRes {
  const _$RecommendedResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$RecommendedResImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecommendedResImplFromJson(json);

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
    return 'RecommendedRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedResImpl &&
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
  _$$RecommendedResImplCopyWith<_$RecommendedResImpl> get copyWith =>
      __$$RecommendedResImplCopyWithImpl<_$RecommendedResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecommendedResImplToJson(
      this,
    );
  }
}

abstract class _RecommendedRes implements RecommendedRes {
  const factory _RecommendedRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$RecommendedResImpl;

  factory _RecommendedRes.fromJson(Map<String, dynamic> json) =
      _$RecommendedResImpl.fromJson;

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
  _$$RecommendedResImplCopyWith<_$RecommendedResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  ActivityType? get activityType => throw _privateConstructorUsedError;
  String? get activity => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get me => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get calories => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get duration => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

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
      ActivityType? activityType,
      String? activity,
      String? slug,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? level,
      String? type});

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
    Object? activityType = freezed,
    Object? activity = freezed,
    Object? slug = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? level = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
      ActivityType? activityType,
      String? activity,
      String? slug,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? level,
      String? type});

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
    Object? activityType = freezed,
    Object? activity = freezed,
    Object? slug = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? level = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as ActivityType?,
      activity: freezed == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: '_id') this.id,
      this.activityType,
      this.activity,
      this.slug,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.duration,
      this.level,
      this.type});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final ActivityType? activityType;
  @override
  final String? activity;
  @override
  final String? slug;
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
  final String? level;
  @override
  final String? type;

  @override
  String toString() {
    return 'Datum(id: $id, activityType: $activityType, activity: $activity, slug: $slug, me: $me, calories: $calories, duration: $duration, level: $level, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, activityType, activity, slug,
      me, calories, duration, level, type);

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
      final ActivityType? activityType,
      final String? activity,
      final String? slug,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? duration,
      final String? level,
      final String? type}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  ActivityType? get activityType;
  @override
  String? get activity;
  @override
  String? get slug;
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
  String? get level;
  @override
  String? get type;
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
