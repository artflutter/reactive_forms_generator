// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tags<T> {
  @RfControl()
  List<T>? get tags;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TagsCopyWith<T, Tags<T>> get copyWith =>
      _$TagsCopyWithImpl<T, Tags<T>>(this as Tags<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Tags<T> &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'Tags<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $TagsCopyWith<T, $Res> {
  factory $TagsCopyWith(Tags<T> value, $Res Function(Tags<T>) _then) =
      _$TagsCopyWithImpl;
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class _$TagsCopyWithImpl<T, $Res> implements $TagsCopyWith<T, $Res> {
  _$TagsCopyWithImpl(this._self, this._then);

  final Tags<T> _self;
  final $Res Function(Tags<T>) _then;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_self.copyWith(
      tags: freezed == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _Tags<T> extends Tags<T> {
  _Tags({@RfControl() required final List<T>? tags})
      : _tags = tags,
        super._();

  final List<T>? _tags;
  @override
  @RfControl()
  List<T>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TagsCopyWith<T, _Tags<T>> get copyWith =>
      __$TagsCopyWithImpl<T, _Tags<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tags<T> &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'Tags<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$TagsCopyWith<T, $Res> implements $TagsCopyWith<T, $Res> {
  factory _$TagsCopyWith(_Tags<T> value, $Res Function(_Tags<T>) _then) =
      __$TagsCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class __$TagsCopyWithImpl<T, $Res> implements _$TagsCopyWith<T, $Res> {
  __$TagsCopyWithImpl(this._self, this._then);

  final _Tags<T> _self;
  final $Res Function(_Tags<T>) _then;

  /// Create a copy of Tags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_Tags<T>(
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

// dart format on
