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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreezedClass _$FreezedClassFromJson(Map<String, dynamic> json) {
  return _FreezedClass.fromJson(json);
}

/// @nodoc
mixin _$FreezedClass {
  @FormControlAnnotation<String>()
  String? get gender => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>(validators: [requiredValidator])
  String? get id => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get name => throw _privateConstructorUsedError;
  @FormControlAnnotation<double>()
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
      {@FormControlAnnotation<String>()
          String? gender,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          String? id,
      @FormControlAnnotation<String>()
          String? name,
      @FormControlAnnotation<double>()
          double? year});
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
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreezedClassCopyWith<$Res>
    implements $FreezedClassCopyWith<$Res> {
  factory _$$_FreezedClassCopyWith(
          _$_FreezedClass value, $Res Function(_$_FreezedClass) then) =
      __$$_FreezedClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<String>()
          String? gender,
      @FormControlAnnotation<String>(validators: [requiredValidator])
          String? id,
      @FormControlAnnotation<String>()
          String? name,
      @FormControlAnnotation<double>()
          double? year});
}

/// @nodoc
class __$$_FreezedClassCopyWithImpl<$Res>
    extends _$FreezedClassCopyWithImpl<$Res, _$_FreezedClass>
    implements _$$_FreezedClassCopyWith<$Res> {
  __$$_FreezedClassCopyWithImpl(
      _$_FreezedClass _value, $Res Function(_$_FreezedClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_FreezedClass(
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
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreezedClass extends _FreezedClass {
  _$_FreezedClass(@FormControlAnnotation<String>() this.gender,
      {@FormControlAnnotation<String>(validators: [requiredValidator]) this.id,
      @FormControlAnnotation<String>() this.name,
      @FormControlAnnotation<double>() this.year})
      : super._();

  factory _$_FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$$_FreezedClassFromJson(json);

  @override
  @FormControlAnnotation<String>()
  final String? gender;
  @override
  @FormControlAnnotation<String>(validators: [requiredValidator])
  final String? id;
  @override
  @FormControlAnnotation<String>()
  final String? name;
  @override
  @FormControlAnnotation<double>()
  final double? year;

  @override
  String toString() {
    return 'FreezedClass(gender: $gender, id: $id, name: $name, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezedClass &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gender, id, name, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreezedClassCopyWith<_$_FreezedClass> get copyWith =>
      __$$_FreezedClassCopyWithImpl<_$_FreezedClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreezedClassToJson(
      this,
    );
  }
}

abstract class _FreezedClass extends FreezedClass {
  factory _FreezedClass(
      @FormControlAnnotation<String>()
          final String? gender,
      {@FormControlAnnotation<String>(validators: [requiredValidator])
          final String? id,
      @FormControlAnnotation<String>()
          final String? name,
      @FormControlAnnotation<double>()
          final double? year}) = _$_FreezedClass;
  _FreezedClass._() : super._();

  factory _FreezedClass.fromJson(Map<String, dynamic> json) =
      _$_FreezedClass.fromJson;

  @override
  @FormControlAnnotation<String>()
  String? get gender;
  @override
  @FormControlAnnotation<String>(validators: [requiredValidator])
  String? get id;
  @override
  @FormControlAnnotation<String>()
  String? get name;
  @override
  @FormControlAnnotation<double>()
  double? get year;
  @override
  @JsonKey(ignore: true)
  _$$_FreezedClassCopyWith<_$_FreezedClass> get copyWith =>
      throw _privateConstructorUsedError;
}
