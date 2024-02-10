// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreezedClass _$FreezedClassFromJson(Map<String, dynamic> json) {
  return _FreezedClass.fromJson(json);
}

/// @nodoc
mixin _$FreezedClass {
  @RfControl<String>()
  String? get gender => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get id => throw _privateConstructorUsedError;
  @RfControl<String>()
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage => throw _privateConstructorUsedError;
  @RfControl<double>()
  double? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedClassCopyWith<FreezedClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedClassCopyWith<$Res> {
  factory $FreezedClassCopyWith(
          FreezedClass value, $Res Function(FreezedClass) then) =
      _$FreezedClassCopyWithImpl<$Res, FreezedClass>;
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? id,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year});
}

/// @nodoc
class _$FreezedClassCopyWithImpl<$Res, $Val extends FreezedClass>
    implements $FreezedClassCopyWith<$Res> {
  _$FreezedClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedClassImplCopyWith<$Res>
    implements $FreezedClassCopyWith<$Res> {
  factory _$$FreezedClassImplCopyWith(
          _$FreezedClassImpl value, $Res Function(_$FreezedClassImpl) then) =
      __$$FreezedClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? id,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year});
}

/// @nodoc
class __$$FreezedClassImplCopyWithImpl<$Res>
    extends _$FreezedClassCopyWithImpl<$Res, _$FreezedClassImpl>
    implements _$$FreezedClassImplCopyWith<$Res> {
  __$$FreezedClassImplCopyWithImpl(
      _$FreezedClassImpl _value, $Res Function(_$FreezedClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FreezedClassImpl(
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedClassImpl extends _FreezedClass {
  _$FreezedClassImpl(@RfControl<String>() this.gender,
      {@RfControl(validators: [RequiredValidator()]) this.id,
      @RfControl<String>() this.name,
      @JsonKey(name: 'logo_image') @RfControl<String>() this.logoImage,
      @RfControl<double>() this.year})
      : super._();

  factory _$FreezedClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedClassImplFromJson(json);

  @override
  @RfControl<String>()
  final String? gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? id;
  @override
  @RfControl<String>()
  final String? name;
  @override
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  final String? logoImage;
  @override
  @RfControl<double>()
  final double? year;

  @override
  String toString() {
    return 'FreezedClass(gender: $gender, id: $id, name: $name, logoImage: $logoImage, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedClassImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gender, id, name, logoImage, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedClassImplCopyWith<_$FreezedClassImpl> get copyWith =>
      __$$FreezedClassImplCopyWithImpl<_$FreezedClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedClassImplToJson(
      this,
    );
  }
}

abstract class _FreezedClass extends FreezedClass {
  factory _FreezedClass(@RfControl<String>() final String? gender,
      {@RfControl(validators: [RequiredValidator()]) final String? id,
      @RfControl<String>() final String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() final String? logoImage,
      @RfControl<double>() final double? year}) = _$FreezedClassImpl;
  _FreezedClass._() : super._();

  factory _FreezedClass.fromJson(Map<String, dynamic> json) =
      _$FreezedClassImpl.fromJson;

  @override
  @RfControl<String>()
  String? get gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get id;
  @override
  @RfControl<String>()
  String? get name;
  @override
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @override
  @RfControl<double>()
  double? get year;
  @override
  @JsonKey(ignore: true)
  _$$FreezedClassImplCopyWith<_$FreezedClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
