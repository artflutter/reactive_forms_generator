// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubGroupO _$SubGroupOFromJson(Map<String, dynamic> json) {
  return _SubGroupO.fromJson(json);
}

/// @nodoc
mixin _$SubGroupO {
  @RfControl()
  String get id => throw _privateConstructorUsedError;

  /// Serializes this SubGroupO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubGroupOCopyWith<SubGroupO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubGroupOCopyWith<$Res> {
  factory $SubGroupOCopyWith(SubGroupO value, $Res Function(SubGroupO) then) =
      _$SubGroupOCopyWithImpl<$Res, SubGroupO>;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupOCopyWithImpl<$Res, $Val extends SubGroupO>
    implements $SubGroupOCopyWith<$Res> {
  _$SubGroupOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubGroupOImplCopyWith<$Res>
    implements $SubGroupOCopyWith<$Res> {
  factory _$$SubGroupOImplCopyWith(
          _$SubGroupOImpl value, $Res Function(_$SubGroupOImpl) then) =
      __$$SubGroupOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$$SubGroupOImplCopyWithImpl<$Res>
    extends _$SubGroupOCopyWithImpl<$Res, _$SubGroupOImpl>
    implements _$$SubGroupOImplCopyWith<$Res> {
  __$$SubGroupOImplCopyWithImpl(
      _$SubGroupOImpl _value, $Res Function(_$SubGroupOImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SubGroupOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubGroupOImpl implements _SubGroupO {
  const _$SubGroupOImpl({@RfControl() required this.id});

  factory _$SubGroupOImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubGroupOImplFromJson(json);

  @override
  @RfControl()
  final String id;

  @override
  String toString() {
    return 'SubGroupO(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubGroupOImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubGroupOImplCopyWith<_$SubGroupOImpl> get copyWith =>
      __$$SubGroupOImplCopyWithImpl<_$SubGroupOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubGroupOImplToJson(
      this,
    );
  }
}

abstract class _SubGroupO implements SubGroupO {
  const factory _SubGroupO({@RfControl() required final String id}) =
      _$SubGroupOImpl;

  factory _SubGroupO.fromJson(Map<String, dynamic> json) =
      _$SubGroupOImpl.fromJson;

  @override
  @RfControl()
  String get id;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubGroupOImplCopyWith<_$SubGroupOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupO _$GroupOFromJson(Map<String, dynamic> json) {
  return _GroupO.fromJson(json);
}

/// @nodoc
mixin _$GroupO {
  @RfControl()
  String get id => throw _privateConstructorUsedError;
  @RfArray<dynamic>()
  List<SubGroupO> get subGroupList => throw _privateConstructorUsedError;

  /// Serializes this GroupO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupOCopyWith<GroupO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOCopyWith<$Res> {
  factory $GroupOCopyWith(GroupO value, $Res Function(GroupO) then) =
      _$GroupOCopyWithImpl<$Res, GroupO>;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupO> subGroupList});
}

/// @nodoc
class _$GroupOCopyWithImpl<$Res, $Val extends GroupO>
    implements $GroupOCopyWith<$Res> {
  _$GroupOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _value.subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupOImplCopyWith<$Res> implements $GroupOCopyWith<$Res> {
  factory _$$GroupOImplCopyWith(
          _$GroupOImpl value, $Res Function(_$GroupOImpl) then) =
      __$$GroupOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupO> subGroupList});
}

/// @nodoc
class __$$GroupOImplCopyWithImpl<$Res>
    extends _$GroupOCopyWithImpl<$Res, _$GroupOImpl>
    implements _$$GroupOImplCopyWith<$Res> {
  __$$GroupOImplCopyWithImpl(
      _$GroupOImpl _value, $Res Function(_$GroupOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_$GroupOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _value._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupOImpl implements _GroupO {
  const _$GroupOImpl(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroupO> subGroupList})
      : _subGroupList = subGroupList;

  factory _$GroupOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupOImplFromJson(json);

  @override
  @RfControl()
  final String id;
  final List<SubGroupO> _subGroupList;
  @override
  @RfArray<dynamic>()
  List<SubGroupO> get subGroupList {
    if (_subGroupList is EqualUnmodifiableListView) return _subGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subGroupList);
  }

  @override
  String toString() {
    return 'GroupO(id: $id, subGroupList: $subGroupList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupOImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subGroupList, _subGroupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_subGroupList));

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupOImplCopyWith<_$GroupOImpl> get copyWith =>
      __$$GroupOImplCopyWithImpl<_$GroupOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupOImplToJson(
      this,
    );
  }
}

abstract class _GroupO implements GroupO {
  const factory _GroupO(
          {@RfControl() required final String id,
          @RfArray<dynamic>() required final List<SubGroupO> subGroupList}) =
      _$GroupOImpl;

  factory _GroupO.fromJson(Map<String, dynamic> json) = _$GroupOImpl.fromJson;

  @override
  @RfControl()
  String get id;
  @override
  @RfArray<dynamic>()
  List<SubGroupO> get subGroupList;

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupOImplCopyWith<_$GroupOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NestedO _$NestedOFromJson(Map<String, dynamic> json) {
  return _NestedO.fromJson(json);
}

/// @nodoc
mixin _$NestedO {
  @RfArray<dynamic>()
  List<GroupO> get groupList => throw _privateConstructorUsedError;

  /// Serializes this NestedO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NestedOCopyWith<NestedO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedOCopyWith<$Res> {
  factory $NestedOCopyWith(NestedO value, $Res Function(NestedO) then) =
      _$NestedOCopyWithImpl<$Res, NestedO>;
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupO> groupList});
}

/// @nodoc
class _$NestedOCopyWithImpl<$Res, $Val extends NestedO>
    implements $NestedOCopyWith<$Res> {
  _$NestedOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_value.copyWith(
      groupList: null == groupList
          ? _value.groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NestedOImplCopyWith<$Res> implements $NestedOCopyWith<$Res> {
  factory _$$NestedOImplCopyWith(
          _$NestedOImpl value, $Res Function(_$NestedOImpl) then) =
      __$$NestedOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupO> groupList});
}

/// @nodoc
class __$$NestedOImplCopyWithImpl<$Res>
    extends _$NestedOCopyWithImpl<$Res, _$NestedOImpl>
    implements _$$NestedOImplCopyWith<$Res> {
  __$$NestedOImplCopyWithImpl(
      _$NestedOImpl _value, $Res Function(_$NestedOImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_$NestedOImpl(
      groupList: null == groupList
          ? _value._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NestedOImpl implements _NestedO {
  const _$NestedOImpl(
      {@RfArray<dynamic>() required final List<GroupO> groupList})
      : _groupList = groupList;

  factory _$NestedOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NestedOImplFromJson(json);

  final List<GroupO> _groupList;
  @override
  @RfArray<dynamic>()
  List<GroupO> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  @override
  String toString() {
    return 'NestedO(groupList: $groupList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NestedOImpl &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NestedOImplCopyWith<_$NestedOImpl> get copyWith =>
      __$$NestedOImplCopyWithImpl<_$NestedOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NestedOImplToJson(
      this,
    );
  }
}

abstract class _NestedO implements NestedO {
  const factory _NestedO(
          {@RfArray<dynamic>() required final List<GroupO> groupList}) =
      _$NestedOImpl;

  factory _NestedO.fromJson(Map<String, dynamic> json) = _$NestedOImpl.fromJson;

  @override
  @RfArray<dynamic>()
  List<GroupO> get groupList;

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NestedOImplCopyWith<_$NestedOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubGroupOOutput _$SubGroupOOutputFromJson(Map<String, dynamic> json) {
  return _SubGroupOOutput.fromJson(json);
}

/// @nodoc
mixin _$SubGroupOOutput {
  @RfControl()
  String get id => throw _privateConstructorUsedError;

  /// Serializes this SubGroupOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubGroupOOutputCopyWith<SubGroupOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubGroupOOutputCopyWith<$Res> {
  factory $SubGroupOOutputCopyWith(
          SubGroupOOutput value, $Res Function(SubGroupOOutput) then) =
      _$SubGroupOOutputCopyWithImpl<$Res, SubGroupOOutput>;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupOOutputCopyWithImpl<$Res, $Val extends SubGroupOOutput>
    implements $SubGroupOOutputCopyWith<$Res> {
  _$SubGroupOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubGroupOOutputImplCopyWith<$Res>
    implements $SubGroupOOutputCopyWith<$Res> {
  factory _$$SubGroupOOutputImplCopyWith(_$SubGroupOOutputImpl value,
          $Res Function(_$SubGroupOOutputImpl) then) =
      __$$SubGroupOOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$$SubGroupOOutputImplCopyWithImpl<$Res>
    extends _$SubGroupOOutputCopyWithImpl<$Res, _$SubGroupOOutputImpl>
    implements _$$SubGroupOOutputImplCopyWith<$Res> {
  __$$SubGroupOOutputImplCopyWithImpl(
      _$SubGroupOOutputImpl _value, $Res Function(_$SubGroupOOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SubGroupOOutputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubGroupOOutputImpl implements _SubGroupOOutput {
  const _$SubGroupOOutputImpl({@RfControl() required this.id});

  factory _$SubGroupOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubGroupOOutputImplFromJson(json);

  @override
  @RfControl()
  final String id;

  @override
  String toString() {
    return 'SubGroupOOutput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubGroupOOutputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubGroupOOutputImplCopyWith<_$SubGroupOOutputImpl> get copyWith =>
      __$$SubGroupOOutputImplCopyWithImpl<_$SubGroupOOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubGroupOOutputImplToJson(
      this,
    );
  }
}

abstract class _SubGroupOOutput implements SubGroupOOutput {
  const factory _SubGroupOOutput({@RfControl() required final String id}) =
      _$SubGroupOOutputImpl;

  factory _SubGroupOOutput.fromJson(Map<String, dynamic> json) =
      _$SubGroupOOutputImpl.fromJson;

  @override
  @RfControl()
  String get id;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubGroupOOutputImplCopyWith<_$SubGroupOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupOOutput _$GroupOOutputFromJson(Map<String, dynamic> json) {
  return _GroupOOutput.fromJson(json);
}

/// @nodoc
mixin _$GroupOOutput {
  @RfControl()
  String get id => throw _privateConstructorUsedError;
  @RfArray<dynamic>()
  List<SubGroupOOutput> get subGroupList => throw _privateConstructorUsedError;

  /// Serializes this GroupOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupOOutputCopyWith<GroupOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupOOutputCopyWith<$Res> {
  factory $GroupOOutputCopyWith(
          GroupOOutput value, $Res Function(GroupOOutput) then) =
      _$GroupOOutputCopyWithImpl<$Res, GroupOOutput>;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupOOutput> subGroupList});
}

/// @nodoc
class _$GroupOOutputCopyWithImpl<$Res, $Val extends GroupOOutput>
    implements $GroupOOutputCopyWith<$Res> {
  _$GroupOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _value.subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupOOutput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupOOutputImplCopyWith<$Res>
    implements $GroupOOutputCopyWith<$Res> {
  factory _$$GroupOOutputImplCopyWith(
          _$GroupOOutputImpl value, $Res Function(_$GroupOOutputImpl) then) =
      __$$GroupOOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupOOutput> subGroupList});
}

/// @nodoc
class __$$GroupOOutputImplCopyWithImpl<$Res>
    extends _$GroupOOutputCopyWithImpl<$Res, _$GroupOOutputImpl>
    implements _$$GroupOOutputImplCopyWith<$Res> {
  __$$GroupOOutputImplCopyWithImpl(
      _$GroupOOutputImpl _value, $Res Function(_$GroupOOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_$GroupOOutputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _value._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupOOutput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupOOutputImpl implements _GroupOOutput {
  const _$GroupOOutputImpl(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroupOOutput> subGroupList})
      : _subGroupList = subGroupList;

  factory _$GroupOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupOOutputImplFromJson(json);

  @override
  @RfControl()
  final String id;
  final List<SubGroupOOutput> _subGroupList;
  @override
  @RfArray<dynamic>()
  List<SubGroupOOutput> get subGroupList {
    if (_subGroupList is EqualUnmodifiableListView) return _subGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subGroupList);
  }

  @override
  String toString() {
    return 'GroupOOutput(id: $id, subGroupList: $subGroupList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupOOutputImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subGroupList, _subGroupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_subGroupList));

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupOOutputImplCopyWith<_$GroupOOutputImpl> get copyWith =>
      __$$GroupOOutputImplCopyWithImpl<_$GroupOOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupOOutputImplToJson(
      this,
    );
  }
}

abstract class _GroupOOutput implements GroupOOutput {
  const factory _GroupOOutput(
      {@RfControl() required final String id,
      @RfArray<dynamic>()
      required final List<SubGroupOOutput> subGroupList}) = _$GroupOOutputImpl;

  factory _GroupOOutput.fromJson(Map<String, dynamic> json) =
      _$GroupOOutputImpl.fromJson;

  @override
  @RfControl()
  String get id;
  @override
  @RfArray<dynamic>()
  List<SubGroupOOutput> get subGroupList;

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupOOutputImplCopyWith<_$GroupOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NestedOOutput _$NestedOOutputFromJson(Map<String, dynamic> json) {
  return _NestedOOutput.fromJson(json);
}

/// @nodoc
mixin _$NestedOOutput {
  @RfArray<dynamic>()
  List<GroupOOutput> get groupList => throw _privateConstructorUsedError;

  /// Serializes this NestedOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NestedOOutputCopyWith<NestedOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedOOutputCopyWith<$Res> {
  factory $NestedOOutputCopyWith(
          NestedOOutput value, $Res Function(NestedOOutput) then) =
      _$NestedOOutputCopyWithImpl<$Res, NestedOOutput>;
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupOOutput> groupList});
}

/// @nodoc
class _$NestedOOutputCopyWithImpl<$Res, $Val extends NestedOOutput>
    implements $NestedOOutputCopyWith<$Res> {
  _$NestedOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_value.copyWith(
      groupList: null == groupList
          ? _value.groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupOOutput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NestedOOutputImplCopyWith<$Res>
    implements $NestedOOutputCopyWith<$Res> {
  factory _$$NestedOOutputImplCopyWith(
          _$NestedOOutputImpl value, $Res Function(_$NestedOOutputImpl) then) =
      __$$NestedOOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupOOutput> groupList});
}

/// @nodoc
class __$$NestedOOutputImplCopyWithImpl<$Res>
    extends _$NestedOOutputCopyWithImpl<$Res, _$NestedOOutputImpl>
    implements _$$NestedOOutputImplCopyWith<$Res> {
  __$$NestedOOutputImplCopyWithImpl(
      _$NestedOOutputImpl _value, $Res Function(_$NestedOOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_$NestedOOutputImpl(
      groupList: null == groupList
          ? _value._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupOOutput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NestedOOutputImpl implements _NestedOOutput {
  const _$NestedOOutputImpl(
      {@RfArray<dynamic>() required final List<GroupOOutput> groupList})
      : _groupList = groupList;

  factory _$NestedOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NestedOOutputImplFromJson(json);

  final List<GroupOOutput> _groupList;
  @override
  @RfArray<dynamic>()
  List<GroupOOutput> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  @override
  String toString() {
    return 'NestedOOutput(groupList: $groupList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NestedOOutputImpl &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NestedOOutputImplCopyWith<_$NestedOOutputImpl> get copyWith =>
      __$$NestedOOutputImplCopyWithImpl<_$NestedOOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NestedOOutputImplToJson(
      this,
    );
  }
}

abstract class _NestedOOutput implements NestedOOutput {
  const factory _NestedOOutput(
          {@RfArray<dynamic>() required final List<GroupOOutput> groupList}) =
      _$NestedOOutputImpl;

  factory _NestedOOutput.fromJson(Map<String, dynamic> json) =
      _$NestedOOutputImpl.fromJson;

  @override
  @RfArray<dynamic>()
  List<GroupOOutput> get groupList;

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NestedOOutputImplCopyWith<_$NestedOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
