// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call(
      {@FormControlAnnotation<String>() String title,
      @FormControlAnnotation<String>() String? description});
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$_TestCopyWith(_$_Test value, $Res Function(_$_Test) then) =
      __$$_TestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<String>() String title,
      @FormControlAnnotation<String>() String? description});
}

/// @nodoc
class __$$_TestCopyWithImpl<$Res> extends _$TestCopyWithImpl<$Res, _$_Test>
    implements _$$_TestCopyWith<$Res> {
  __$$_TestCopyWithImpl(_$_Test _value, $Res Function(_$_Test) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$_Test(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
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
            other is _$_Test &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestCopyWith<_$_Test> get copyWith =>
      __$$_TestCopyWithImpl<_$_Test>(this, _$identity);
}

abstract class _Test extends Test {
  const factory _Test(
      {@FormControlAnnotation<String>() required final String title,
      @FormControlAnnotation<String>() final String? description}) = _$_Test;
  const _Test._() : super._();

  @override
  @FormControlAnnotation<String>()
  String get title;
  @override
  @FormControlAnnotation<String>()
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TestCopyWith<_$_Test> get copyWith => throw _privateConstructorUsedError;
}
