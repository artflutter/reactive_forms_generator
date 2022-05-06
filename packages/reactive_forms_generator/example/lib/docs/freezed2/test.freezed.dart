// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Test {
  @FormControlAnnotation<String>()
  String get title => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation<String>() String title,
      @FormControlAnnotation<String>() String? description});
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  final Test _value;
  // ignore: unused_field
  final $Res Function(Test) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) then) =
      __$TestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation<String>() String title,
      @FormControlAnnotation<String>() String? description});
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
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_Test(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Test extends _Test {
  const _$_Test(
      {@FormControlAnnotation<String>() required this.title,
      @FormControlAnnotation<String>() this.description})
      : super._();

  @override
  @FormControlAnnotation<String>()
  final String title;
  @override
  @FormControlAnnotation<String>()
  final String? description;

  @override
  String toString() {
    return 'Test(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Test &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);
}

abstract class _Test extends Test {
  const factory _Test(
      {@FormControlAnnotation<String>() required final String title,
      @FormControlAnnotation<String>() final String? description}) = _$_Test;
  const _Test._() : super._();

  @override
  @FormControlAnnotation<String>()
  String get title => throw _privateConstructorUsedError;
  @override
  @FormControlAnnotation<String>()
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TestCopyWith<_Test> get copyWith => throw _privateConstructorUsedError;
}
