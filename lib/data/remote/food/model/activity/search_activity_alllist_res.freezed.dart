// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_activity_alllist_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchActivityAllListRes _$SearchActivityAllListResFromJson(
    Map<String, dynamic> json) {
  return _SearchActivityAllListRes.fromJson(json);
}

/// @nodoc
mixin _$SearchActivityAllListRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchActivityAllListResCopyWith<SearchActivityAllListRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActivityAllListResCopyWith<$Res> {
  factory $SearchActivityAllListResCopyWith(SearchActivityAllListRes value,
          $Res Function(SearchActivityAllListRes) then) =
      _$SearchActivityAllListResCopyWithImpl<$Res, SearchActivityAllListRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchActivityAllListResCopyWithImpl<$Res,
        $Val extends SearchActivityAllListRes>
    implements $SearchActivityAllListResCopyWith<$Res> {
  _$SearchActivityAllListResCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchActivityAllListResImplCopyWith<$Res>
    implements $SearchActivityAllListResCopyWith<$Res> {
  factory _$$SearchActivityAllListResImplCopyWith(
          _$SearchActivityAllListResImpl value,
          $Res Function(_$SearchActivityAllListResImpl) then) =
      __$$SearchActivityAllListResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchActivityAllListResImplCopyWithImpl<$Res>
    extends _$SearchActivityAllListResCopyWithImpl<$Res,
        _$SearchActivityAllListResImpl>
    implements _$$SearchActivityAllListResImplCopyWith<$Res> {
  __$$SearchActivityAllListResImplCopyWithImpl(
      _$SearchActivityAllListResImpl _value,
      $Res Function(_$SearchActivityAllListResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchActivityAllListResImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchActivityAllListResImpl implements _SearchActivityAllListRes {
  const _$SearchActivityAllListResImpl(
      {this.code, this.message, this.status, this.data});

  factory _$SearchActivityAllListResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchActivityAllListResImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'SearchActivityAllListRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchActivityAllListResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchActivityAllListResImplCopyWith<_$SearchActivityAllListResImpl>
      get copyWith => __$$SearchActivityAllListResImplCopyWithImpl<
          _$SearchActivityAllListResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchActivityAllListResImplToJson(
      this,
    );
  }
}

abstract class _SearchActivityAllListRes implements SearchActivityAllListRes {
  const factory _SearchActivityAllListRes(
      {final int? code,
      final String? message,
      final bool? status,
      final Data? data}) = _$SearchActivityAllListResImpl;

  factory _SearchActivityAllListRes.fromJson(Map<String, dynamic> json) =
      _$SearchActivityAllListResImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchActivityAllListResImplCopyWith<_$SearchActivityAllListResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<ActivityTypeListed>? get activityTypeListed =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<ActivityTypeListed>? activityTypeListed});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityTypeListed = freezed,
  }) {
    return _then(_value.copyWith(
      activityTypeListed: freezed == activityTypeListed
          ? _value.activityTypeListed
          : activityTypeListed // ignore: cast_nullable_to_non_nullable
              as List<ActivityTypeListed>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ActivityTypeListed>? activityTypeListed});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityTypeListed = freezed,
  }) {
    return _then(_$DataImpl(
      activityTypeListed: freezed == activityTypeListed
          ? _value._activityTypeListed
          : activityTypeListed // ignore: cast_nullable_to_non_nullable
              as List<ActivityTypeListed>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({final List<ActivityTypeListed>? activityTypeListed})
      : _activityTypeListed = activityTypeListed;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<ActivityTypeListed>? _activityTypeListed;
  @override
  List<ActivityTypeListed>? get activityTypeListed {
    final value = _activityTypeListed;
    if (value == null) return null;
    if (_activityTypeListed is EqualUnmodifiableListView)
      return _activityTypeListed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(activityTypeListed: $activityTypeListed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._activityTypeListed, _activityTypeListed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_activityTypeListed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<ActivityTypeListed>? activityTypeListed}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<ActivityTypeListed>? get activityTypeListed;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityTypeListed _$ActivityTypeListedFromJson(Map<String, dynamic> json) {
  return _ActivityTypeListed.fromJson(json);
}

/// @nodoc
mixin _$ActivityTypeListed {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  ActivityType? get activityType => throw _privateConstructorUsedError;
  String? get activity => throw _privateConstructorUsedError;
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
  $ActivityTypeListedCopyWith<ActivityTypeListed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTypeListedCopyWith<$Res> {
  factory $ActivityTypeListedCopyWith(
          ActivityTypeListed value, $Res Function(ActivityTypeListed) then) =
      _$ActivityTypeListedCopyWithImpl<$Res, ActivityTypeListed>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      ActivityType? activityType,
      String? activity,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? level,
      String? type});

  $ActivityTypeCopyWith<$Res>? get activityType;
}

/// @nodoc
class _$ActivityTypeListedCopyWithImpl<$Res, $Val extends ActivityTypeListed>
    implements $ActivityTypeListedCopyWith<$Res> {
  _$ActivityTypeListedCopyWithImpl(this._value, this._then);

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
abstract class _$$ActivityTypeListedImplCopyWith<$Res>
    implements $ActivityTypeListedCopyWith<$Res> {
  factory _$$ActivityTypeListedImplCopyWith(_$ActivityTypeListedImpl value,
          $Res Function(_$ActivityTypeListedImpl) then) =
      __$$ActivityTypeListedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      ActivityType? activityType,
      String? activity,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
      String? level,
      String? type});

  @override
  $ActivityTypeCopyWith<$Res>? get activityType;
}

/// @nodoc
class __$$ActivityTypeListedImplCopyWithImpl<$Res>
    extends _$ActivityTypeListedCopyWithImpl<$Res, _$ActivityTypeListedImpl>
    implements _$$ActivityTypeListedImplCopyWith<$Res> {
  __$$ActivityTypeListedImplCopyWithImpl(_$ActivityTypeListedImpl _value,
      $Res Function(_$ActivityTypeListedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? activityType = freezed,
    Object? activity = freezed,
    Object? me = freezed,
    Object? calories = freezed,
    Object? duration = freezed,
    Object? level = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ActivityTypeListedImpl(
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
class _$ActivityTypeListedImpl implements _ActivityTypeListed {
  const _$ActivityTypeListedImpl(
      {@JsonKey(name: '_id') this.id,
      this.activityType,
      this.activity,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.duration,
      this.level,
      this.type});

  factory _$ActivityTypeListedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityTypeListedImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final ActivityType? activityType;
  @override
  final String? activity;
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
    return 'ActivityTypeListed(id: $id, activityType: $activityType, activity: $activity, me: $me, calories: $calories, duration: $duration, level: $level, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityTypeListedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
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
  int get hashCode => Object.hash(runtimeType, id, activityType, activity, me,
      calories, duration, level, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityTypeListedImplCopyWith<_$ActivityTypeListedImpl> get copyWith =>
      __$$ActivityTypeListedImplCopyWithImpl<_$ActivityTypeListedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityTypeListedImplToJson(
      this,
    );
  }
}

abstract class _ActivityTypeListed implements ActivityTypeListed {
  const factory _ActivityTypeListed(
      {@JsonKey(name: '_id') final String? id,
      final ActivityType? activityType,
      final String? activity,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? me,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? calories,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? duration,
      final String? level,
      final String? type}) = _$ActivityTypeListedImpl;

  factory _ActivityTypeListed.fromJson(Map<String, dynamic> json) =
      _$ActivityTypeListedImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  ActivityType? get activityType;
  @override
  String? get activity;
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
  _$$ActivityTypeListedImplCopyWith<_$ActivityTypeListedImpl> get copyWith =>
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

SearchActivityAllListReq _$SearchActivityAllListReqFromJson(
    Map<String, dynamic> json) {
  return _SearchActivityAllListReq.fromJson(json);
}

/// @nodoc
mixin _$SearchActivityAllListReq {
  String? get activityType => throw _privateConstructorUsedError;
  String? get activitykey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchActivityAllListReqCopyWith<SearchActivityAllListReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchActivityAllListReqCopyWith<$Res> {
  factory $SearchActivityAllListReqCopyWith(SearchActivityAllListReq value,
          $Res Function(SearchActivityAllListReq) then) =
      _$SearchActivityAllListReqCopyWithImpl<$Res, SearchActivityAllListReq>;
  @useResult
  $Res call({String? activityType, String? activitykey});
}

/// @nodoc
class _$SearchActivityAllListReqCopyWithImpl<$Res,
        $Val extends SearchActivityAllListReq>
    implements $SearchActivityAllListReqCopyWith<$Res> {
  _$SearchActivityAllListReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? activitykey = freezed,
  }) {
    return _then(_value.copyWith(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      activitykey: freezed == activitykey
          ? _value.activitykey
          : activitykey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchActivityAllListReqImplCopyWith<$Res>
    implements $SearchActivityAllListReqCopyWith<$Res> {
  factory _$$SearchActivityAllListReqImplCopyWith(
          _$SearchActivityAllListReqImpl value,
          $Res Function(_$SearchActivityAllListReqImpl) then) =
      __$$SearchActivityAllListReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? activityType, String? activitykey});
}

/// @nodoc
class __$$SearchActivityAllListReqImplCopyWithImpl<$Res>
    extends _$SearchActivityAllListReqCopyWithImpl<$Res,
        _$SearchActivityAllListReqImpl>
    implements _$$SearchActivityAllListReqImplCopyWith<$Res> {
  __$$SearchActivityAllListReqImplCopyWithImpl(
      _$SearchActivityAllListReqImpl _value,
      $Res Function(_$SearchActivityAllListReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityType = freezed,
    Object? activitykey = freezed,
  }) {
    return _then(_$SearchActivityAllListReqImpl(
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      activitykey: freezed == activitykey
          ? _value.activitykey
          : activitykey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchActivityAllListReqImpl implements _SearchActivityAllListReq {
  const _$SearchActivityAllListReqImpl({this.activityType, this.activitykey});

  factory _$SearchActivityAllListReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchActivityAllListReqImplFromJson(json);

  @override
  final String? activityType;
  @override
  final String? activitykey;

  @override
  String toString() {
    return 'SearchActivityAllListReq(activityType: $activityType, activitykey: $activitykey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchActivityAllListReqImpl &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.activitykey, activitykey) ||
                other.activitykey == activitykey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, activityType, activitykey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchActivityAllListReqImplCopyWith<_$SearchActivityAllListReqImpl>
      get copyWith => __$$SearchActivityAllListReqImplCopyWithImpl<
          _$SearchActivityAllListReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchActivityAllListReqImplToJson(
      this,
    );
  }
}

abstract class _SearchActivityAllListReq implements SearchActivityAllListReq {
  const factory _SearchActivityAllListReq(
      {final String? activityType,
      final String? activitykey}) = _$SearchActivityAllListReqImpl;

  factory _SearchActivityAllListReq.fromJson(Map<String, dynamic> json) =
      _$SearchActivityAllListReqImpl.fromJson;

  @override
  String? get activityType;
  @override
  String? get activitykey;
  @override
  @JsonKey(ignore: true)
  _$$SearchActivityAllListReqImplCopyWith<_$SearchActivityAllListReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}
