// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'healthCondition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HealthConditionRes _$HealthConditionResFromJson(Map<String, dynamic> json) {
  return _HealthConditionRes.fromJson(json);
}

/// @nodoc
mixin _$HealthConditionRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthConditionResCopyWith<HealthConditionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthConditionResCopyWith<$Res> {
  factory $HealthConditionResCopyWith(
          HealthConditionRes value, $Res Function(HealthConditionRes) then) =
      _$HealthConditionResCopyWithImpl<$Res, HealthConditionRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class _$HealthConditionResCopyWithImpl<$Res, $Val extends HealthConditionRes>
    implements $HealthConditionResCopyWith<$Res> {
  _$HealthConditionResCopyWithImpl(this._value, this._then);

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
abstract class _$$HealthConditionResImplCopyWith<$Res>
    implements $HealthConditionResCopyWith<$Res> {
  factory _$$HealthConditionResImplCopyWith(_$HealthConditionResImpl value,
          $Res Function(_$HealthConditionResImpl) then) =
      __$$HealthConditionResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, List<Datum>? data});
}

/// @nodoc
class __$$HealthConditionResImplCopyWithImpl<$Res>
    extends _$HealthConditionResCopyWithImpl<$Res, _$HealthConditionResImpl>
    implements _$$HealthConditionResImplCopyWith<$Res> {
  __$$HealthConditionResImplCopyWithImpl(_$HealthConditionResImpl _value,
      $Res Function(_$HealthConditionResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HealthConditionResImpl(
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
class _$HealthConditionResImpl implements _HealthConditionRes {
  const _$HealthConditionResImpl(
      {this.code, this.message, this.status, final List<Datum>? data})
      : _data = data;

  factory _$HealthConditionResImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthConditionResImplFromJson(json);

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
    return 'HealthConditionRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthConditionResImpl &&
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
  _$$HealthConditionResImplCopyWith<_$HealthConditionResImpl> get copyWith =>
      __$$HealthConditionResImplCopyWithImpl<_$HealthConditionResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthConditionResImplToJson(
      this,
    );
  }
}

abstract class _HealthConditionRes implements HealthConditionRes {
  const factory _HealthConditionRes(
      {final int? code,
      final String? message,
      final bool? status,
      final List<Datum>? data}) = _$HealthConditionResImpl;

  factory _HealthConditionRes.fromJson(Map<String, dynamic> json) =
      _$HealthConditionResImpl.fromJson;

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
  _$$HealthConditionResImplCopyWith<_$HealthConditionResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get subQuestion => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  List<AnswersDatum>? get answersData => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      String? question,
      String? subQuestion,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? slug,
      List<AnswersDatum>? answersData});
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
    Object? question = freezed,
    Object? subQuestion = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? answersData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      answersData: freezed == answersData
          ? _value.answersData
          : answersData // ignore: cast_nullable_to_non_nullable
              as List<AnswersDatum>?,
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
      {@JsonKey(name: "_id") String? id,
      String? question,
      String? subQuestion,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? slug,
      List<AnswersDatum>? answersData});
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
    Object? question = freezed,
    Object? subQuestion = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
    Object? answersData = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      answersData: freezed == answersData
          ? _value._answersData
          : answersData // ignore: cast_nullable_to_non_nullable
              as List<AnswersDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "_id") this.id,
      this.question,
      this.subQuestion,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.slug,
      final List<AnswersDatum>? answersData})
      : _answersData = answersData;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? question;
  @override
  final String? subQuestion;
  @override
  final String? userId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? slug;
  final List<AnswersDatum>? _answersData;
  @override
  List<AnswersDatum>? get answersData {
    final value = _answersData;
    if (value == null) return null;
    if (_answersData is EqualUnmodifiableListView) return _answersData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(id: $id, question: $question, subQuestion: $subQuestion, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, answersData: $answersData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.subQuestion, subQuestion) ||
                other.subQuestion == subQuestion) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality()
                .equals(other._answersData, _answersData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      subQuestion,
      userId,
      createdAt,
      updatedAt,
      slug,
      const DeepCollectionEquality().hash(_answersData));

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
      {@JsonKey(name: "_id") final String? id,
      final String? question,
      final String? subQuestion,
      final String? userId,
      final String? createdAt,
      final String? updatedAt,
      final String? slug,
      final List<AnswersDatum>? answersData}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get question;
  @override
  String? get subQuestion;
  @override
  String? get userId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get slug;
  @override
  List<AnswersDatum>? get answersData;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswersDatum _$AnswersDatumFromJson(Map<String, dynamic> json) {
  return _AnswersDatum.fromJson(json);
}

/// @nodoc
mixin _$AnswersDatum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get subAnswer => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersDatumCopyWith<AnswersDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersDatumCopyWith<$Res> {
  factory $AnswersDatumCopyWith(
          AnswersDatum value, $Res Function(AnswersDatum) then) =
      _$AnswersDatumCopyWithImpl<$Res, AnswersDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? subAnswer,
      String? questionId,
      String? answer,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? slug});
}

/// @nodoc
class _$AnswersDatumCopyWithImpl<$Res, $Val extends AnswersDatum>
    implements $AnswersDatumCopyWith<$Res> {
  _$AnswersDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subAnswer = freezed,
    Object? questionId = freezed,
    Object? answer = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subAnswer: freezed == subAnswer
          ? _value.subAnswer
          : subAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswersDatumImplCopyWith<$Res>
    implements $AnswersDatumCopyWith<$Res> {
  factory _$$AnswersDatumImplCopyWith(
          _$AnswersDatumImpl value, $Res Function(_$AnswersDatumImpl) then) =
      __$$AnswersDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? subAnswer,
      String? questionId,
      String? answer,
      String? userId,
      String? createdAt,
      String? updatedAt,
      String? slug});
}

/// @nodoc
class __$$AnswersDatumImplCopyWithImpl<$Res>
    extends _$AnswersDatumCopyWithImpl<$Res, _$AnswersDatumImpl>
    implements _$$AnswersDatumImplCopyWith<$Res> {
  __$$AnswersDatumImplCopyWithImpl(
      _$AnswersDatumImpl _value, $Res Function(_$AnswersDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subAnswer = freezed,
    Object? questionId = freezed,
    Object? answer = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$AnswersDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subAnswer: freezed == subAnswer
          ? _value.subAnswer
          : subAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswersDatumImpl implements _AnswersDatum {
  const _$AnswersDatumImpl(
      {@JsonKey(name: "_id") this.id,
      this.subAnswer,
      this.questionId,
      this.answer,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.slug});

  factory _$AnswersDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswersDatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? subAnswer;
  @override
  final String? questionId;
  @override
  final String? answer;
  @override
  final String? userId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? slug;

  @override
  String toString() {
    return 'AnswersDatum(id: $id, subAnswer: $subAnswer, questionId: $questionId, answer: $answer, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswersDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subAnswer, subAnswer) ||
                other.subAnswer == subAnswer) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subAnswer, questionId,
      answer, userId, createdAt, updatedAt, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswersDatumImplCopyWith<_$AnswersDatumImpl> get copyWith =>
      __$$AnswersDatumImplCopyWithImpl<_$AnswersDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswersDatumImplToJson(
      this,
    );
  }
}

abstract class _AnswersDatum implements AnswersDatum {
  const factory _AnswersDatum(
      {@JsonKey(name: "_id") final String? id,
      final String? subAnswer,
      final String? questionId,
      final String? answer,
      final String? userId,
      final String? createdAt,
      final String? updatedAt,
      final String? slug}) = _$AnswersDatumImpl;

  factory _AnswersDatum.fromJson(Map<String, dynamic> json) =
      _$AnswersDatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get subAnswer;
  @override
  String? get questionId;
  @override
  String? get answer;
  @override
  String? get userId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$AnswersDatumImplCopyWith<_$AnswersDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
