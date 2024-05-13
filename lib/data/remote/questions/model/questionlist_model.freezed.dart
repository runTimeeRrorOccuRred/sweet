// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionListRes _$QuestionListResFromJson(Map<String, dynamic> json) {
  return _QuestionListRes.fromJson(json);
}

/// @nodoc
mixin _$QuestionListRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionListResCopyWith<QuestionListRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListResCopyWith<$Res> {
  factory $QuestionListResCopyWith(
          QuestionListRes value, $Res Function(QuestionListRes) then) =
      _$QuestionListResCopyWithImpl<$Res, QuestionListRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$QuestionListResCopyWithImpl<$Res, $Val extends QuestionListRes>
    implements $QuestionListResCopyWith<$Res> {
  _$QuestionListResCopyWithImpl(this._value, this._then);

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
abstract class _$$QuestionListResImplCopyWith<$Res>
    implements $QuestionListResCopyWith<$Res> {
  factory _$$QuestionListResImplCopyWith(_$QuestionListResImpl value,
          $Res Function(_$QuestionListResImpl) then) =
      __$$QuestionListResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$QuestionListResImplCopyWithImpl<$Res>
    extends _$QuestionListResCopyWithImpl<$Res, _$QuestionListResImpl>
    implements _$$QuestionListResImplCopyWith<$Res> {
  __$$QuestionListResImplCopyWithImpl(
      _$QuestionListResImpl _value, $Res Function(_$QuestionListResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$QuestionListResImpl(
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
class _$QuestionListResImpl implements _QuestionListRes {
  const _$QuestionListResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$QuestionListResImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionListResImplFromJson(json);

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
    return 'QuestionListRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionListResImpl &&
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
  _$$QuestionListResImplCopyWith<_$QuestionListResImpl> get copyWith =>
      __$$QuestionListResImplCopyWithImpl<_$QuestionListResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionListResImplToJson(
      this,
    );
  }
}

abstract class _QuestionListRes implements QuestionListRes {
  const factory _QuestionListRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$QuestionListResImpl;

  factory _QuestionListRes.fromJson(Map<String, dynamic> json) =
      _$QuestionListResImpl.fromJson;

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
  _$$QuestionListResImplCopyWith<_$QuestionListResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get subQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
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
      {String? subQuestion,
      @JsonKey(name: "_id") String? id,
      String? question,
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
    Object? subQuestion = freezed,
    Object? id = freezed,
    Object? question = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
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
      {String? subQuestion,
      @JsonKey(name: "_id") String? id,
      String? question,
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
    Object? subQuestion = freezed,
    Object? id = freezed,
    Object? question = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
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
      {this.subQuestion,
      @JsonKey(name: "_id") this.id,
      this.question,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? subQuestion;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? question;
  @override
  final String? userId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Datum(subQuestion: $subQuestion, id: $id, question: $question, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.subQuestion, subQuestion) ||
                other.subQuestion == subQuestion) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subQuestion, id, question, userId, createdAt, updatedAt);

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
      {final String? subQuestion,
      @JsonKey(name: "_id") final String? id,
      final String? question,
      final String? userId,
      final String? createdAt,
      final String? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get subQuestion;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get question;
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
