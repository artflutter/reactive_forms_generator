// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TagsO<T> {
  @RfControl()
  List<T>? get tags;

  /// Create a copy of TagsO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TagsOCopyWith<T, TagsO<T>> get copyWith =>
      _$TagsOCopyWithImpl<T, TagsO<T>>(this as TagsO<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TagsO<T> &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'TagsO<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $TagsOCopyWith<T, $Res> {
  factory $TagsOCopyWith(TagsO<T> value, $Res Function(TagsO<T>) _then) =
      _$TagsOCopyWithImpl;
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class _$TagsOCopyWithImpl<T, $Res> implements $TagsOCopyWith<T, $Res> {
  _$TagsOCopyWithImpl(this._self, this._then);

  final TagsO<T> _self;
  final $Res Function(TagsO<T>) _then;

  /// Create a copy of TagsO
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

class _TagsO<T> extends TagsO<T> {
  _TagsO({@RfControl() required final List<T>? tags})
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

  /// Create a copy of TagsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TagsOCopyWith<T, _TagsO<T>> get copyWith =>
      __$TagsOCopyWithImpl<T, _TagsO<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagsO<T> &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'TagsO<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$TagsOCopyWith<T, $Res>
    implements $TagsOCopyWith<T, $Res> {
  factory _$TagsOCopyWith(_TagsO<T> value, $Res Function(_TagsO<T>) _then) =
      __$TagsOCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class __$TagsOCopyWithImpl<T, $Res> implements _$TagsOCopyWith<T, $Res> {
  __$TagsOCopyWithImpl(this._self, this._then);

  final _TagsO<T> _self;
  final $Res Function(_TagsO<T>) _then;

  /// Create a copy of TagsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_TagsO<T>(
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
mixin _$TagsOOutput<T> {
  @RfControl()
  List<T>? get tags;

  /// Create a copy of TagsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TagsOOutputCopyWith<T, TagsOOutput<T>> get copyWith =>
      _$TagsOOutputCopyWithImpl<T, TagsOOutput<T>>(
          this as TagsOOutput<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TagsOOutput<T> &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'TagsOOutput<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $TagsOOutputCopyWith<T, $Res> {
  factory $TagsOOutputCopyWith(
          TagsOOutput<T> value, $Res Function(TagsOOutput<T>) _then) =
      _$TagsOOutputCopyWithImpl;
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class _$TagsOOutputCopyWithImpl<T, $Res>
    implements $TagsOOutputCopyWith<T, $Res> {
  _$TagsOOutputCopyWithImpl(this._self, this._then);

  final TagsOOutput<T> _self;
  final $Res Function(TagsOOutput<T>) _then;

  /// Create a copy of TagsOOutput
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

class _TagsOOutput<T> extends TagsOOutput<T> {
  _TagsOOutput({@RfControl() required final List<T>? tags})
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

  /// Create a copy of TagsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TagsOOutputCopyWith<T, _TagsOOutput<T>> get copyWith =>
      __$TagsOOutputCopyWithImpl<T, _TagsOOutput<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TagsOOutput<T> &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'TagsOOutput<$T>(tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$TagsOOutputCopyWith<T, $Res>
    implements $TagsOOutputCopyWith<T, $Res> {
  factory _$TagsOOutputCopyWith(
          _TagsOOutput<T> value, $Res Function(_TagsOOutput<T>) _then) =
      __$TagsOOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class __$TagsOOutputCopyWithImpl<T, $Res>
    implements _$TagsOOutputCopyWith<T, $Res> {
  __$TagsOOutputCopyWithImpl(this._self, this._then);

  final _TagsOOutput<T> _self;
  final $Res Function(_TagsOOutput<T>) _then;

  /// Create a copy of TagsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_TagsOOutput<T>(
      tags: freezed == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

// dart format on
