// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpReq _$SendOtpReqFromJson(Map<String, dynamic> json) {
  return _SendOtpReq.fromJson(json);
}

/// @nodoc
mixin _$SendOtpReq {
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpReqCopyWith<SendOtpReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpReqCopyWith<$Res> {
  factory $SendOtpReqCopyWith(
          SendOtpReq value, $Res Function(SendOtpReq) then) =
      _$SendOtpReqCopyWithImpl<$Res, SendOtpReq>;
  @useResult
  $Res call({String? email, String? role});
}

/// @nodoc
class _$SendOtpReqCopyWithImpl<$Res, $Val extends SendOtpReq>
    implements $SendOtpReqCopyWith<$Res> {
  _$SendOtpReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpReqImplCopyWith<$Res>
    implements $SendOtpReqCopyWith<$Res> {
  factory _$$SendOtpReqImplCopyWith(
          _$SendOtpReqImpl value, $Res Function(_$SendOtpReqImpl) then) =
      __$$SendOtpReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? role});
}

/// @nodoc
class __$$SendOtpReqImplCopyWithImpl<$Res>
    extends _$SendOtpReqCopyWithImpl<$Res, _$SendOtpReqImpl>
    implements _$$SendOtpReqImplCopyWith<$Res> {
  __$$SendOtpReqImplCopyWithImpl(
      _$SendOtpReqImpl _value, $Res Function(_$SendOtpReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? role = freezed,
  }) {
    return _then(_$SendOtpReqImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpReqImpl implements _SendOtpReq {
  const _$SendOtpReqImpl({this.email, this.role});

  factory _$SendOtpReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpReqImplFromJson(json);

  @override
  final String? email;
  @override
  final String? role;

  @override
  String toString() {
    return 'SendOtpReq(email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpReqImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpReqImplCopyWith<_$SendOtpReqImpl> get copyWith =>
      __$$SendOtpReqImplCopyWithImpl<_$SendOtpReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpReqImplToJson(
      this,
    );
  }
}

abstract class _SendOtpReq implements SendOtpReq {
  const factory _SendOtpReq({final String? email, final String? role}) =
      _$SendOtpReqImpl;

  factory _SendOtpReq.fromJson(Map<String, dynamic> json) =
      _$SendOtpReqImpl.fromJson;

  @override
  String? get email;
  @override
  String? get role;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpReqImplCopyWith<_$SendOtpReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendOtpRes _$SendOtpResFromJson(Map<String, dynamic> json) {
  return _SendOtpRes.fromJson(json);
}

/// @nodoc
mixin _$SendOtpRes {
  int? get code => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpResCopyWith<SendOtpRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpResCopyWith<$Res> {
  factory $SendOtpResCopyWith(
          SendOtpRes value, $Res Function(SendOtpRes) then) =
      _$SendOtpResCopyWithImpl<$Res, SendOtpRes>;
  @useResult
  $Res call({int? code, bool? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SendOtpResCopyWithImpl<$Res, $Val extends SendOtpRes>
    implements $SendOtpResCopyWith<$Res> {
  _$SendOtpResCopyWithImpl(this._value, this._then);

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
abstract class _$$SendOtpResImplCopyWith<$Res>
    implements $SendOtpResCopyWith<$Res> {
  factory _$$SendOtpResImplCopyWith(
          _$SendOtpResImpl value, $Res Function(_$SendOtpResImpl) then) =
      __$$SendOtpResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, bool? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SendOtpResImplCopyWithImpl<$Res>
    extends _$SendOtpResCopyWithImpl<$Res, _$SendOtpResImpl>
    implements _$$SendOtpResImplCopyWith<$Res> {
  __$$SendOtpResImplCopyWithImpl(
      _$SendOtpResImpl _value, $Res Function(_$SendOtpResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SendOtpResImpl(
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
class _$SendOtpResImpl implements _SendOtpRes {
  const _$SendOtpResImpl({this.code, this.status, this.message, this.data});

  factory _$SendOtpResImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpResImplFromJson(json);

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
    return 'SendOtpRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpResImpl &&
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
  _$$SendOtpResImplCopyWith<_$SendOtpResImpl> get copyWith =>
      __$$SendOtpResImplCopyWithImpl<_$SendOtpResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpResImplToJson(
      this,
    );
  }
}

abstract class _SendOtpRes implements SendOtpRes {
  const factory _SendOtpRes(
      {final int? code,
      final bool? status,
      final String? message,
      final Data? data}) = _$SendOtpResImpl;

  factory _SendOtpRes.fromJson(Map<String, dynamic> json) =
      _$SendOtpResImpl.fromJson;

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
  _$$SendOtpResImplCopyWith<_$SendOtpResImpl> get copyWith =>
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
