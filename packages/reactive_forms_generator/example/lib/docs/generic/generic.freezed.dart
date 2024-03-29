// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Tags<T> {
  @RfControl()
  List<T>? get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsCopyWith<T, Tags<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<T, $Res> {
  factory $TagsCopyWith(Tags<T> value, $Res Function(Tags<T>) then) =
      _$TagsCopyWithImpl<T, $Res, Tags<T>>;
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class _$TagsCopyWithImpl<T, $Res, $Val extends Tags<T>>
    implements $TagsCopyWith<T, $Res> {
  _$TagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsImplCopyWith<T, $Res> implements $TagsCopyWith<T, $Res> {
  factory _$$TagsImplCopyWith(
          _$TagsImpl<T> value, $Res Function(_$TagsImpl<T>) then) =
      __$$TagsImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@RfControl() List<T>? tags});
}

/// @nodoc
class __$$TagsImplCopyWithImpl<T, $Res>
    extends _$TagsCopyWithImpl<T, $Res, _$TagsImpl<T>>
    implements _$$TagsImplCopyWith<T, $Res> {
  __$$TagsImplCopyWithImpl(
      _$TagsImpl<T> _value, $Res Function(_$TagsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$TagsImpl<T>(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$TagsImpl<T> extends _Tags<T> {
  _$TagsImpl({@RfControl() required final List<T>? tags})
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

  @override
  String toString() {
    return 'Tags<$T>(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsImpl<T> &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsImplCopyWith<T, _$TagsImpl<T>> get copyWith =>
      __$$TagsImplCopyWithImpl<T, _$TagsImpl<T>>(this, _$identity);
}

abstract class _Tags<T> extends Tags<T> {
  factory _Tags({@RfControl() required final List<T>? tags}) = _$TagsImpl<T>;
  _Tags._() : super._();

  @override
  @RfControl()
  List<T>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$TagsImplCopyWith<T, _$TagsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
