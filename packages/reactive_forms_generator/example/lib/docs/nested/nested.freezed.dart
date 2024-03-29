// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubGroup _$SubGroupFromJson(Map<String, dynamic> json) {
  return _SubGroup.fromJson(json);
}

/// @nodoc
mixin _$SubGroup {
  @RfControl()
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubGroupCopyWith<SubGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubGroupCopyWith<$Res> {
  factory $SubGroupCopyWith(SubGroup value, $Res Function(SubGroup) then) =
      _$SubGroupCopyWithImpl<$Res, SubGroup>;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupCopyWithImpl<$Res, $Val extends SubGroup>
    implements $SubGroupCopyWith<$Res> {
  _$SubGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$_SubGroupCopyWith<$Res> implements $SubGroupCopyWith<$Res> {
  factory _$$_SubGroupCopyWith(
          _$_SubGroup value, $Res Function(_$_SubGroup) then) =
      __$$_SubGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$$_SubGroupCopyWithImpl<$Res>
    extends _$SubGroupCopyWithImpl<$Res, _$_SubGroup>
    implements _$$_SubGroupCopyWith<$Res> {
  __$$_SubGroupCopyWithImpl(
      _$_SubGroup _value, $Res Function(_$_SubGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_SubGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubGroup implements _SubGroup {
  const _$_SubGroup({@RfControl() required this.id});

  factory _$_SubGroup.fromJson(Map<String, dynamic> json) =>
      _$$_SubGroupFromJson(json);

  @override
  @RfControl()
  final String id;

  @override
  String toString() {
    return 'SubGroup(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubGroup &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubGroupCopyWith<_$_SubGroup> get copyWith =>
      __$$_SubGroupCopyWithImpl<_$_SubGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubGroupToJson(
      this,
    );
  }
}

abstract class _SubGroup implements SubGroup {
  const factory _SubGroup({@RfControl() required final String id}) =
      _$_SubGroup;

  factory _SubGroup.fromJson(Map<String, dynamic> json) = _$_SubGroup.fromJson;

  @override
  @RfControl()
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_SubGroupCopyWith<_$_SubGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  @RfControl()
  String get id => throw _privateConstructorUsedError;
  @RfArray<dynamic>()
  List<SubGroup> get subGroupList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroup> subGroupList});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as List<SubGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_GroupCopyWith(_$_Group value, $Res Function(_$_Group) then) =
      __$$_GroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroup> subGroupList});
}

/// @nodoc
class __$$_GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res, _$_Group>
    implements _$$_GroupCopyWith<$Res> {
  __$$_GroupCopyWithImpl(_$_Group _value, $Res Function(_$_Group) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_$_Group(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _value._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group implements _Group {
  const _$_Group(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroup> subGroupList})
      : _subGroupList = subGroupList;

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

  @override
  @RfControl()
  final String id;
  final List<SubGroup> _subGroupList;
  @override
  @RfArray<dynamic>()
  List<SubGroup> get subGroupList {
    if (_subGroupList is EqualUnmodifiableListView) return _subGroupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subGroupList);
  }

  @override
  String toString() {
    return 'Group(id: $id, subGroupList: $subGroupList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Group &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subGroupList, _subGroupList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_subGroupList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      __$$_GroupCopyWithImpl<_$_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group(
          {@RfControl() required final String id,
          @RfArray<dynamic>() required final List<SubGroup> subGroupList}) =
      _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  @RfControl()
  String get id;
  @override
  @RfArray<dynamic>()
  List<SubGroup> get subGroupList;
  @override
  @JsonKey(ignore: true)
  _$$_GroupCopyWith<_$_Group> get copyWith =>
      throw _privateConstructorUsedError;
}

Nested _$NestedFromJson(Map<String, dynamic> json) {
  return _Nested.fromJson(json);
}

/// @nodoc
mixin _$Nested {
  @RfArray<dynamic>()
  List<Group> get groupList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NestedCopyWith<Nested> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedCopyWith<$Res> {
  factory $NestedCopyWith(Nested value, $Res Function(Nested) then) =
      _$NestedCopyWithImpl<$Res, Nested>;
  @useResult
  $Res call({@RfArray<dynamic>() List<Group> groupList});
}

/// @nodoc
class _$NestedCopyWithImpl<$Res, $Val extends Nested>
    implements $NestedCopyWith<$Res> {
  _$NestedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_value.copyWith(
      groupList: null == groupList
          ? _value.groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NestedCopyWith<$Res> implements $NestedCopyWith<$Res> {
  factory _$$_NestedCopyWith(_$_Nested value, $Res Function(_$_Nested) then) =
      __$$_NestedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<Group> groupList});
}

/// @nodoc
class __$$_NestedCopyWithImpl<$Res>
    extends _$NestedCopyWithImpl<$Res, _$_Nested>
    implements _$$_NestedCopyWith<$Res> {
  __$$_NestedCopyWithImpl(_$_Nested _value, $Res Function(_$_Nested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_$_Nested(
      groupList: null == groupList
          ? _value._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nested implements _Nested {
  const _$_Nested({@RfArray<dynamic>() required final List<Group> groupList})
      : _groupList = groupList;

  factory _$_Nested.fromJson(Map<String, dynamic> json) =>
      _$$_NestedFromJson(json);

  final List<Group> _groupList;
  @override
  @RfArray<dynamic>()
  List<Group> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  @override
  String toString() {
    return 'Nested(groupList: $groupList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nested &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NestedCopyWith<_$_Nested> get copyWith =>
      __$$_NestedCopyWithImpl<_$_Nested>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NestedToJson(
      this,
    );
  }
}

abstract class _Nested implements Nested {
  const factory _Nested(
      {@RfArray<dynamic>() required final List<Group> groupList}) = _$_Nested;

  factory _Nested.fromJson(Map<String, dynamic> json) = _$_Nested.fromJson;

  @override
  @RfArray<dynamic>()
  List<Group> get groupList;
  @override
  @JsonKey(ignore: true)
  _$$_NestedCopyWith<_$_Nested> get copyWith =>
      throw _privateConstructorUsedError;
}
