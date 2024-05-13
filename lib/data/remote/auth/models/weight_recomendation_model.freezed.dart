// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight_recomendation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeightRecomendationRes _$WeightRecomendationResFromJson(
    Map<String, dynamic> json) {
  return _WeightRecomendationRes.fromJson(json);
}

/// @nodoc
mixin _$WeightRecomendationRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightRecomendationResCopyWith<WeightRecomendationRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightRecomendationResCopyWith<$Res> {
  factory $WeightRecomendationResCopyWith(WeightRecomendationRes value,
          $Res Function(WeightRecomendationRes) then) =
      _$WeightRecomendationResCopyWithImpl<$Res, WeightRecomendationRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WeightRecomendationResCopyWithImpl<$Res,
        $Val extends WeightRecomendationRes>
    implements $WeightRecomendationResCopyWith<$Res> {
  _$WeightRecomendationResCopyWithImpl(this._value, this._then);

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
abstract class _$$WeightRecomendationResImplCopyWith<$Res>
    implements $WeightRecomendationResCopyWith<$Res> {
  factory _$$WeightRecomendationResImplCopyWith(
          _$WeightRecomendationResImpl value,
          $Res Function(_$WeightRecomendationResImpl) then) =
      __$$WeightRecomendationResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$WeightRecomendationResImplCopyWithImpl<$Res>
    extends _$WeightRecomendationResCopyWithImpl<$Res,
        _$WeightRecomendationResImpl>
    implements _$$WeightRecomendationResImplCopyWith<$Res> {
  __$$WeightRecomendationResImplCopyWithImpl(
      _$WeightRecomendationResImpl _value,
      $Res Function(_$WeightRecomendationResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WeightRecomendationResImpl(
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
class _$WeightRecomendationResImpl implements _WeightRecomendationRes {
  const _$WeightRecomendationResImpl(
      {this.code, this.message, this.status, this.data});

  factory _$WeightRecomendationResImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeightRecomendationResImplFromJson(json);

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
    return 'WeightRecomendationRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightRecomendationResImpl &&
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
  _$$WeightRecomendationResImplCopyWith<_$WeightRecomendationResImpl>
      get copyWith => __$$WeightRecomendationResImplCopyWithImpl<
          _$WeightRecomendationResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeightRecomendationResImplToJson(
      this,
    );
  }
}

abstract class _WeightRecomendationRes implements WeightRecomendationRes {
  const factory _WeightRecomendationRes(
      {final int? code,
      final String? message,
      final bool? status,
      final Data? data}) = _$WeightRecomendationResImpl;

  factory _WeightRecomendationRes.fromJson(Map<String, dynamic> json) =
      _$WeightRecomendationResImpl.fromJson;

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
  _$$WeightRecomendationResImplCopyWith<_$WeightRecomendationResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool? get healthGoalOptionChoosen => throw _privateConstructorUsedError;
  bool? get idleWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({bool? healthGoalOptionChoosen, bool? idleWeight});
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
    Object? healthGoalOptionChoosen = freezed,
    Object? idleWeight = freezed,
  }) {
    return _then(_value.copyWith(
      healthGoalOptionChoosen: freezed == healthGoalOptionChoosen
          ? _value.healthGoalOptionChoosen
          : healthGoalOptionChoosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      idleWeight: freezed == idleWeight
          ? _value.idleWeight
          : idleWeight // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({bool? healthGoalOptionChoosen, bool? idleWeight});
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
    Object? healthGoalOptionChoosen = freezed,
    Object? idleWeight = freezed,
  }) {
    return _then(_$DataImpl(
      healthGoalOptionChoosen: freezed == healthGoalOptionChoosen
          ? _value.healthGoalOptionChoosen
          : healthGoalOptionChoosen // ignore: cast_nullable_to_non_nullable
              as bool?,
      idleWeight: freezed == idleWeight
          ? _value.idleWeight
          : idleWeight // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({this.healthGoalOptionChoosen, this.idleWeight});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final bool? healthGoalOptionChoosen;
  @override
  final bool? idleWeight;

  @override
  String toString() {
    return 'Data(healthGoalOptionChoosen: $healthGoalOptionChoosen, idleWeight: $idleWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(
                    other.healthGoalOptionChoosen, healthGoalOptionChoosen) ||
                other.healthGoalOptionChoosen == healthGoalOptionChoosen) &&
            (identical(other.idleWeight, idleWeight) ||
                other.idleWeight == idleWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, healthGoalOptionChoosen, idleWeight);

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
  const factory _Data(
      {final bool? healthGoalOptionChoosen,
      final bool? idleWeight}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool? get healthGoalOptionChoosen;
  @override
  bool? get idleWeight;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
