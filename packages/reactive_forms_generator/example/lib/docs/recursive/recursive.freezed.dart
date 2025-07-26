// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recursive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecuredArea {
  String? get id;
  SecuredArea? get securedArea;
  @RfArray<SecuredArea>()
  List<SecuredArea> get subSecuredAreas;

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SecuredAreaCopyWith<SecuredArea> get copyWith =>
      _$SecuredAreaCopyWithImpl<SecuredArea>(this as SecuredArea, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecuredArea &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.securedArea, securedArea) ||
                other.securedArea == securedArea) &&
            const DeepCollectionEquality()
                .equals(other.subSecuredAreas, subSecuredAreas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, securedArea,
      const DeepCollectionEquality().hash(subSecuredAreas));

  @override
  String toString() {
    return 'SecuredArea(id: $id, securedArea: $securedArea, subSecuredAreas: $subSecuredAreas)';
  }
}

/// @nodoc
abstract mixin class $SecuredAreaCopyWith<$Res> {
  factory $SecuredAreaCopyWith(
          SecuredArea value, $Res Function(SecuredArea) _then) =
      _$SecuredAreaCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      SecuredArea? securedArea,
      @RfArray<SecuredArea>() List<SecuredArea> subSecuredAreas});

  $SecuredAreaCopyWith<$Res>? get securedArea;
}

/// @nodoc
class _$SecuredAreaCopyWithImpl<$Res> implements $SecuredAreaCopyWith<$Res> {
  _$SecuredAreaCopyWithImpl(this._self, this._then);

  final SecuredArea _self;
  final $Res Function(SecuredArea) _then;

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? securedArea = freezed,
    Object? subSecuredAreas = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      securedArea: freezed == securedArea
          ? _self.securedArea
          : securedArea // ignore: cast_nullable_to_non_nullable
              as SecuredArea?,
      subSecuredAreas: null == subSecuredAreas
          ? _self.subSecuredAreas
          : subSecuredAreas // ignore: cast_nullable_to_non_nullable
              as List<SecuredArea>,
    ));
  }

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecuredAreaCopyWith<$Res>? get securedArea {
    if (_self.securedArea == null) {
      return null;
    }

    return $SecuredAreaCopyWith<$Res>(_self.securedArea!, (value) {
      return _then(_self.copyWith(securedArea: value));
    });
  }
}

/// @nodoc

class _SecuredArea implements SecuredArea {
  const _SecuredArea(
      {this.id,
      this.securedArea,
      @RfArray<SecuredArea>()
      final List<SecuredArea> subSecuredAreas = const []})
      : _subSecuredAreas = subSecuredAreas;

  @override
  final String? id;
  @override
  final SecuredArea? securedArea;
  final List<SecuredArea> _subSecuredAreas;
  @override
  @JsonKey()
  @RfArray<SecuredArea>()
  List<SecuredArea> get subSecuredAreas {
    if (_subSecuredAreas is EqualUnmodifiableListView) return _subSecuredAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subSecuredAreas);
  }

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SecuredAreaCopyWith<_SecuredArea> get copyWith =>
      __$SecuredAreaCopyWithImpl<_SecuredArea>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecuredArea &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.securedArea, securedArea) ||
                other.securedArea == securedArea) &&
            const DeepCollectionEquality()
                .equals(other._subSecuredAreas, _subSecuredAreas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, securedArea,
      const DeepCollectionEquality().hash(_subSecuredAreas));

  @override
  String toString() {
    return 'SecuredArea(id: $id, securedArea: $securedArea, subSecuredAreas: $subSecuredAreas)';
  }
}

/// @nodoc
abstract mixin class _$SecuredAreaCopyWith<$Res>
    implements $SecuredAreaCopyWith<$Res> {
  factory _$SecuredAreaCopyWith(
          _SecuredArea value, $Res Function(_SecuredArea) _then) =
      __$SecuredAreaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      SecuredArea? securedArea,
      @RfArray<SecuredArea>() List<SecuredArea> subSecuredAreas});

  @override
  $SecuredAreaCopyWith<$Res>? get securedArea;
}

/// @nodoc
class __$SecuredAreaCopyWithImpl<$Res> implements _$SecuredAreaCopyWith<$Res> {
  __$SecuredAreaCopyWithImpl(this._self, this._then);

  final _SecuredArea _self;
  final $Res Function(_SecuredArea) _then;

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? securedArea = freezed,
    Object? subSecuredAreas = null,
  }) {
    return _then(_SecuredArea(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      securedArea: freezed == securedArea
          ? _self.securedArea
          : securedArea // ignore: cast_nullable_to_non_nullable
              as SecuredArea?,
      subSecuredAreas: null == subSecuredAreas
          ? _self._subSecuredAreas
          : subSecuredAreas // ignore: cast_nullable_to_non_nullable
              as List<SecuredArea>,
    ));
  }

  /// Create a copy of SecuredArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecuredAreaCopyWith<$Res>? get securedArea {
    if (_self.securedArea == null) {
      return null;
    }

    return $SecuredAreaCopyWith<$Res>(_self.securedArea!, (value) {
      return _then(_self.copyWith(securedArea: value));
    });
  }
}

// dart format on
