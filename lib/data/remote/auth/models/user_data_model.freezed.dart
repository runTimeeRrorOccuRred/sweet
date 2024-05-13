// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataRes _$UserDataResFromJson(Map<String, dynamic> json) {
  return _UserDataRes.fromJson(json);
}

/// @nodoc
mixin _$UserDataRes {
  String? get code => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataResCopyWith<UserDataRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataResCopyWith<$Res> {
  factory $UserDataResCopyWith(
          UserDataRes value, $Res Function(UserDataRes) then) =
      _$UserDataResCopyWithImpl<$Res, UserDataRes>;
  @useResult
  $Res call({String? code, bool? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserDataResCopyWithImpl<$Res, $Val extends UserDataRes>
    implements $UserDataResCopyWith<$Res> {
  _$UserDataResCopyWithImpl(this._value, this._then);

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
abstract class _$$UserDataResImplCopyWith<$Res>
    implements $UserDataResCopyWith<$Res> {
  factory _$$UserDataResImplCopyWith(
          _$UserDataResImpl value, $Res Function(_$UserDataResImpl) then) =
      __$$UserDataResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, bool? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserDataResImplCopyWithImpl<$Res>
    extends _$UserDataResCopyWithImpl<$Res, _$UserDataResImpl>
    implements _$$UserDataResImplCopyWith<$Res> {
  __$$UserDataResImplCopyWithImpl(
      _$UserDataResImpl _value, $Res Function(_$UserDataResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserDataResImpl(
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
class _$UserDataResImpl implements _UserDataRes {
  const _$UserDataResImpl({this.code, this.status, this.message, this.data});

  factory _$UserDataResImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataResImplFromJson(json);

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
    return 'UserDataRes(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataResImpl &&
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
  _$$UserDataResImplCopyWith<_$UserDataResImpl> get copyWith =>
      __$$UserDataResImplCopyWithImpl<_$UserDataResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataResImplToJson(
      this,
    );
  }
}

abstract class _UserDataRes implements UserDataRes {
  const factory _UserDataRes(
      {final String? code,
      final bool? status,
      final String? message,
      final Data? data}) = _$UserDataResImpl;

  factory _UserDataRes.fromJson(Map<String, dynamic> json) =
      _$UserDataResImpl.fromJson;

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
  _$$UserDataResImplCopyWith<_$UserDataResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get waterIntake => throw _privateConstructorUsedError;
  String? get sleep => throw _privateConstructorUsedError;
  String? get mode => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get unitOfHeight => throw _privateConstructorUsedError;
  String? get unitOfweight => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<HealthDatum>? get healthData => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      String? role,
      String? waterIntake,
      String? sleep,
      String? mode,
      bool? isEmailVerified,
      String? name,
      String? email,
      String? password,
      String? phone,
      String? region,
      String? countryCode,
      String? location,
      String? dob,
      String? gender,
      double? height,
      String? unitOfHeight,
      String? unitOfweight,
      int? weight,
      String? image,
      List<HealthDatum>? healthData});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? isEmailVerified = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? region = freezed,
    Object? countryCode = freezed,
    Object? location = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? unitOfHeight = freezed,
    Object? unitOfweight = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? healthData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      unitOfHeight: freezed == unitOfHeight
          ? _value.unitOfHeight
          : unitOfHeight // ignore: cast_nullable_to_non_nullable
              as String?,
      unitOfweight: freezed == unitOfweight
          ? _value.unitOfweight
          : unitOfweight // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      healthData: freezed == healthData
          ? _value.healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDatum>?,
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
      {@JsonKey(name: '_id') String? id,
      String? role,
      String? waterIntake,
      String? sleep,
      String? mode,
      bool? isEmailVerified,
      String? name,
      String? email,
      String? password,
      String? phone,
      String? region,
      String? countryCode,
      String? location,
      String? dob,
      String? gender,
      double? height,
      String? unitOfHeight,
      String? unitOfweight,
      int? weight,
      String? image,
      List<HealthDatum>? healthData});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? waterIntake = freezed,
    Object? sleep = freezed,
    Object? mode = freezed,
    Object? isEmailVerified = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? region = freezed,
    Object? countryCode = freezed,
    Object? location = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? unitOfHeight = freezed,
    Object? unitOfweight = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? healthData = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      unitOfHeight: freezed == unitOfHeight
          ? _value.unitOfHeight
          : unitOfHeight // ignore: cast_nullable_to_non_nullable
              as String?,
      unitOfweight: freezed == unitOfweight
          ? _value.unitOfweight
          : unitOfweight // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      healthData: freezed == healthData
          ? _value._healthData
          : healthData // ignore: cast_nullable_to_non_nullable
              as List<HealthDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: '_id') this.id,
      this.role,
      this.waterIntake,
      this.sleep,
      this.mode,
      this.isEmailVerified,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.region,
      this.countryCode,
      this.location,
      this.dob,
      this.gender,
      this.height,
      this.unitOfHeight,
      this.unitOfweight,
      this.weight,
      this.image,
      final List<HealthDatum>? healthData})
      : _healthData = healthData;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final String? region;
  @override
  final String? countryCode;
  @override
  final String? location;
  @override
  final String? dob;
  @override
  final String? gender;
  @override
  final double? height;
  @override
  final String? unitOfHeight;
  @override
  final String? unitOfweight;
  @override
  final int? weight;
  @override
  final String? image;
  final List<HealthDatum>? _healthData;
  @override
  List<HealthDatum>? get healthData {
    final value = _healthData;
    if (value == null) return null;
    if (_healthData is EqualUnmodifiableListView) return _healthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, role: $role, waterIntake: $waterIntake, sleep: $sleep, mode: $mode, isEmailVerified: $isEmailVerified, name: $name, email: $email, password: $password, phone: $phone, region: $region, countryCode: $countryCode, location: $location, dob: $dob, gender: $gender, height: $height, unitOfHeight: $unitOfHeight, unitOfweight: $unitOfweight, weight: $weight, image: $image, healthData: $healthData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.waterIntake, waterIntake) ||
                other.waterIntake == waterIntake) &&
            (identical(other.sleep, sleep) || other.sleep == sleep) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.unitOfHeight, unitOfHeight) ||
                other.unitOfHeight == unitOfHeight) &&
            (identical(other.unitOfweight, unitOfweight) ||
                other.unitOfweight == unitOfweight) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._healthData, _healthData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        waterIntake,
        sleep,
        mode,
        isEmailVerified,
        name,
        email,
        password,
        phone,
        region,
        countryCode,
        location,
        dob,
        gender,
        height,
        unitOfHeight,
        unitOfweight,
        weight,
        image,
        const DeepCollectionEquality().hash(_healthData)
      ]);

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
      {@JsonKey(name: '_id') final String? id,
      final String? role,
      final String? waterIntake,
      final String? sleep,
      final String? mode,
      final bool? isEmailVerified,
      final String? name,
      final String? email,
      final String? password,
      final String? phone,
      final String? region,
      final String? countryCode,
      final String? location,
      final String? dob,
      final String? gender,
      final double? height,
      final String? unitOfHeight,
      final String? unitOfweight,
      final int? weight,
      final String? image,
      final List<HealthDatum>? healthData}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
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
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get phone;
  @override
  String? get region;
  @override
  String? get countryCode;
  @override
  String? get location;
  @override
  String? get dob;
  @override
  String? get gender;
  @override
  double? get height;
  @override
  String? get unitOfHeight;
  @override
  String? get unitOfweight;
  @override
  int? get weight;
  @override
  String? get image;
  @override
  List<HealthDatum>? get healthData;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthDatum _$HealthDatumFromJson(Map<String, dynamic> json) {
  return _HealthDatum.fromJson(json);
}

/// @nodoc
mixin _$HealthDatum {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  List<Answear>? get answear => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get subQuestion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthDatumCopyWith<HealthDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthDatumCopyWith<$Res> {
  factory $HealthDatumCopyWith(
          HealthDatum value, $Res Function(HealthDatum) then) =
      _$HealthDatumCopyWithImpl<$Res, HealthDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<Answear>? answear,
      String? userId,
      String? questionId,
      String? question,
      String? subQuestion});
}

/// @nodoc
class _$HealthDatumCopyWithImpl<$Res, $Val extends HealthDatum>
    implements $HealthDatumCopyWith<$Res> {
  _$HealthDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answear = freezed,
    Object? userId = freezed,
    Object? questionId = freezed,
    Object? question = freezed,
    Object? subQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answear: freezed == answear
          ? _value.answear
          : answear // ignore: cast_nullable_to_non_nullable
              as List<Answear>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthDatumImplCopyWith<$Res>
    implements $HealthDatumCopyWith<$Res> {
  factory _$$HealthDatumImplCopyWith(
          _$HealthDatumImpl value, $Res Function(_$HealthDatumImpl) then) =
      __$$HealthDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      List<Answear>? answear,
      String? userId,
      String? questionId,
      String? question,
      String? subQuestion});
}

/// @nodoc
class __$$HealthDatumImplCopyWithImpl<$Res>
    extends _$HealthDatumCopyWithImpl<$Res, _$HealthDatumImpl>
    implements _$$HealthDatumImplCopyWith<$Res> {
  __$$HealthDatumImplCopyWithImpl(
      _$HealthDatumImpl _value, $Res Function(_$HealthDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? answear = freezed,
    Object? userId = freezed,
    Object? questionId = freezed,
    Object? question = freezed,
    Object? subQuestion = freezed,
  }) {
    return _then(_$HealthDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      answear: freezed == answear
          ? _value._answear
          : answear // ignore: cast_nullable_to_non_nullable
              as List<Answear>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      subQuestion: freezed == subQuestion
          ? _value.subQuestion
          : subQuestion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthDatumImpl implements _HealthDatum {
  const _$HealthDatumImpl(
      {@JsonKey(name: '_id') this.id,
      final List<Answear>? answear,
      this.userId,
      this.questionId,
      this.question,
      this.subQuestion})
      : _answear = answear;

  factory _$HealthDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthDatumImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
  final String? userId;
  @override
  final String? questionId;
  @override
  final String? question;
  @override
  final String? subQuestion;

  @override
  String toString() {
    return 'HealthDatum(id: $id, answear: $answear, userId: $userId, questionId: $questionId, question: $question, subQuestion: $subQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._answear, _answear) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.subQuestion, subQuestion) ||
                other.subQuestion == subQuestion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_answear),
      userId,
      questionId,
      question,
      subQuestion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthDatumImplCopyWith<_$HealthDatumImpl> get copyWith =>
      __$$HealthDatumImplCopyWithImpl<_$HealthDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthDatumImplToJson(
      this,
    );
  }
}

abstract class _HealthDatum implements HealthDatum {
  const factory _HealthDatum(
      {@JsonKey(name: '_id') final String? id,
      final List<Answear>? answear,
      final String? userId,
      final String? questionId,
      final String? question,
      final String? subQuestion}) = _$HealthDatumImpl;

  factory _HealthDatum.fromJson(Map<String, dynamic> json) =
      _$HealthDatumImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  List<Answear>? get answear;
  @override
  String? get userId;
  @override
  String? get questionId;
  @override
  String? get question;
  @override
  String? get subQuestion;
  @override
  @JsonKey(ignore: true)
  _$$HealthDatumImplCopyWith<_$HealthDatumImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswearCopyWith<Answear> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswearCopyWith<$Res> {
  factory $AnswearCopyWith(Answear value, $Res Function(Answear) then) =
      _$AnswearCopyWithImpl<$Res, Answear>;
  @useResult
  $Res call({String? answerId, String? answer, String? subAnswer});
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
  $Res call({String? answerId, String? answer, String? subAnswer});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswearImpl implements _Answear {
  const _$AnswearImpl({this.answerId, this.answer, this.subAnswer});

  factory _$AnswearImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswearImplFromJson(json);

  @override
  final String? answerId;
  @override
  final String? answer;
  @override
  final String? subAnswer;

  @override
  String toString() {
    return 'Answear(answerId: $answerId, answer: $answer, subAnswer: $subAnswer)';
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
                other.subAnswer == subAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answerId, answer, subAnswer);

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
      final String? subAnswer}) = _$AnswearImpl;

  factory _Answear.fromJson(Map<String, dynamic> json) = _$AnswearImpl.fromJson;

  @override
  String? get answerId;
  @override
  String? get answer;
  @override
  String? get subAnswer;
  @override
  @JsonKey(ignore: true)
  _$$AnswearImplCopyWith<_$AnswearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
