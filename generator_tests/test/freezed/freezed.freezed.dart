// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
class _$TestTearOff {
  const _$TestTearOff();

  _Test call(@FormControlAnnotation() String? gender,
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year}) {
    return _Test(
      gender,
      id: id,
      name: name,
      year: year,
    );
  }

  Test fromJson(Map<String, Object> json) {
    return Test.fromJson(json);
  }
}

/// @nodoc
const $Test = _$TestTearOff();

/// @nodoc
mixin _$Test {
  @FormControlAnnotation()
  String? get gender => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get id => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get name => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  double? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation() String? gender,
      @FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year});
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  final Test _value;
  // ignore: unused_field
  final $Res Function(Test) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) then) =
      __$TestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation() String? gender,
      @FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year});
}

/// @nodoc
class __$TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res>
    implements _$TestCopyWith<$Res> {
  __$TestCopyWithImpl(_Test _value, $Res Function(_Test) _then)
      : super(_value, (v) => _then(v as _Test));

  @override
  _Test get _value => super._value as _Test;

  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
  }) {
    return _then(_Test(
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Test extends _Test {
  _$_Test(@FormControlAnnotation() this.gender,
      {@FormControlAnnotation() this.id,
      @FormControlAnnotation() this.name,
      @FormControlAnnotation() this.year})
      : super._();

  factory _$_Test.fromJson(Map<String, dynamic> json) => _$$_TestFromJson(json);

  @override
  @FormControlAnnotation()
  final String? gender;
  @override
  @FormControlAnnotation()
  final String? id;
  @override
  @FormControlAnnotation()
  final String? name;
  @override
  @FormControlAnnotation()
  final double? year;

  @override
  String toString() {
    return 'Test(gender: $gender, id: $id, name: $name, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Test &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestToJson(this);
  }
}

abstract class _Test extends Test {
  factory _Test(@FormControlAnnotation() String? gender,
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year}) = _$_Test;
  _Test._() : super._();

  factory _Test.fromJson(Map<String, dynamic> json) = _$_Test.fromJson;

  @override
  @FormControlAnnotation()
  String? get gender => throw _privateConstructorUsedError;
  @override
  @FormControlAnnotation()
  String? get id => throw _privateConstructorUsedError;
  @override
  @FormControlAnnotation()
  String? get name => throw _privateConstructorUsedError;
  @override
  @FormControlAnnotation()
  double? get year => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TestCopyWith<_Test> get copyWith => throw _privateConstructorUsedError;
}
