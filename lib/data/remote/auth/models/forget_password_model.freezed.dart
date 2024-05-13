// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotSendOtpReq _$ForgotSendOtpReqFromJson(Map<String, dynamic> json) {
  return _ForgotSendOtpReq.fromJson(json);
}

/// @nodoc
mixin _$ForgotSendOtpReq {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotSendOtpReqCopyWith<ForgotSendOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotSendOtpReqCopyWith<$Res> {
  factory $ForgotSendOtpReqCopyWith(
          ForgotSendOtpReq value, $Res Function(ForgotSendOtpReq) then) =
      _$ForgotSendOtpReqCopyWithImpl<$Res, ForgotSendOtpReq>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$ForgotSendOtpReqCopyWithImpl<$Res, $Val extends ForgotSendOtpReq>
    implements $ForgotSendOtpReqCopyWith<$Res> {
  _$ForgotSendOtpReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotSendOtpReqImplCopyWith<$Res>
    implements $ForgotSendOtpReqCopyWith<$Res> {
  factory _$$ForgotSendOtpReqImplCopyWith(_$ForgotSendOtpReqImpl value,
          $Res Function(_$ForgotSendOtpReqImpl) then) =
      __$$ForgotSendOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$ForgotSendOtpReqImplCopyWithImpl<$Res>
    extends _$ForgotSendOtpReqCopyWithImpl<$Res, _$ForgotSendOtpReqImpl>
    implements _$$ForgotSendOtpReqImplCopyWith<$Res> {
  __$$ForgotSendOtpReqImplCopyWithImpl(_$ForgotSendOtpReqImpl _value,
      $Res Function(_$ForgotSendOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$ForgotSendOtpReqImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotSendOtpReqImpl implements _ForgotSendOtpReq {
  const _$ForgotSendOtpReqImpl({this.email});

  factory _$ForgotSendOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotSendOtpReqImplFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'ForgotSendOtpReq(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotSendOtpReqImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotSendOtpReqImplCopyWith<_$ForgotSendOtpReqImpl> get copyWith =>
      __$$ForgotSendOtpReqImplCopyWithImpl<_$ForgotSendOtpReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotSendOtpReqImplToJson(
      this,
    );
  }
}

abstract class _ForgotSendOtpReq implements ForgotSendOtpReq {
  const factory _ForgotSendOtpReq({final String? email}) =
      _$ForgotSendOtpReqImpl;

  factory _ForgotSendOtpReq.fromJson(Map<String, dynamic> json) =
      _$ForgotSendOtpReqImpl.fromJson;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$ForgotSendOtpReqImplCopyWith<_$ForgotSendOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotSendOtpRes _$ForgotSendOtpResFromJson(Map<String, dynamic> json) {
  return _ForgotSendOtpRes.fromJson(json);
}

/// @nodoc
mixin _$ForgotSendOtpRes {
  int? get code => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotSendOtpResCopyWith<ForgotSendOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotSendOtpResCopyWith<$Res> {
  factory $ForgotSendOtpResCopyWith(
          ForgotSendOtpRes value, $Res Function(ForgotSendOtpRes) then) =
      _$ForgotSendOtpResCopyWithImpl<$Res, ForgotSendOtpRes>;
  @useResult
  $Res call({int? code, bool? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgotSendOtpResCopyWithImpl<$Res, $Val extends ForgotSendOtpRes>
    implements $ForgotSendOtpResCopyWith<$Res> {
  _$ForgotSendOtpResCopyWithImpl(this._value, this._then);

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
              as int?,
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
abstract class _$$ForgotSendOtpResImplCopyWith<$Res>
    implements $ForgotSendOtpResCopyWith<$Res> {
  factory _$$ForgotSendOtpResImplCopyWith(_$ForgotSendOtpResImpl value,
          $Res Function(_$ForgotSendOtpResImpl) then) =
      __$$ForgotSendOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, bool? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ForgotSendOtpResImplCopyWithImpl<$Res>
    extends _$ForgotSendOtpResCopyWithImpl<$Res, _$ForgotSendOtpResImpl>
    implements _$$ForgotSendOtpResImplCopyWith<$Res> {
  __$$ForgotSendOtpResImplCopyWithImpl(_$ForgotSendOtpResImpl _value,
      $Res Function(_$ForgotSendOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ForgotSendOtpResImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ForgotSendOtpResImpl implements _ForgotSendOtpRes {
  const _$ForgotSendOtpResImpl(
      {this.code, this.status, this.message, this.data});

  factory _$ForgotSendOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotSendOtpResImplFromJson(json);

  @override
  final int? code;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ForgotSendOtpRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotSendOtpResImpl &&
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
  _$$ForgotSendOtpResImplCopyWith<_$ForgotSendOtpResImpl> get copyWith =>
      __$$ForgotSendOtpResImplCopyWithImpl<_$ForgotSendOtpResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotSendOtpResImplToJson(
      this,
    );
  }
}

abstract class _ForgotSendOtpRes implements ForgotSendOtpRes {
  const factory _ForgotSendOtpRes(
      {final int? code,
      final bool? status,
      final String? message,
      final Data? data}) = _$ForgotSendOtpResImpl;

  factory _ForgotSendOtpRes.fromJson(Map<String, dynamic> json) =
      _$ForgotSendOtpResImpl.fromJson;

  @override
  int? get code;
  @override
  bool? get status;
  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgotSendOtpResImplCopyWith<_$ForgotSendOtpResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get userHealthData => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get expiaryDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      {String? role,
      List<dynamic>? userHealthData,
      bool? isEmailVerified,
      String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt});
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
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value.userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call(
      {String? role,
      List<dynamic>? userHealthData,
      bool? isEmailVerified,
      String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt});
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
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value._userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.role,
      final List<dynamic>? userHealthData,
      this.isEmailVerified,
      this.id,
      this.expiaryDate,
      this.name,
      this.email,
      this.phone,
      this.location,
      this.createdAt,
      this.updatedAt})
      : _userHealthData = userHealthData;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

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
  final bool? isEmailVerified;
  @override
  final String? id;
  @override
  final String? expiaryDate;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? location;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(role: $role, userHealthData: $userHealthData, isEmailVerified: $isEmailVerified, id: $id, expiaryDate: $expiaryDate, name: $name, email: $email, phone: $phone, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._userHealthData, _userHealthData) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expiaryDate, expiaryDate) ||
                other.expiaryDate == expiaryDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      const DeepCollectionEquality().hash(_userHealthData),
      isEmailVerified,
      id,
      expiaryDate,
      name,
      email,
      phone,
      location,
      createdAt,
      updatedAt);

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
      {final String? role,
      final List<dynamic>? userHealthData,
      final bool? isEmailVerified,
      final String? id,
      final String? expiaryDate,
      final String? name,
      final String? email,
      final String? phone,
      final String? location,
      final String? createdAt,
      final String? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get role;
  @override
  List<dynamic>? get userHealthData;
  @override
  bool? get isEmailVerified;
  @override
  String? get id;
  @override
  String? get expiaryDate;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get location;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotVerifyOtpReq _$ForgotVerifyOtpReqFromJson(Map<String, dynamic> json) {
  return _ForgotVerifyOtpReq.fromJson(json);
}

/// @nodoc
mixin _$ForgotVerifyOtpReq {
  String? get email => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotVerifyOtpReqCopyWith<ForgotVerifyOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotVerifyOtpReqCopyWith<$Res> {
  factory $ForgotVerifyOtpReqCopyWith(
          ForgotVerifyOtpReq value, $Res Function(ForgotVerifyOtpReq) then) =
      _$ForgotVerifyOtpReqCopyWithImpl<$Res, ForgotVerifyOtpReq>;
  @useResult
  $Res call({String? email, int? otp, String? password});
}

/// @nodoc
class _$ForgotVerifyOtpReqCopyWithImpl<$Res, $Val extends ForgotVerifyOtpReq>
    implements $ForgotVerifyOtpReqCopyWith<$Res> {
  _$ForgotVerifyOtpReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
    Object? password = freezed,
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
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotVerifyOtpReqImplCopyWith<$Res>
    implements $ForgotVerifyOtpReqCopyWith<$Res> {
  factory _$$ForgotVerifyOtpReqImplCopyWith(_$ForgotVerifyOtpReqImpl value,
          $Res Function(_$ForgotVerifyOtpReqImpl) then) =
      __$$ForgotVerifyOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, int? otp, String? password});
}

/// @nodoc
class __$$ForgotVerifyOtpReqImplCopyWithImpl<$Res>
    extends _$ForgotVerifyOtpReqCopyWithImpl<$Res, _$ForgotVerifyOtpReqImpl>
    implements _$$ForgotVerifyOtpReqImplCopyWith<$Res> {
  __$$ForgotVerifyOtpReqImplCopyWithImpl(_$ForgotVerifyOtpReqImpl _value,
      $Res Function(_$ForgotVerifyOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
    Object? password = freezed,
  }) {
    return _then(_$ForgotVerifyOtpReqImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotVerifyOtpReqImpl implements _ForgotVerifyOtpReq {
  const _$ForgotVerifyOtpReqImpl({this.email, this.otp, this.password});

  factory _$ForgotVerifyOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotVerifyOtpReqImplFromJson(json);

  @override
  final String? email;
  @override
  final int? otp;
  @override
  final String? password;

  @override
  String toString() {
    return 'ForgotVerifyOtpReq(email: $email, otp: $otp, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotVerifyOtpReqImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotVerifyOtpReqImplCopyWith<_$ForgotVerifyOtpReqImpl> get copyWith =>
      __$$ForgotVerifyOtpReqImplCopyWithImpl<_$ForgotVerifyOtpReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotVerifyOtpReqImplToJson(
      this,
    );
  }
}

abstract class _ForgotVerifyOtpReq implements ForgotVerifyOtpReq {
  const factory _ForgotVerifyOtpReq(
      {final String? email,
      final int? otp,
      final String? password}) = _$ForgotVerifyOtpReqImpl;

  factory _ForgotVerifyOtpReq.fromJson(Map<String, dynamic> json) =
      _$ForgotVerifyOtpReqImpl.fromJson;

  @override
  String? get email;
  @override
  int? get otp;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$ForgotVerifyOtpReqImplCopyWith<_$ForgotVerifyOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForgotVerifyOtpRes _$ForgotVerifyOtpResFromJson(Map<String, dynamic> json) {
  return _ForgotVerifyOtpRes.fromJson(json);
}

/// @nodoc
mixin _$ForgotVerifyOtpRes {
  int? get code => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Datai? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotVerifyOtpResCopyWith<ForgotVerifyOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotVerifyOtpResCopyWith<$Res> {
  factory $ForgotVerifyOtpResCopyWith(
          ForgotVerifyOtpRes value, $Res Function(ForgotVerifyOtpRes) then) =
      _$ForgotVerifyOtpResCopyWithImpl<$Res, ForgotVerifyOtpRes>;
  @useResult
  $Res call({int? code, bool? status, String? message, Datai? data});

  $DataiCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgotVerifyOtpResCopyWithImpl<$Res, $Val extends ForgotVerifyOtpRes>
    implements $ForgotVerifyOtpResCopyWith<$Res> {
  _$ForgotVerifyOtpResCopyWithImpl(this._value, this._then);

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
              as int?,
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
              as Datai?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataiCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataiCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotVerifyOtpResImplCopyWith<$Res>
    implements $ForgotVerifyOtpResCopyWith<$Res> {
  factory _$$ForgotVerifyOtpResImplCopyWith(_$ForgotVerifyOtpResImpl value,
          $Res Function(_$ForgotVerifyOtpResImpl) then) =
      __$$ForgotVerifyOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, bool? status, String? message, Datai? data});

  @override
  $DataiCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ForgotVerifyOtpResImplCopyWithImpl<$Res>
    extends _$ForgotVerifyOtpResCopyWithImpl<$Res, _$ForgotVerifyOtpResImpl>
    implements _$$ForgotVerifyOtpResImplCopyWith<$Res> {
  __$$ForgotVerifyOtpResImplCopyWithImpl(_$ForgotVerifyOtpResImpl _value,
      $Res Function(_$ForgotVerifyOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ForgotVerifyOtpResImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as Datai?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotVerifyOtpResImpl implements _ForgotVerifyOtpRes {
  const _$ForgotVerifyOtpResImpl(
      {this.code, this.status, this.message, this.data});

  factory _$ForgotVerifyOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotVerifyOtpResImplFromJson(json);

  @override
  final int? code;
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final Datai? data;

  @override
  String toString() {
    return 'ForgotVerifyOtpRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotVerifyOtpResImpl &&
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
  _$$ForgotVerifyOtpResImplCopyWith<_$ForgotVerifyOtpResImpl> get copyWith =>
      __$$ForgotVerifyOtpResImplCopyWithImpl<_$ForgotVerifyOtpResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotVerifyOtpResImplToJson(
      this,
    );
  }
}

abstract class _ForgotVerifyOtpRes implements ForgotVerifyOtpRes {
  const factory _ForgotVerifyOtpRes(
      {final int? code,
      final bool? status,
      final String? message,
      final Datai? data}) = _$ForgotVerifyOtpResImpl;

  factory _ForgotVerifyOtpRes.fromJson(Map<String, dynamic> json) =
      _$ForgotVerifyOtpResImpl.fromJson;

  @override
  int? get code;
  @override
  bool? get status;
  @override
  String? get message;
  @override
  Datai? get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgotVerifyOtpResImplCopyWith<_$ForgotVerifyOtpResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datai _$DataiFromJson(Map<String, dynamic> json) {
  return _Datai.fromJson(json);
}

/// @nodoc
mixin _$Datai {
  String? get role => throw _privateConstructorUsedError;
  List<dynamic>? get userHealthData => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get expiaryDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataiCopyWith<Datai> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataiCopyWith<$Res> {
  factory $DataiCopyWith(Datai value, $Res Function(Datai) then) =
      _$DataiCopyWithImpl<$Res, Datai>;
  @useResult
  $Res call(
      {String? role,
      List<dynamic>? userHealthData,
      bool? isEmailVerified,
      String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$DataiCopyWithImpl<$Res, $Val extends Datai>
    implements $DataiCopyWith<$Res> {
  _$DataiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value.userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataiImplCopyWith<$Res> implements $DataiCopyWith<$Res> {
  factory _$$DataiImplCopyWith(
          _$DataiImpl value, $Res Function(_$DataiImpl) then) =
      __$$DataiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? role,
      List<dynamic>? userHealthData,
      bool? isEmailVerified,
      String? id,
      String? expiaryDate,
      String? name,
      String? email,
      String? phone,
      String? location,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$DataiImplCopyWithImpl<$Res>
    extends _$DataiCopyWithImpl<$Res, _$DataiImpl>
    implements _$$DataiImplCopyWith<$Res> {
  __$$DataiImplCopyWithImpl(
      _$DataiImpl _value, $Res Function(_$DataiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? userHealthData = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? expiaryDate = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataiImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value._userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataiImpl implements _Datai {
  const _$DataiImpl(
      {this.role,
      final List<dynamic>? userHealthData,
      this.isEmailVerified,
      this.id,
      this.expiaryDate,
      this.name,
      this.email,
      this.phone,
      this.location,
      this.createdAt,
      this.updatedAt})
      : _userHealthData = userHealthData;

  factory _$DataiImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataiImplFromJson(json);

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
  final bool? isEmailVerified;
  @override
  final String? id;
  @override
  final String? expiaryDate;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? location;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Datai(role: $role, userHealthData: $userHealthData, isEmailVerified: $isEmailVerified, id: $id, expiaryDate: $expiaryDate, name: $name, email: $email, phone: $phone, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataiImpl &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._userHealthData, _userHealthData) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expiaryDate, expiaryDate) ||
                other.expiaryDate == expiaryDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      const DeepCollectionEquality().hash(_userHealthData),
      isEmailVerified,
      id,
      expiaryDate,
      name,
      email,
      phone,
      location,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataiImplCopyWith<_$DataiImpl> get copyWith =>
      __$$DataiImplCopyWithImpl<_$DataiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataiImplToJson(
      this,
    );
  }
}

abstract class _Datai implements Datai {
  const factory _Datai(
      {final String? role,
      final List<dynamic>? userHealthData,
      final bool? isEmailVerified,
      final String? id,
      final String? expiaryDate,
      final String? name,
      final String? email,
      final String? phone,
      final String? location,
      final String? createdAt,
      final String? updatedAt}) = _$DataiImpl;

  factory _Datai.fromJson(Map<String, dynamic> json) = _$DataiImpl.fromJson;

  @override
  String? get role;
  @override
  List<dynamic>? get userHealthData;
  @override
  bool? get isEmailVerified;
  @override
  String? get id;
  @override
  String? get expiaryDate;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get location;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataiImplCopyWith<_$DataiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
