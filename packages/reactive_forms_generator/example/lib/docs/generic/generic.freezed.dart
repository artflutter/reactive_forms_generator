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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tags<T> {
  @FormControlAnnotation()
  List<T>? get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsCopyWith<T, Tags<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsCopyWith<T, $Res> {
  factory $TagsCopyWith(Tags<T> value, $Res Function(Tags<T>) then) =
      _$TagsCopyWithImpl<T, $Res, Tags<T>>;
  @useResult
  $Res call({@FormControlAnnotation() List<T>? tags});
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
abstract class _$$_TagsCopyWith<T, $Res> implements $TagsCopyWith<T, $Res> {
  factory _$$_TagsCopyWith(_$_Tags<T> value, $Res Function(_$_Tags<T>) then) =
      __$$_TagsCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@FormControlAnnotation() List<T>? tags});
}

/// @nodoc
class __$$_TagsCopyWithImpl<T, $Res>
    extends _$TagsCopyWithImpl<T, $Res, _$_Tags<T>>
    implements _$$_TagsCopyWith<T, $Res> {
  __$$_TagsCopyWithImpl(_$_Tags<T> _value, $Res Function(_$_Tags<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$_Tags<T>(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc

class _$_Tags<T> extends _Tags<T> {
  _$_Tags({@FormControlAnnotation() required final List<T>? tags})
      : _tags = tags,
        super._();

  final List<T>? _tags;
  @override
  @FormControlAnnotation()
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tags<T> &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagsCopyWith<T, _$_Tags<T>> get copyWith =>
      __$$_TagsCopyWithImpl<T, _$_Tags<T>>(this, _$identity);
}

abstract class _Tags<T> extends Tags<T> {
  factory _Tags({@FormControlAnnotation() required final List<T>? tags}) =
      _$_Tags<T>;
  _Tags._() : super._();

  @override
  @FormControlAnnotation()
  List<T>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_TagsCopyWith<T, _$_Tags<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
