// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubGroup {
  @RfControl()
  String get id;

  /// Create a copy of SubGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubGroupCopyWith<SubGroup> get copyWith =>
      _$SubGroupCopyWithImpl<SubGroup>(this as SubGroup, _$identity);

  /// Serializes this SubGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubGroup &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroup(id: $id)';
  }
}

/// @nodoc
abstract mixin class $SubGroupCopyWith<$Res> {
  factory $SubGroupCopyWith(SubGroup value, $Res Function(SubGroup) _then) =
      _$SubGroupCopyWithImpl;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupCopyWithImpl<$Res> implements $SubGroupCopyWith<$Res> {
  _$SubGroupCopyWithImpl(this._self, this._then);

  final SubGroup _self;
  final $Res Function(SubGroup) _then;

  /// Create a copy of SubGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SubGroup implements SubGroup {
  const _SubGroup({@RfControl() required this.id});
  factory _SubGroup.fromJson(Map<String, dynamic> json) =>
      _$SubGroupFromJson(json);

  @override
  @RfControl()
  final String id;

  /// Create a copy of SubGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubGroupCopyWith<_SubGroup> get copyWith =>
      __$SubGroupCopyWithImpl<_SubGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubGroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubGroup &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroup(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SubGroupCopyWith<$Res>
    implements $SubGroupCopyWith<$Res> {
  factory _$SubGroupCopyWith(_SubGroup value, $Res Function(_SubGroup) _then) =
      __$SubGroupCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$SubGroupCopyWithImpl<$Res> implements _$SubGroupCopyWith<$Res> {
  __$SubGroupCopyWithImpl(this._self, this._then);

  final _SubGroup _self;
  final $Res Function(_SubGroup) _then;

  /// Create a copy of SubGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_SubGroup(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Group {
  @RfControl()
  String get id;
  @RfArray<dynamic>()
  List<SubGroup> get subGroupList;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupCopyWith<Group> get copyWith =>
      _$GroupCopyWithImpl<Group>(this as Group, _$identity);

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Group &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.subGroupList, subGroupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(subGroupList));

  @override
  String toString() {
    return 'Group(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) =
      _$GroupCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroup> subGroupList});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _self.subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Group implements Group {
  const _Group(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroup> subGroupList})
      : _subGroupList = subGroupList;
  factory _Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

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

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Group &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subGroupList, _subGroupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_subGroupList));

  @override
  String toString() {
    return 'Group(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) _then) =
      __$GroupCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroup> subGroupList});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(this._self, this._then);

  final _Group _self;
  final $Res Function(_Group) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_Group(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _self._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroup>,
    ));
  }
}

/// @nodoc
mixin _$Nested {
  @RfArray<dynamic>()
  List<Group> get groupList;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NestedCopyWith<Nested> get copyWith =>
      _$NestedCopyWithImpl<Nested>(this as Nested, _$identity);

  /// Serializes this Nested to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nested &&
            const DeepCollectionEquality().equals(other.groupList, groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupList));

  @override
  String toString() {
    return 'Nested(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class $NestedCopyWith<$Res> {
  factory $NestedCopyWith(Nested value, $Res Function(Nested) _then) =
      _$NestedCopyWithImpl;
  @useResult
  $Res call({@RfArray<dynamic>() List<Group> groupList});
}

/// @nodoc
class _$NestedCopyWithImpl<$Res> implements $NestedCopyWith<$Res> {
  _$NestedCopyWithImpl(this._self, this._then);

  final Nested _self;
  final $Res Function(Nested) _then;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_self.copyWith(
      groupList: null == groupList
          ? _self.groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Nested implements Nested {
  const _Nested({@RfArray<dynamic>() required final List<Group> groupList})
      : _groupList = groupList;
  factory _Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);

  final List<Group> _groupList;
  @override
  @RfArray<dynamic>()
  List<Group> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NestedCopyWith<_Nested> get copyWith =>
      __$NestedCopyWithImpl<_Nested>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NestedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nested &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  @override
  String toString() {
    return 'Nested(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class _$NestedCopyWith<$Res> implements $NestedCopyWith<$Res> {
  factory _$NestedCopyWith(_Nested value, $Res Function(_Nested) _then) =
      __$NestedCopyWithImpl;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<Group> groupList});
}

/// @nodoc
class __$NestedCopyWithImpl<$Res> implements _$NestedCopyWith<$Res> {
  __$NestedCopyWithImpl(this._self, this._then);

  final _Nested _self;
  final $Res Function(_Nested) _then;

  /// Create a copy of Nested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_Nested(
      groupList: null == groupList
          ? _self._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

// dart format on
