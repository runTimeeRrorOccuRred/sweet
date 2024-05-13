// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_sleep_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSleepReq _$UserSleepReqFromJson(Map<String, dynamic> json) {
  return _UserSleepReq.fromJson(json);
}

/// @nodoc
mixin _$UserSleepReq {
  String? get waterIntake => throw _privateConstructorUsedError;
  String? get sleep => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSleepReqCopyWith<UserSleepReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSleepReqCopyWith<$Res> {
  factory $UserSleepReqCopyWith(
          UserSleepReq value, $Res Function(UserSleepReq) then) =
      _$UserSleepReqCopyWithImpl<$Res, UserSleepReq>;
  @useResult
  $Res call({String? waterIntake, String? sleep, String? mode});
}

/// @nodoc
class _$UserSleepReqCopyWithImpl<$Res, $Val extends UserSleepReq>
    implements $UserSleepReqCopyWith<$Res> {
  _$UserSleepReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSleepReqImplCopyWith<$Res>
    implements $UserSleepReqCopyWith<$Res> {
  factory _$$UserSleepReqImplCopyWith(
          _$UserSleepReqImpl value, $Res Function(_$UserSleepReqImpl) then) =
      __$$UserSleepReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? waterIntake, String? sleep, String? mode});
}

/// @nodoc
class __$$UserSleepReqImplCopyWithImpl<$Res>
    extends _$UserSleepReqCopyWithImpl<$Res, _$UserSleepReqImpl>
    implements _$$UserSleepReqImplCopyWith<$Res> {
  __$$UserSleepReqImplCopyWithImpl(
      _$UserSleepReqImpl _value, $Res Function(_$UserSleepReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
  }) {
    return _then(_$UserSleepReqImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSleepReqImpl implements _UserSleepReq {
  const _$UserSleepReqImpl({this.waterIntake, this.sleep, this.mode});

  factory _$UserSleepReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSleepReqImplFromJson(json);

  @override
  final String? waterIntake;
  @override
  final String? sleep;
  @override
  final String? mode;

  @override
  String toString() {
    return 'UserSleepReq(waterIntake: $waterIntake, sleep: $sleep, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSleepReqImpl &&
            (identical(other.waterIntake, waterIntake) ||
                other.waterIntake == waterIntake) &&
            (identical(other.sleep, sleep) || other.sleep == sleep) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, waterIntake, sleep, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSleepReqImplCopyWith<_$UserSleepReqImpl> get copyWith =>
      __$$UserSleepReqImplCopyWithImpl<_$UserSleepReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSleepReqImplToJson(
      this,
    );
  }
}

abstract class _UserSleepReq implements UserSleepReq {
  const factory _UserSleepReq(
      {final String? waterIntake,
      final String? sleep,
      final String? mode}) = _$UserSleepReqImpl;

  factory _UserSleepReq.fromJson(Map<String, dynamic> json) =
      _$UserSleepReqImpl.fromJson;

  @override
  String? get waterIntake;
  @override
  String? get sleep;
  @override
  String? get mode;
  @override
  @JsonKey(ignore: true)
  _$$UserSleepReqImplCopyWith<_$UserSleepReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSleepRes _$UserSleepResFromJson(Map<String, dynamic> json) {
  return _UserSleepRes.fromJson(json);
}

/// @nodoc
mixin _$UserSleepRes {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSleepResCopyWith<UserSleepRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSleepResCopyWith<$Res> {
  factory $UserSleepResCopyWith(
          UserSleepRes value, $Res Function(UserSleepRes) then) =
      _$UserSleepResCopyWithImpl<$Res, UserSleepRes>;
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserSleepResCopyWithImpl<$Res, $Val extends UserSleepRes>
    implements $UserSleepResCopyWith<$Res> {
  _$UserSleepResCopyWithImpl(this._value, this._then);

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
abstract class _$$UserSleepResImplCopyWith<$Res>
    implements $UserSleepResCopyWith<$Res> {
  factory _$$UserSleepResImplCopyWith(
          _$UserSleepResImpl value, $Res Function(_$UserSleepResImpl) then) =
      __$$UserSleepResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserSleepResImplCopyWithImpl<$Res>
    extends _$UserSleepResCopyWithImpl<$Res, _$UserSleepResImpl>
    implements _$$UserSleepResImplCopyWith<$Res> {
  __$$UserSleepResImplCopyWithImpl(
      _$UserSleepResImpl _value, $Res Function(_$UserSleepResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserSleepResImpl(
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
class _$UserSleepResImpl implements _UserSleepRes {
  const _$UserSleepResImpl({this.code, this.message, this.status, this.data});

  factory _$UserSleepResImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSleepResImplFromJson(json);

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
    return 'UserSleepRes(code: $code, message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSleepResImpl &&
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
  _$$UserSleepResImplCopyWith<_$UserSleepResImpl> get copyWith =>
      __$$UserSleepResImplCopyWithImpl<_$UserSleepResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSleepResImplToJson(
      this,
    );
  }
}

abstract class _UserSleepRes implements UserSleepRes {
  const factory _UserSleepRes(
      {final int? code,
      final String? message,
      final bool? status,
      final Data? data}) = _$UserSleepResImpl;

  factory _UserSleepRes.fromJson(Map<String, dynamic> json) =
      _$UserSleepResImpl.fromJson;

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
  _$$UserSleepResImplCopyWith<_$UserSleepResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get role => throw _privateConstructorUsedError;
  String? get waterIntake => throw _privateConstructorUsedError;
  String? get sleep => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  List<dynamic>? get userHealthData => throw _privateConstructorUsedError;
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
      String? waterIntake,
      String? sleep,
      String? mode,
      bool? isEmailVerified,
      @JsonKey(name: "_id") String? id,
      List<dynamic>? userHealthData,
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
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? userHealthData = freezed,
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
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value.userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      String? waterIntake,
      String? sleep,
      String? mode,
      bool? isEmailVerified,
      @JsonKey(name: "_id") String? id,
      List<dynamic>? userHealthData,
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
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? isEmailVerified = freezed,
    Object? id = freezed,
    Object? userHealthData = freezed,
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
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userHealthData: freezed == userHealthData
          ? _value._userHealthData
          : userHealthData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      this.waterIntake,
      this.sleep,
      this.mode,
      this.isEmailVerified,
      @JsonKey(name: "_id") this.id,
      final List<dynamic>? userHealthData,
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
  @override
  final String? waterIntake;
  @override
  final String? sleep;
  @override
  final String? mode;
  @override
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "_id")
  final String? id;
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
    return 'Data(role: $role, waterIntake: $waterIntake, sleep: $sleep, mode: $mode, isEmailVerified: $isEmailVerified, id: $id, userHealthData: $userHealthData, expiaryDate: $expiaryDate, name: $name, email: $email, phone: $phone, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.waterIntake, waterIntake) ||
                other.waterIntake == waterIntake) &&
            (identical(other.sleep, sleep) || other.sleep == sleep) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._userHealthData, _userHealthData) &&
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
      waterIntake,
      sleep,
      mode,
      isEmailVerified,
      id,
      const DeepCollectionEquality().hash(_userHealthData),
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
      final String? waterIntake,
      final String? sleep,
      final String? mode,
      final bool? isEmailVerified,
      @JsonKey(name: "_id") final String? id,
      final List<dynamic>? userHealthData,
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
  String? get waterIntake;
  @override
  String? get sleep;
  @override
  String? get mode;
  @override
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  List<dynamic>? get userHealthData;
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
