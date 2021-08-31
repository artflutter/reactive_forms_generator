// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreezedClass _$FreezedClassFromJson(Map<String, dynamic> json) {
  return _FreezedClass.fromJson(json);
}

/// @nodoc
class _$FreezedClassTearOff {
  const _$FreezedClassTearOff();

  _FreezedClass call(
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year}) {
    return _FreezedClass(
      id: id,
      name: name,
      year: year,
    );
  }

  FreezedClass fromJson(Map<String, Object> json) {
    return FreezedClass.fromJson(json);
  }
}

/// @nodoc
const $FreezedClass = _$FreezedClassTearOff();

/// @nodoc
mixin _$FreezedClass {
  @FormControlAnnotation()
  String? get id => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get name => throw _privateConstructorUsedError;
  @FormControlAnnotation()
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
      _$FreezedClassCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year});
}

/// @nodoc
class _$FreezedClassCopyWithImpl<$Res> implements $FreezedClassCopyWith<$Res> {
  _$FreezedClassCopyWithImpl(this._value, this._then);

  final FreezedClass _value;
  // ignore: unused_field
  final $Res Function(FreezedClass) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$FreezedClassCopyWith<$Res>
    implements $FreezedClassCopyWith<$Res> {
  factory _$FreezedClassCopyWith(
          _FreezedClass value, $Res Function(_FreezedClass) then) =
      __$FreezedClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year});
}

/// @nodoc
class __$FreezedClassCopyWithImpl<$Res> extends _$FreezedClassCopyWithImpl<$Res>
    implements _$FreezedClassCopyWith<$Res> {
  __$FreezedClassCopyWithImpl(
      _FreezedClass _value, $Res Function(_FreezedClass) _then)
      : super(_value, (v) => _then(v as _FreezedClass));

  @override
  _FreezedClass get _value => super._value as _FreezedClass;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? year = freezed,
  }) {
    return _then(_FreezedClass(
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
class _$_FreezedClass implements _FreezedClass {
  const _$_FreezedClass(
      {@FormControlAnnotation() this.id,
      @FormControlAnnotation() this.name,
      @FormControlAnnotation() this.year});

  factory _$_FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$$_FreezedClassFromJson(json);

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
    return 'FreezedClass(id: $id, name: $name, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FreezedClass &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(year);

  @JsonKey(ignore: true)
  @override
  _$FreezedClassCopyWith<_FreezedClass> get copyWith =>
      __$FreezedClassCopyWithImpl<_FreezedClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreezedClassToJson(this);
  }
}

abstract class _FreezedClass implements FreezedClass {
  const factory _FreezedClass(
      {@FormControlAnnotation() String? id,
      @FormControlAnnotation() String? name,
      @FormControlAnnotation() double? year}) = _$_FreezedClass;

  factory _FreezedClass.fromJson(Map<String, dynamic> json) =
      _$_FreezedClass.fromJson;

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
  _$FreezedClassCopyWith<_FreezedClass> get copyWith =>
      throw _privateConstructorUsedError;
}
