// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpReq _$VerifyOtpReqFromJson(Map<String, dynamic> json) {
  return _VerifyOtpReq.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpReq {
  String? get email => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpReqCopyWith<VerifyOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpReqCopyWith<$Res> {
  factory $VerifyOtpReqCopyWith(
          VerifyOtpReq value, $Res Function(VerifyOtpReq) then) =
      _$VerifyOtpReqCopyWithImpl<$Res, VerifyOtpReq>;
  @useResult
  $Res call({String? email, int? otp});
}

/// @nodoc
class _$VerifyOtpReqCopyWithImpl<$Res, $Val extends VerifyOtpReq>
    implements $VerifyOtpReqCopyWith<$Res> {
  _$VerifyOtpReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpReqImplCopyWith<$Res>
    implements $VerifyOtpReqCopyWith<$Res> {
  factory _$$VerifyOtpReqImplCopyWith(
          _$VerifyOtpReqImpl value, $Res Function(_$VerifyOtpReqImpl) then) =
      __$$VerifyOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, int? otp});
}

/// @nodoc
class __$$VerifyOtpReqImplCopyWithImpl<$Res>
    extends _$VerifyOtpReqCopyWithImpl<$Res, _$VerifyOtpReqImpl>
    implements _$$VerifyOtpReqImplCopyWith<$Res> {
  __$$VerifyOtpReqImplCopyWithImpl(
      _$VerifyOtpReqImpl _value, $Res Function(_$VerifyOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$VerifyOtpReqImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpReqImpl implements _VerifyOtpReq {
  const _$VerifyOtpReqImpl({this.email, this.otp});

  factory _$VerifyOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpReqImplFromJson(json);

  @override
  final String? email;
  @override
  final int? otp;

  @override
  String toString() {
    return 'VerifyOtpReq(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpReqImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpReqImplCopyWith<_$VerifyOtpReqImpl> get copyWith =>
      __$$VerifyOtpReqImplCopyWithImpl<_$VerifyOtpReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpReqImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpReq implements VerifyOtpReq {
  const factory _VerifyOtpReq({final String? email, final int? otp}) =
      _$VerifyOtpReqImpl;

  factory _VerifyOtpReq.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpReqImpl.fromJson;

  @override
  String? get email;
  @override
  int? get otp;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpReqImplCopyWith<_$VerifyOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOtpRes _$VerifyOtpResFromJson(Map<String, dynamic> json) {
  return _VerifyOtpRes.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRes {
  String? get code => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResCopyWith<VerifyOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResCopyWith<$Res> {
  factory $VerifyOtpResCopyWith(
          VerifyOtpRes value, $Res Function(VerifyOtpRes) then) =
      _$VerifyOtpResCopyWithImpl<$Res, VerifyOtpRes>;
  @useResult
  $Res call({String? code, bool? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyOtpResCopyWithImpl<$Res, $Val extends VerifyOtpRes>
    implements $VerifyOtpResCopyWith<$Res> {
  _$VerifyOtpResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$VerifyOtpResImplCopyWith<$Res>
    implements $VerifyOtpResCopyWith<$Res> {
  factory _$$VerifyOtpResImplCopyWith(
          _$VerifyOtpResImpl value, $Res Function(_$VerifyOtpResImpl) then) =
      __$$VerifyOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, bool? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifyOtpResImplCopyWithImpl<$Res>
    extends _$VerifyOtpResCopyWithImpl<$Res, _$VerifyOtpResImpl>
    implements _$$VerifyOtpResImplCopyWith<$Res> {
  __$$VerifyOtpResImplCopyWithImpl(
      _$VerifyOtpResImpl _value, $Res Function(_$VerifyOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifyOtpResImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpResImpl implements _VerifyOtpRes {
  const _$VerifyOtpResImpl({this.code, this.status, this.message, this.data});

  factory _$VerifyOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResImplFromJson(json);

  @override
  final String? code;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'VerifyOtpRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpResImplCopyWith<_$VerifyOtpResImpl> get copyWith =>
      __$$VerifyOtpResImplCopyWithImpl<_$VerifyOtpResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRes implements VerifyOtpRes {
  const factory _VerifyOtpRes(
      {final String? code,
      final bool? status,
      final String? message,
      final Data? data}) = _$VerifyOtpResImpl;

  factory _VerifyOtpRes.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResImpl.fromJson;

  @override
  String? get code;
  @override
  bool? get status;
  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResImplCopyWith<_$VerifyOtpResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get userHealthData => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get expiaryDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  Tokens? get tokens => throw _privateConstructorUsedError;

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
      {bool? isEmailVerified,
      int? otp,
      String? role,
      List<dynamic>? userHealthData,
      @JsonKey(name: "_id") String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? password,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt,
      Tokens? tokens});

  $TokensCopyWith<$Res>? get tokens;
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
    Object? isEmailVerified = freezed,
    Object? otp = freezed,
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value.userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expiaryDate: freezed == expiaryDate
          ? _value.expiaryDate
          : expiaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tokens: freezed == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokensCopyWith<$Res>? get tokens {
    if (_value.tokens == null) {
      return null;
    }

    return $TokensCopyWith<$Res>(_value.tokens!, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
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
      {bool? isEmailVerified,
      int? otp,
      String? role,
      List<dynamic>? userHealthData,
      @JsonKey(name: "_id") String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? password,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt,
      Tokens? tokens});

  @override
  $TokensCopyWith<$Res>? get tokens;
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
    Object? isEmailVerified = freezed,
    Object? otp = freezed,
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_$DataImpl(
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value._userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      expiaryDate: freezed == expiaryDate
          ? _value.expiaryDate
          : expiaryDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tokens: freezed == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as Tokens?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.isEmailVerified,
      this.otp,
      this.role,
      final List<dynamic>? userHealthData,
      @JsonKey(name: "_id") this.id,
      this.expiaryDate,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.tokens})
      : _userHealthData = userHealthData;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final bool? isEmailVerified;
  @override
  final int? otp;
  @override
  final String? role;
  final List<dynamic>? _userHealthData;
  @override
  List<dynamic>? get userHealthData {
    final value = _userHealthData;
    if (value == null) return null;
    if (_userHealthData is EqualUnmodifiableListView) return _userHealthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? expiaryDate;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final String? location;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final Tokens? tokens;

  @override
  String toString() {
    return 'Data(isEmailVerified: $isEmailVerified, otp: $otp, role: $role, userHealthData: $userHealthData, id: $id, expiaryDate: $expiaryDate, name: $name, email: $email, password: $password, phone: $phone, location: $location, createdAt: $createdAt, updatedAt: $updatedAt, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._userHealthData, _userHealthData) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expiaryDate, expiaryDate) ||
                other.expiaryDate == expiaryDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEmailVerified,
      otp,
      role,
      const DeepCollectionEquality().hash(_userHealthData),
      id,
      expiaryDate,
      name,
      email,
      password,
      phone,
      location,
      createdAt,
      updatedAt,
      tokens);

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
      {final bool? isEmailVerified,
      final int? otp,
      final String? role,
      final List<dynamic>? userHealthData,
      @JsonKey(name: "_id") final String? id,
      final String? expiaryDate,
      final String? name,
      final String? email,
      final String? password,
      final String? phone,
      final String? location,
      final String? createdAt,
      final String? updatedAt,
      final Tokens? tokens}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool? get isEmailVerified;
  @override
  int? get otp;
  @override
  String? get role;
  @override
  List<dynamic>? get userHealthData;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get expiaryDate;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get phone;
  @override
  String? get location;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  Tokens? get tokens;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tokens _$TokensFromJson(Map<String, dynamic> json) {
  return _Tokens.fromJson(json);
}

/// @nodoc
mixin _$Tokens {
  Access? get access => throw _privateConstructorUsedError;
  Access? get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokensCopyWith<Tokens> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokensCopyWith<$Res> {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) then) =
      _$TokensCopyWithImpl<$Res, Tokens>;
  @useResult
  $Res call({Access? access, Access? refresh});

  $AccessCopyWith<$Res>? get access;
  $AccessCopyWith<$Res>? get refresh;
}

/// @nodoc
class _$TokensCopyWithImpl<$Res, $Val extends Tokens>
    implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res>? get access {
    if (_value.access == null) {
      return null;
    }

    return $AccessCopyWith<$Res>(_value.access!, (value) {
      return _then(_value.copyWith(access: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccessCopyWith<$Res>? get refresh {
    if (_value.refresh == null) {
      return null;
    }

    return $AccessCopyWith<$Res>(_value.refresh!, (value) {
      return _then(_value.copyWith(refresh: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokensImplCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$$TokensImplCopyWith(
          _$TokensImpl value, $Res Function(_$TokensImpl) then) =
      __$$TokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Access? access, Access? refresh});

  @override
  $AccessCopyWith<$Res>? get access;
  @override
  $AccessCopyWith<$Res>? get refresh;
}

/// @nodoc
class __$$TokensImplCopyWithImpl<$Res>
    extends _$TokensCopyWithImpl<$Res, _$TokensImpl>
    implements _$$TokensImplCopyWith<$Res> {
  __$$TokensImplCopyWithImpl(
      _$TokensImpl _value, $Res Function(_$TokensImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$TokensImpl(
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as Access?,
      refresh: freezed == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as Access?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokensImpl implements _Tokens {
  const _$TokensImpl({this.access, this.refresh});

  factory _$TokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokensImplFromJson(json);

  @override
  final Access? access;
  @override
  final Access? refresh;

  @override
  String toString() {
    return 'Tokens(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokensImpl &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokensImplCopyWith<_$TokensImpl> get copyWith =>
      __$$TokensImplCopyWithImpl<_$TokensImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokensImplToJson(
      this,
    );
  }
}

abstract class _Tokens implements Tokens {
  const factory _Tokens({final Access? access, final Access? refresh}) =
      _$TokensImpl;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$TokensImpl.fromJson;

  @override
  Access? get access;
  @override
  Access? get refresh;
  @override
  @JsonKey(ignore: true)
  _$$TokensImplCopyWith<_$TokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Access _$AccessFromJson(Map<String, dynamic> json) {
  return _Access.fromJson(json);
}

/// @nodoc
mixin _$Access {
  String? get token => throw _privateConstructorUsedError;
  String? get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call({String? token, String? expires});
}

/// @nodoc
class _$AccessCopyWithImpl<$Res, $Val extends Access>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessImplCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$$AccessImplCopyWith(
          _$AccessImpl value, $Res Function(_$AccessImpl) then) =
      __$$AccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? expires});
}

/// @nodoc
class __$$AccessImplCopyWithImpl<$Res>
    extends _$AccessCopyWithImpl<$Res, _$AccessImpl>
    implements _$$AccessImplCopyWith<$Res> {
  __$$AccessImplCopyWithImpl(
      _$AccessImpl _value, $Res Function(_$AccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expires = freezed,
  }) {
    return _then(_$AccessImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: freezed == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessImpl implements _Access {
  const _$AccessImpl({this.token, this.expires});

  factory _$AccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessImplFromJson(json);

  @override
  final String? token;
  @override
  final String? expires;

  @override
  String toString() {
    return 'Access(token: $token, expires: $expires)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expires, expires) || other.expires == expires));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, expires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessImplCopyWith<_$AccessImpl> get copyWith =>
      __$$AccessImplCopyWithImpl<_$AccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessImplToJson(
      this,
    );
  }
}

abstract class _Access implements Access {
  const factory _Access({final String? token, final String? expires}) =
      _$AccessImpl;

  factory _Access.fromJson(Map<String, dynamic> json) = _$AccessImpl.fromJson;

  @override
  String? get token;
  @override
  String? get expires;
  @override
  @JsonKey(ignore: true)
  _$$AccessImplCopyWith<_$AccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
