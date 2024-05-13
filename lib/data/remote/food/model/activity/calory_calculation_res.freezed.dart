// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calory_calculation_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaloryCalculationReq _$CaloryCalculationReqFromJson(Map<String, dynamic> json) {
  return _CaloryCalculationReq.fromJson(json);
}

/// @nodoc
mixin _$CaloryCalculationReq {
  double? get me => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaloryCalculationReqCopyWith<CaloryCalculationReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloryCalculationReqCopyWith<$Res> {
  factory $CaloryCalculationReqCopyWith(CaloryCalculationReq value,
          $Res Function(CaloryCalculationReq) then) =
      _$CaloryCalculationReqCopyWithImpl<$Res, CaloryCalculationReq>;
  @useResult
  $Res call({double? me, String? level, int? time});
}

/// @nodoc
class _$CaloryCalculationReqCopyWithImpl<$Res,
        $Val extends CaloryCalculationReq>
    implements $CaloryCalculationReqCopyWith<$Res> {
  _$CaloryCalculationReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? me = freezed,
    Object? level = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as double?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaloryCalculationReqImplCopyWith<$Res>
    implements $CaloryCalculationReqCopyWith<$Res> {
  factory _$$CaloryCalculationReqImplCopyWith(_$CaloryCalculationReqImpl value,
          $Res Function(_$CaloryCalculationReqImpl) then) =
      __$$CaloryCalculationReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? me, String? level, int? time});
}

/// @nodoc
class __$$CaloryCalculationReqImplCopyWithImpl<$Res>
    extends _$CaloryCalculationReqCopyWithImpl<$Res, _$CaloryCalculationReqImpl>
    implements _$$CaloryCalculationReqImplCopyWith<$Res> {
  __$$CaloryCalculationReqImplCopyWithImpl(_$CaloryCalculationReqImpl _value,
      $Res Function(_$CaloryCalculationReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? me = freezed,
    Object? level = freezed,
    Object? time = freezed,
  }) {
    return _then(_$CaloryCalculationReqImpl(
      me: freezed == me
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as double?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaloryCalculationReqImpl implements _CaloryCalculationReq {
  const _$CaloryCalculationReqImpl({this.me, this.level, this.time});

  factory _$CaloryCalculationReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaloryCalculationReqImplFromJson(json);

  @override
  final double? me;
  @override
  final String? level;
  @override
  final int? time;

  @override
  String toString() {
    return 'CaloryCalculationReq(me: $me, level: $level, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaloryCalculationReqImpl &&
            (identical(other.me, me) || other.me == me) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, me, level, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaloryCalculationReqImplCopyWith<_$CaloryCalculationReqImpl>
      get copyWith =>
          __$$CaloryCalculationReqImplCopyWithImpl<_$CaloryCalculationReqImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaloryCalculationReqImplToJson(
      this,
    );
  }
}

abstract class _CaloryCalculationReq implements CaloryCalculationReq {
  const factory _CaloryCalculationReq(
      {final double? me,
      final String? level,
      final int? time}) = _$CaloryCalculationReqImpl;

  factory _CaloryCalculationReq.fromJson(Map<String, dynamic> json) =
      _$CaloryCalculationReqImpl.fromJson;

  @override
  double? get me;
  @override
  String? get level;
  @override
  int? get time;
  @override
  @JsonKey(ignore: true)
  _$$CaloryCalculationReqImplCopyWith<_$CaloryCalculationReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CaloryCalculationRes _$CaloryCalculationResFromJson(Map<String, dynamic> json) {
  return _CaloryCalculationRes.fromJson(json);
}

/// @nodoc
mixin _$CaloryCalculationRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaloryCalculationResCopyWith<CaloryCalculationRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaloryCalculationResCopyWith<$Res> {
  factory $CaloryCalculationResCopyWith(CaloryCalculationRes value,
          $Res Function(CaloryCalculationRes) then) =
      _$CaloryCalculationResCopyWithImpl<$Res, CaloryCalculationRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CaloryCalculationResCopyWithImpl<$Res,
        $Val extends CaloryCalculationRes>
    implements $CaloryCalculationResCopyWith<$Res> {
  _$CaloryCalculationResCopyWithImpl(this._value, this._then);

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
abstract class _$$CaloryCalculationResImplCopyWith<$Res>
    implements $CaloryCalculationResCopyWith<$Res> {
  factory _$$CaloryCalculationResImplCopyWith(_$CaloryCalculationResImpl value,
          $Res Function(_$CaloryCalculationResImpl) then) =
      __$$CaloryCalculationResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CaloryCalculationResImplCopyWithImpl<$Res>
    extends _$CaloryCalculationResCopyWithImpl<$Res, _$CaloryCalculationResImpl>
    implements _$$CaloryCalculationResImplCopyWith<$Res> {
  __$$CaloryCalculationResImplCopyWithImpl(_$CaloryCalculationResImpl _value,
      $Res Function(_$CaloryCalculationResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CaloryCalculationResImpl(
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
class _$CaloryCalculationResImpl implements _CaloryCalculationRes {
  const _$CaloryCalculationResImpl(
      {this.code, this.message, this.status, this.data});

  factory _$CaloryCalculationResImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaloryCalculationResImplFromJson(json);

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
    return 'CaloryCalculationRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaloryCalculationResImpl &&
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
  _$$CaloryCalculationResImplCopyWith<_$CaloryCalculationResImpl>
      get copyWith =>
          __$$CaloryCalculationResImplCopyWithImpl<_$CaloryCalculationResImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaloryCalculationResImplToJson(
      this,
    );
  }
}

abstract class _CaloryCalculationRes implements CaloryCalculationRes {
  const factory _CaloryCalculationRes(
      {final int? code,
      final String? message,
      final bool? status,
      final Data? data}) = _$CaloryCalculationResImpl;

  factory _CaloryCalculationRes.fromJson(Map<String, dynamic> json) =
      _$CaloryCalculationResImpl.fromJson;

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
  _$$CaloryCalculationResImplCopyWith<_$CaloryCalculationResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  double? get calories => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({double? calories, int? duration});
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
    Object? calories = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({double? calories, int? duration});
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
    Object? calories = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$DataImpl(
      calories: freezed == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({this.calories, this.duration});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final double? calories;
  @override
  final int? duration;

  @override
  String toString() {
    return 'Data(calories: $calories, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, calories, duration);

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
  const factory _Data({final double? calories, final int? duration}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  double? get calories;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
