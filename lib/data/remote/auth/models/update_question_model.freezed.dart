// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateQuestionReq _$UpdateQuestionReqFromJson(Map<String, dynamic> json) {
  return _UpdateQuestionReq.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionReq {
  String? get questionId => throw _privateConstructorUsedError;
  List<Answear>? get answear => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateQuestionReqCopyWith<UpdateQuestionReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionReqCopyWith<$Res> {
  factory $UpdateQuestionReqCopyWith(
          UpdateQuestionReq value, $Res Function(UpdateQuestionReq) then) =
      _$UpdateQuestionReqCopyWithImpl<$Res, UpdateQuestionReq>;
  @useResult
  $Res call({String? questionId, List<Answear>? answear});
}

/// @nodoc
class _$UpdateQuestionReqCopyWithImpl<$Res, $Val extends UpdateQuestionReq>
    implements $UpdateQuestionReqCopyWith<$Res> {
  _$UpdateQuestionReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? answear = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answear: freezed == answear
          ? _value.answear
          : answear // ignore: cast_nullable_to_non_nullable
              as List<Answear>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateQuestionReqImplCopyWith<$Res>
    implements $UpdateQuestionReqCopyWith<$Res> {
  factory _$$UpdateQuestionReqImplCopyWith(_$UpdateQuestionReqImpl value,
          $Res Function(_$UpdateQuestionReqImpl) then) =
      __$$UpdateQuestionReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? questionId, List<Answear>? answear});
}

/// @nodoc
class __$$UpdateQuestionReqImplCopyWithImpl<$Res>
    extends _$UpdateQuestionReqCopyWithImpl<$Res, _$UpdateQuestionReqImpl>
    implements _$$UpdateQuestionReqImplCopyWith<$Res> {
  __$$UpdateQuestionReqImplCopyWithImpl(_$UpdateQuestionReqImpl _value,
      $Res Function(_$UpdateQuestionReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? answear = freezed,
  }) {
    return _then(_$UpdateQuestionReqImpl(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      answear: freezed == answear
          ? _value._answear
          : answear // ignore: cast_nullable_to_non_nullable
              as List<Answear>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionReqImpl implements _UpdateQuestionReq {
  const _$UpdateQuestionReqImpl({this.questionId, final List<Answear>? answear})
      : _answear = answear;

  factory _$UpdateQuestionReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuestionReqImplFromJson(json);

  @override
  final String? questionId;
  final List<Answear>? _answear;
  @override
  List<Answear>? get answear {
    final value = _answear;
    if (value == null) return null;
    if (_answear is EqualUnmodifiableListView) return _answear;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateQuestionReq(questionId: $questionId, answear: $answear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionReqImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            const DeepCollectionEquality().equals(other._answear, _answear));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, questionId, const DeepCollectionEquality().hash(_answear));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionReqImplCopyWith<_$UpdateQuestionReqImpl> get copyWith =>
      __$$UpdateQuestionReqImplCopyWithImpl<_$UpdateQuestionReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionReqImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionReq implements UpdateQuestionReq {
  const factory _UpdateQuestionReq(
      {final String? questionId,
      final List<Answear>? answear}) = _$UpdateQuestionReqImpl;

  factory _UpdateQuestionReq.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionReqImpl.fromJson;

  @override
  String? get questionId;
  @override
  List<Answear>? get answear;
  @override
  @JsonKey(ignore: true)
  _$$UpdateQuestionReqImplCopyWith<_$UpdateQuestionReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answear _$AnswearFromJson(Map<String, dynamic> json) {
  return _Answear.fromJson(json);
}

/// @nodoc
mixin _$Answear {
  String? get answerId => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  String? get subAnswer => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswearCopyWith<Answear> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswearCopyWith<$Res> {
  factory $AnswearCopyWith(Answear value, $Res Function(Answear) then) =
      _$AnswearCopyWithImpl<$Res, Answear>;
  @useResult
  $Res call(
      {String? answerId,
      String? answer,
      String? subAnswer,
      String? slug,
      String? image});
}

/// @nodoc
class _$AnswearCopyWithImpl<$Res, $Val extends Answear>
    implements $AnswearCopyWith<$Res> {
  _$AnswearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = freezed,
    Object? answer = freezed,
    Object? subAnswer = freezed,
    Object? slug = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      subAnswer: freezed == subAnswer
          ? _value.subAnswer
          : subAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswearImplCopyWith<$Res> implements $AnswearCopyWith<$Res> {
  factory _$$AnswearImplCopyWith(
          _$AnswearImpl value, $Res Function(_$AnswearImpl) then) =
      __$$AnswearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? answerId,
      String? answer,
      String? subAnswer,
      String? slug,
      String? image});
}

/// @nodoc
class __$$AnswearImplCopyWithImpl<$Res>
    extends _$AnswearCopyWithImpl<$Res, _$AnswearImpl>
    implements _$$AnswearImplCopyWith<$Res> {
  __$$AnswearImplCopyWithImpl(
      _$AnswearImpl _value, $Res Function(_$AnswearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = freezed,
    Object? answer = freezed,
    Object? subAnswer = freezed,
    Object? slug = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AnswearImpl(
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      subAnswer: freezed == subAnswer
          ? _value.subAnswer
          : subAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
class _$AnswearImpl implements _Answear {
  const _$AnswearImpl(
      {this.answerId, this.answer, this.subAnswer, this.slug, this.image});

  factory _$AnswearImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswearImplFromJson(json);

  @override
  final String? answerId;
  @override
  final String? answer;
  @override
  final String? subAnswer;
  @override
  final String? slug;
  @override
  final String? image;

  @override
  String toString() {
    return 'Answear(answerId: $answerId, answer: $answer, subAnswer: $subAnswer, slug: $slug, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswearImpl &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.subAnswer, subAnswer) ||
                other.subAnswer == subAnswer) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, answerId, answer, subAnswer, slug, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswearImplCopyWith<_$AnswearImpl> get copyWith =>
      __$$AnswearImplCopyWithImpl<_$AnswearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswearImplToJson(
      this,
    );
  }
}

abstract class _Answear implements Answear {
  const factory _Answear(
      {final String? answerId,
      final String? answer,
      final String? subAnswer,
      final String? slug,
      final String? image}) = _$AnswearImpl;

  factory _Answear.fromJson(Map<String, dynamic> json) = _$AnswearImpl.fromJson;

  @override
  String? get answerId;
  @override
  String? get answer;
  @override
  String? get subAnswer;
  @override
  String? get slug;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$AnswearImplCopyWith<_$AnswearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateQuestionRes _$UpdateQuestionResFromJson(Map<String, dynamic> json) {
  return _UpdateQuestionRes.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateQuestionResCopyWith<UpdateQuestionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionResCopyWith<$Res> {
  factory $UpdateQuestionResCopyWith(
          UpdateQuestionRes value, $Res Function(UpdateQuestionRes) then) =
      _$UpdateQuestionResCopyWithImpl<$Res, UpdateQuestionRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateQuestionResCopyWithImpl<$Res, $Val extends UpdateQuestionRes>
    implements $UpdateQuestionResCopyWith<$Res> {
  _$UpdateQuestionResCopyWithImpl(this._value, this._then);

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
abstract class _$$UpdateQuestionResImplCopyWith<$Res>
    implements $UpdateQuestionResCopyWith<$Res> {
  factory _$$UpdateQuestionResImplCopyWith(_$UpdateQuestionResImpl value,
          $Res Function(_$UpdateQuestionResImpl) then) =
      __$$UpdateQuestionResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateQuestionResImplCopyWithImpl<$Res>
    extends _$UpdateQuestionResCopyWithImpl<$Res, _$UpdateQuestionResImpl>
    implements _$$UpdateQuestionResImplCopyWith<$Res> {
  __$$UpdateQuestionResImplCopyWithImpl(_$UpdateQuestionResImpl _value,
      $Res Function(_$UpdateQuestionResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateQuestionResImpl(
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
class _$UpdateQuestionResImpl implements _UpdateQuestionRes {
  const _$UpdateQuestionResImpl(
      {this.code, this.message, this.status, this.data});

  factory _$UpdateQuestionResImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuestionResImplFromJson(json);

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
    return 'UpdateQuestionRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionResImpl &&
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
  _$$UpdateQuestionResImplCopyWith<_$UpdateQuestionResImpl> get copyWith =>
      __$$UpdateQuestionResImplCopyWithImpl<_$UpdateQuestionResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionResImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionRes implements UpdateQuestionRes {
  const factory _UpdateQuestionRes(
      {final int? code,
      final String? message,
      final bool? status,
      final Data? data}) = _$UpdateQuestionResImpl;

  factory _UpdateQuestionRes.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionResImpl.fromJson;

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
  _$$UpdateQuestionResImplCopyWith<_$UpdateQuestionResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int? get ok => throw _privateConstructorUsedError;
  List<dynamic>? get writeErrors => throw _privateConstructorUsedError;
  List<dynamic>? get writeConcernErrors => throw _privateConstructorUsedError;
  List<dynamic>? get insertedIds => throw _privateConstructorUsedError;
  List<Upserted>? get upserted => throw _privateConstructorUsedError;
  LastOp? get lastOp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int? ok,
      List<dynamic>? writeErrors,
      List<dynamic>? writeConcernErrors,
      List<dynamic>? insertedIds,
      List<Upserted>? upserted,
      LastOp? lastOp});

  $LastOpCopyWith<$Res>? get lastOp;
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
    Object? ok = freezed,
    Object? writeErrors = freezed,
    Object? writeConcernErrors = freezed,
    Object? insertedIds = freezed,
    Object? upserted = freezed,
    Object? lastOp = freezed,
  }) {
    return _then(_value.copyWith(
      ok: freezed == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as int?,
      writeErrors: freezed == writeErrors
          ? _value.writeErrors
          : writeErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      writeConcernErrors: freezed == writeConcernErrors
          ? _value.writeConcernErrors
          : writeConcernErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      insertedIds: freezed == insertedIds
          ? _value.insertedIds
          : insertedIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      upserted: freezed == upserted
          ? _value.upserted
          : upserted // ignore: cast_nullable_to_non_nullable
              as List<Upserted>?,
      lastOp: freezed == lastOp
          ? _value.lastOp
          : lastOp // ignore: cast_nullable_to_non_nullable
              as LastOp?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastOpCopyWith<$Res>? get lastOp {
    if (_value.lastOp == null) {
      return null;
    }

    return $LastOpCopyWith<$Res>(_value.lastOp!, (value) {
      return _then(_value.copyWith(lastOp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ok,
      List<dynamic>? writeErrors,
      List<dynamic>? writeConcernErrors,
      List<dynamic>? insertedIds,
      List<Upserted>? upserted,
      LastOp? lastOp});

  @override
  $LastOpCopyWith<$Res>? get lastOp;
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
    Object? ok = freezed,
    Object? writeErrors = freezed,
    Object? writeConcernErrors = freezed,
    Object? insertedIds = freezed,
    Object? upserted = freezed,
    Object? lastOp = freezed,
  }) {
    return _then(_$DataImpl(
      ok: freezed == ok
          ? _value.ok
          : ok // ignore: cast_nullable_to_non_nullable
              as int?,
      writeErrors: freezed == writeErrors
          ? _value._writeErrors
          : writeErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      writeConcernErrors: freezed == writeConcernErrors
          ? _value._writeConcernErrors
          : writeConcernErrors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      insertedIds: freezed == insertedIds
          ? _value._insertedIds
          : insertedIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      upserted: freezed == upserted
          ? _value._upserted
          : upserted // ignore: cast_nullable_to_non_nullable
              as List<Upserted>?,
      lastOp: freezed == lastOp
          ? _value.lastOp
          : lastOp // ignore: cast_nullable_to_non_nullable
              as LastOp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.ok,
      final List<dynamic>? writeErrors,
      final List<dynamic>? writeConcernErrors,
      final List<dynamic>? insertedIds,
      final List<Upserted>? upserted,
      this.lastOp})
      : _writeErrors = writeErrors,
        _writeConcernErrors = writeConcernErrors,
        _insertedIds = insertedIds,
        _upserted = upserted;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int? ok;
  final List<dynamic>? _writeErrors;
  @override
  List<dynamic>? get writeErrors {
    final value = _writeErrors;
    if (value == null) return null;
    if (_writeErrors is EqualUnmodifiableListView) return _writeErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _writeConcernErrors;
  @override
  List<dynamic>? get writeConcernErrors {
    final value = _writeConcernErrors;
    if (value == null) return null;
    if (_writeConcernErrors is EqualUnmodifiableListView)
      return _writeConcernErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _insertedIds;
  @override
  List<dynamic>? get insertedIds {
    final value = _insertedIds;
    if (value == null) return null;
    if (_insertedIds is EqualUnmodifiableListView) return _insertedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Upserted>? _upserted;
  @override
  List<Upserted>? get upserted {
    final value = _upserted;
    if (value == null) return null;
    if (_upserted is EqualUnmodifiableListView) return _upserted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastOp? lastOp;

  @override
  String toString() {
    return 'Data(ok: $ok, writeErrors: $writeErrors, writeConcernErrors: $writeConcernErrors, insertedIds: $insertedIds, upserted: $upserted, lastOp: $lastOp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.ok, ok) || other.ok == ok) &&
            const DeepCollectionEquality()
                .equals(other._writeErrors, _writeErrors) &&
            const DeepCollectionEquality()
                .equals(other._writeConcernErrors, _writeConcernErrors) &&
            const DeepCollectionEquality()
                .equals(other._insertedIds, _insertedIds) &&
            const DeepCollectionEquality().equals(other._upserted, _upserted) &&
            (identical(other.lastOp, lastOp) || other.lastOp == lastOp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ok,
      const DeepCollectionEquality().hash(_writeErrors),
      const DeepCollectionEquality().hash(_writeConcernErrors),
      const DeepCollectionEquality().hash(_insertedIds),
      const DeepCollectionEquality().hash(_upserted),
      lastOp);

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
      {final int? ok,
      final List<dynamic>? writeErrors,
      final List<dynamic>? writeConcernErrors,
      final List<dynamic>? insertedIds,
      final List<Upserted>? upserted,
      final LastOp? lastOp}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int? get ok;
  @override
  List<dynamic>? get writeErrors;
  @override
  List<dynamic>? get writeConcernErrors;
  @override
  List<dynamic>? get insertedIds;
  @override
  List<Upserted>? get upserted;
  @override
  LastOp? get lastOp;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LastOp _$LastOpFromJson(Map<String, dynamic> json) {
  return _LastOp.fromJson(json);
}

/// @nodoc
mixin _$LastOp {
  String? get ts => throw _privateConstructorUsedError;
  int? get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastOpCopyWith<LastOp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastOpCopyWith<$Res> {
  factory $LastOpCopyWith(LastOp value, $Res Function(LastOp) then) =
      _$LastOpCopyWithImpl<$Res, LastOp>;
  @useResult
  $Res call({String? ts, int? t});
}

/// @nodoc
class _$LastOpCopyWithImpl<$Res, $Val extends LastOp>
    implements $LastOpCopyWith<$Res> {
  _$LastOpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ts = freezed,
    Object? t = freezed,
  }) {
    return _then(_value.copyWith(
      ts: freezed == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastOpImplCopyWith<$Res> implements $LastOpCopyWith<$Res> {
  factory _$$LastOpImplCopyWith(
          _$LastOpImpl value, $Res Function(_$LastOpImpl) then) =
      __$$LastOpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ts, int? t});
}

/// @nodoc
class __$$LastOpImplCopyWithImpl<$Res>
    extends _$LastOpCopyWithImpl<$Res, _$LastOpImpl>
    implements _$$LastOpImplCopyWith<$Res> {
  __$$LastOpImplCopyWithImpl(
      _$LastOpImpl _value, $Res Function(_$LastOpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ts = freezed,
    Object? t = freezed,
  }) {
    return _then(_$LastOpImpl(
      ts: freezed == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastOpImpl implements _LastOp {
  const _$LastOpImpl({this.ts, this.t});

  factory _$LastOpImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastOpImplFromJson(json);

  @override
  final String? ts;
  @override
  final int? t;

  @override
  String toString() {
    return 'LastOp(ts: $ts, t: $t)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastOpImpl &&
            (identical(other.ts, ts) || other.ts == ts) &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ts, t);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastOpImplCopyWith<_$LastOpImpl> get copyWith =>
      __$$LastOpImplCopyWithImpl<_$LastOpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastOpImplToJson(
      this,
    );
  }
}

abstract class _LastOp implements LastOp {
  const factory _LastOp({final String? ts, final int? t}) = _$LastOpImpl;

  factory _LastOp.fromJson(Map<String, dynamic> json) = _$LastOpImpl.fromJson;

  @override
  String? get ts;
  @override
  int? get t;
  @override
  @JsonKey(ignore: true)
  _$$LastOpImplCopyWith<_$LastOpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Upserted _$UpsertedFromJson(Map<String, dynamic> json) {
  return _Upserted.fromJson(json);
}

/// @nodoc
mixin _$Upserted {
  int? get index => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpsertedCopyWith<Upserted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpsertedCopyWith<$Res> {
  factory $UpsertedCopyWith(Upserted value, $Res Function(Upserted) then) =
      _$UpsertedCopyWithImpl<$Res, Upserted>;
  @useResult
  $Res call({int? index, String? id});
}

/// @nodoc
class _$UpsertedCopyWithImpl<$Res, $Val extends Upserted>
    implements $UpsertedCopyWith<$Res> {
  _$UpsertedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpsertedImplCopyWith<$Res>
    implements $UpsertedCopyWith<$Res> {
  factory _$$UpsertedImplCopyWith(
          _$UpsertedImpl value, $Res Function(_$UpsertedImpl) then) =
      __$$UpsertedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, String? id});
}

/// @nodoc
class __$$UpsertedImplCopyWithImpl<$Res>
    extends _$UpsertedCopyWithImpl<$Res, _$UpsertedImpl>
    implements _$$UpsertedImplCopyWith<$Res> {
  __$$UpsertedImplCopyWithImpl(
      _$UpsertedImpl _value, $Res Function(_$UpsertedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? id = freezed,
  }) {
    return _then(_$UpsertedImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpsertedImpl implements _Upserted {
  const _$UpsertedImpl({this.index, this.id});

  factory _$UpsertedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpsertedImplFromJson(json);

  @override
  final int? index;
  @override
  final String? id;

  @override
  String toString() {
    return 'Upserted(index: $index, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpsertedImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpsertedImplCopyWith<_$UpsertedImpl> get copyWith =>
      __$$UpsertedImplCopyWithImpl<_$UpsertedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpsertedImplToJson(
      this,
    );
  }
}

abstract class _Upserted implements Upserted {
  const factory _Upserted({final int? index, final String? id}) =
      _$UpsertedImpl;

  factory _Upserted.fromJson(Map<String, dynamic> json) =
      _$UpsertedImpl.fromJson;

  @override
  int? get index;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$UpsertedImplCopyWith<_$UpsertedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
