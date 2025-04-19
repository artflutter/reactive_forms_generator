// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Test {
  @RfControl<String>()
  String get title;
  @RfControl<String>()
  String? get description;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TestCopyWith<Test> get copyWith =>
      _$TestCopyWithImpl<Test>(this as Test, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Test &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'Test(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) _then) =
      _$TestCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl<String>() String title,
      @RfControl<String>() String? description});
}

/// @nodoc
class _$TestCopyWithImpl<$Res> implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._self, this._then);

  final Test _self;
  final $Res Function(Test) _then;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Test extends Test {
  const _Test(
      {@RfControl<String>() required this.title,
      @RfControl<String>() this.description})
      : super._();

  @override
  @RfControl<String>()
  final String title;
  @override
  @RfControl<String>()
  final String? description;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TestCopyWith<_Test> get copyWith =>
      __$TestCopyWithImpl<_Test>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Test &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @override
  String toString() {
    return 'Test(title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$TestCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$TestCopyWith(_Test value, $Res Function(_Test) _then) =
      __$TestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl<String>() String title,
      @RfControl<String>() String? description});
}

/// @nodoc
class __$TestCopyWithImpl<$Res> implements _$TestCopyWith<$Res> {
  __$TestCopyWithImpl(this._self, this._then);

  final _Test _self;
  final $Res Function(_Test) _then;

  /// Create a copy of Test
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_Test(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
