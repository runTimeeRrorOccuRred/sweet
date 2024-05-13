// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocialLoginRequestModel _$SocialLoginRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SocialLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SocialLoginRequestModel {
  @JsonKey(name: "uid")
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "loginType")
  String? get loginType => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLoginRequestModelCopyWith<SocialLoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginRequestModelCopyWith<$Res> {
  factory $SocialLoginRequestModelCopyWith(SocialLoginRequestModel value,
          $Res Function(SocialLoginRequestModel) then) =
      _$SocialLoginRequestModelCopyWithImpl<$Res, SocialLoginRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String? uid,
      @JsonKey(name: "loginType") String? loginType,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class _$SocialLoginRequestModelCopyWithImpl<$Res,
        $Val extends SocialLoginRequestModel>
    implements $SocialLoginRequestModelCopyWith<$Res> {
  _$SocialLoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? loginType = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialLoginRequestModelImplCopyWith<$Res>
    implements $SocialLoginRequestModelCopyWith<$Res> {
  factory _$$SocialLoginRequestModelImplCopyWith(
          _$SocialLoginRequestModelImpl value,
          $Res Function(_$SocialLoginRequestModelImpl) then) =
      __$$SocialLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String? uid,
      @JsonKey(name: "loginType") String? loginType,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class __$$SocialLoginRequestModelImplCopyWithImpl<$Res>
    extends _$SocialLoginRequestModelCopyWithImpl<$Res,
        _$SocialLoginRequestModelImpl>
    implements _$$SocialLoginRequestModelImplCopyWith<$Res> {
  __$$SocialLoginRequestModelImplCopyWithImpl(
      _$SocialLoginRequestModelImpl _value,
      $Res Function(_$SocialLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? loginType = freezed,
    Object? email = freezed,
  }) {
    return _then(_$SocialLoginRequestModelImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialLoginRequestModelImpl implements _SocialLoginRequestModel {
  const _$SocialLoginRequestModelImpl(
      {@JsonKey(name: "uid") this.uid,
      @JsonKey(name: "loginType") this.loginType,
      @JsonKey(name: "email") this.email});

  factory _$SocialLoginRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLoginRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "uid")
  final String? uid;
  @override
  @JsonKey(name: "loginType")
  final String? loginType;
  @override
  @JsonKey(name: "email")
  final String? email;

  @override
  String toString() {
    return 'SocialLoginRequestModel(uid: $uid, loginType: $loginType, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginRequestModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, loginType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginRequestModelImplCopyWith<_$SocialLoginRequestModelImpl>
      get copyWith => __$$SocialLoginRequestModelImplCopyWithImpl<
          _$SocialLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SocialLoginRequestModel implements SocialLoginRequestModel {
  const factory _SocialLoginRequestModel(
          {@JsonKey(name: "uid") final String? uid,
          @JsonKey(name: "loginType") final String? loginType,
          @JsonKey(name: "email") final String? email}) =
      _$SocialLoginRequestModelImpl;

  factory _SocialLoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$SocialLoginRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "uid")
  String? get uid;
  @override
  @JsonKey(name: "loginType")
  String? get loginType;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$SocialLoginRequestModelImplCopyWith<_$SocialLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SocialLoginResponseModel _$SocialLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SocialLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SocialLoginResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLoginResponseModelCopyWith<SocialLoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLoginResponseModelCopyWith<$Res> {
  factory $SocialLoginResponseModelCopyWith(SocialLoginResponseModel value,
          $Res Function(SocialLoginResponseModel) then) =
      _$SocialLoginResponseModelCopyWithImpl<$Res, SocialLoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SocialLoginResponseModelCopyWithImpl<$Res,
        $Val extends SocialLoginResponseModel>
    implements $SocialLoginResponseModelCopyWith<$Res> {
  _$SocialLoginResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SocialLoginResponseModelImplCopyWith<$Res>
    implements $SocialLoginResponseModelCopyWith<$Res> {
  factory _$$SocialLoginResponseModelImplCopyWith(
          _$SocialLoginResponseModelImpl value,
          $Res Function(_$SocialLoginResponseModelImpl) then) =
      __$$SocialLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SocialLoginResponseModelImplCopyWithImpl<$Res>
    extends _$SocialLoginResponseModelCopyWithImpl<$Res,
        _$SocialLoginResponseModelImpl>
    implements _$$SocialLoginResponseModelImplCopyWith<$Res> {
  __$$SocialLoginResponseModelImplCopyWithImpl(
      _$SocialLoginResponseModelImpl _value,
      $Res Function(_$SocialLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SocialLoginResponseModelImpl(
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
class _$SocialLoginResponseModelImpl implements _SocialLoginResponseModel {
  const _$SocialLoginResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "data") this.data});

  factory _$SocialLoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialLoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'SocialLoginResponseModel(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginResponseModelImpl &&
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
  _$$SocialLoginResponseModelImplCopyWith<_$SocialLoginResponseModelImpl>
      get copyWith => __$$SocialLoginResponseModelImplCopyWithImpl<
          _$SocialLoginResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SocialLoginResponseModel implements SocialLoginResponseModel {
  const factory _SocialLoginResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "status") final bool? status,
          @JsonKey(name: "data") final Data? data}) =
      _$SocialLoginResponseModelImpl;

  factory _SocialLoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$SocialLoginResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$SocialLoginResponseModelImplCopyWith<_$SocialLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "waterIntake")
  String? get waterIntake => throw _privateConstructorUsedError;
  @JsonKey(name: "sleep")
  String? get sleep => throw _privateConstructorUsedError;
  @JsonKey(name: "mode")
  String? get mode => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "uid")
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "newuser")
  bool? get newuser => throw _privateConstructorUsedError;
  @JsonKey(name: "loginType")
  String? get loginType => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "tokens")
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
      {@JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "waterIntake") String? waterIntake,
      @JsonKey(name: "sleep") String? sleep,
      @JsonKey(name: "mode") String? mode,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "newuser") bool? newuser,
      @JsonKey(name: "loginType") String? loginType,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "tokens") Tokens? tokens});

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
    Object? otp = freezed,
    Object? role = freezed,
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? image = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? uid = freezed,
    Object? newuser = freezed,
    Object? loginType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      waterIntake: freezed == waterIntake
          ? _value.waterIntake
          : waterIntake // ignore: cast_nullable_to_non_nullable
              as String?,
      sleep: freezed == sleep
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      newuser: freezed == newuser
          ? _value.newuser
          : newuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "waterIntake") String? waterIntake,
      @JsonKey(name: "sleep") String? sleep,
      @JsonKey(name: "mode") String? mode,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "newuser") bool? newuser,
      @JsonKey(name: "loginType") String? loginType,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "tokens") Tokens? tokens});

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
    Object? otp = freezed,
    Object? role = freezed,
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? image = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? uid = freezed,
    Object? newuser = freezed,
    Object? loginType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? tokens = freezed,
  }) {
    return _then(_$DataImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      waterIntake: freezed == waterIntake
          ? _value.waterIntake
          : waterIntake // ignore: cast_nullable_to_non_nullable
              as String?,
      sleep: freezed == sleep
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as String?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      newuser: freezed == newuser
          ? _value.newuser
          : newuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      loginType: freezed == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "otp") this.otp,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "waterIntake") this.waterIntake,
      @JsonKey(name: "sleep") this.sleep,
      @JsonKey(name: "mode") this.mode,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "uid") this.uid,
      @JsonKey(name: "newuser") this.newuser,
      @JsonKey(name: "loginType") this.loginType,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v,
      @JsonKey(name: "tokens") this.tokens});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "waterIntake")
  final String? waterIntake;
  @override
  @JsonKey(name: "sleep")
  final String? sleep;
  @override
  @JsonKey(name: "mode")
  final String? mode;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "uid")
  final String? uid;
  @override
  @JsonKey(name: "newuser")
  final bool? newuser;
  @override
  @JsonKey(name: "loginType")
  final String? loginType;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "tokens")
  final Tokens? tokens;

  @override
  String toString() {
    return 'Data(otp: $otp, role: $role, waterIntake: $waterIntake, sleep: $sleep, mode: $mode, image: $image, isEmailVerified: $isEmailVerified, id: $id, uid: $uid, newuser: $newuser, loginType: $loginType, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.waterIntake, waterIntake) ||
                other.waterIntake == waterIntake) &&
            (identical(other.sleep, sleep) || other.sleep == sleep) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.newuser, newuser) || other.newuser == newuser) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(otp),
      role,
      waterIntake,
      sleep,
      mode,
      image,
      isEmailVerified,
      id,
      uid,
      newuser,
      loginType,
      createdAt,
      updatedAt,
      v,
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
      {@JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "waterIntake") final String? waterIntake,
      @JsonKey(name: "sleep") final String? sleep,
      @JsonKey(name: "mode") final String? mode,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "uid") final String? uid,
      @JsonKey(name: "newuser") final bool? newuser,
      @JsonKey(name: "loginType") final String? loginType,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v,
      @JsonKey(name: "tokens") final Tokens? tokens}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "waterIntake")
  String? get waterIntake;
  @override
  @JsonKey(name: "sleep")
  String? get sleep;
  @override
  @JsonKey(name: "mode")
  String? get mode;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "uid")
  String? get uid;
  @override
  @JsonKey(name: "newuser")
  bool? get newuser;
  @override
  @JsonKey(name: "loginType")
  String? get loginType;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "tokens")
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
  @JsonKey(name: "access")
  Access? get access => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh")
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
  $Res call(
      {@JsonKey(name: "access") Access? access,
      @JsonKey(name: "refresh") Access? refresh});

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
  $Res call(
      {@JsonKey(name: "access") Access? access,
      @JsonKey(name: "refresh") Access? refresh});

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
  const _$TokensImpl(
      {@JsonKey(name: "access") this.access,
      @JsonKey(name: "refresh") this.refresh});

  factory _$TokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokensImplFromJson(json);

  @override
  @JsonKey(name: "access")
  final Access? access;
  @override
  @JsonKey(name: "refresh")
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
  const factory _Tokens(
      {@JsonKey(name: "access") final Access? access,
      @JsonKey(name: "refresh") final Access? refresh}) = _$TokensImpl;

  factory _Tokens.fromJson(Map<String, dynamic> json) = _$TokensImpl.fromJson;

  @override
  @JsonKey(name: "access")
  Access? get access;
  @override
  @JsonKey(name: "refresh")
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
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "expires")
  DateTime? get expires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "expires") DateTime? expires});
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
              as DateTime?,
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
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "expires") DateTime? expires});
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
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccessImpl implements _Access {
  const _$AccessImpl(
      {@JsonKey(name: "token") this.token,
      @JsonKey(name: "expires") this.expires});

  factory _$AccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "expires")
  final DateTime? expires;

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
  const factory _Access(
      {@JsonKey(name: "token") final String? token,
      @JsonKey(name: "expires") final DateTime? expires}) = _$AccessImpl;

  factory _Access.fromJson(Map<String, dynamic> json) = _$AccessImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "expires")
  DateTime? get expires;
  @override
  @JsonKey(ignore: true)
  _$$AccessImplCopyWith<_$AccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
