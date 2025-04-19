// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubGroupO {
  @RfControl()
  String get id;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubGroupOCopyWith<SubGroupO> get copyWith =>
      _$SubGroupOCopyWithImpl<SubGroupO>(this as SubGroupO, _$identity);

  /// Serializes this SubGroupO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubGroupO &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroupO(id: $id)';
  }
}

/// @nodoc
abstract mixin class $SubGroupOCopyWith<$Res> {
  factory $SubGroupOCopyWith(SubGroupO value, $Res Function(SubGroupO) _then) =
      _$SubGroupOCopyWithImpl;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupOCopyWithImpl<$Res> implements $SubGroupOCopyWith<$Res> {
  _$SubGroupOCopyWithImpl(this._self, this._then);

  final SubGroupO _self;
  final $Res Function(SubGroupO) _then;

  /// Create a copy of SubGroupO
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
class _SubGroupO implements SubGroupO {
  const _SubGroupO({@RfControl() required this.id});
  factory _SubGroupO.fromJson(Map<String, dynamic> json) =>
      _$SubGroupOFromJson(json);

  @override
  @RfControl()
  final String id;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubGroupOCopyWith<_SubGroupO> get copyWith =>
      __$SubGroupOCopyWithImpl<_SubGroupO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubGroupOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubGroupO &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroupO(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SubGroupOCopyWith<$Res>
    implements $SubGroupOCopyWith<$Res> {
  factory _$SubGroupOCopyWith(
          _SubGroupO value, $Res Function(_SubGroupO) _then) =
      __$SubGroupOCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$SubGroupOCopyWithImpl<$Res> implements _$SubGroupOCopyWith<$Res> {
  __$SubGroupOCopyWithImpl(this._self, this._then);

  final _SubGroupO _self;
  final $Res Function(_SubGroupO) _then;

  /// Create a copy of SubGroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_SubGroupO(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$GroupO {
  @RfControl()
  String get id;
  @RfArray<dynamic>()
  List<SubGroupO> get subGroupList;

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupOCopyWith<GroupO> get copyWith =>
      _$GroupOCopyWithImpl<GroupO>(this as GroupO, _$identity);

  /// Serializes this GroupO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupO &&
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
    return 'GroupO(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class $GroupOCopyWith<$Res> {
  factory $GroupOCopyWith(GroupO value, $Res Function(GroupO) _then) =
      _$GroupOCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupO> subGroupList});
}

/// @nodoc
class _$GroupOCopyWithImpl<$Res> implements $GroupOCopyWith<$Res> {
  _$GroupOCopyWithImpl(this._self, this._then);

  final GroupO _self;
  final $Res Function(GroupO) _then;

  /// Create a copy of GroupO
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
              as List<SubGroupO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GroupO implements GroupO {
  const _GroupO(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroupO> subGroupList})
      : _subGroupList = subGroupList;
  factory _GroupO.fromJson(Map<String, dynamic> json) => _$GroupOFromJson(json);

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

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupOCopyWith<_GroupO> get copyWith =>
      __$GroupOCopyWithImpl<_GroupO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupO &&
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
    return 'GroupO(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class _$GroupOCopyWith<$Res> implements $GroupOCopyWith<$Res> {
  factory _$GroupOCopyWith(_GroupO value, $Res Function(_GroupO) _then) =
      __$GroupOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupO> subGroupList});
}

/// @nodoc
class __$GroupOCopyWithImpl<$Res> implements _$GroupOCopyWith<$Res> {
  __$GroupOCopyWithImpl(this._self, this._then);

  final _GroupO _self;
  final $Res Function(_GroupO) _then;

  /// Create a copy of GroupO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_GroupO(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _self._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupO>,
    ));
  }
}

/// @nodoc
mixin _$NestedO {
  @RfArray<dynamic>()
  List<GroupO> get groupList;

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NestedOCopyWith<NestedO> get copyWith =>
      _$NestedOCopyWithImpl<NestedO>(this as NestedO, _$identity);

  /// Serializes this NestedO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NestedO &&
            const DeepCollectionEquality().equals(other.groupList, groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupList));

  @override
  String toString() {
    return 'NestedO(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class $NestedOCopyWith<$Res> {
  factory $NestedOCopyWith(NestedO value, $Res Function(NestedO) _then) =
      _$NestedOCopyWithImpl;
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupO> groupList});
}

/// @nodoc
class _$NestedOCopyWithImpl<$Res> implements $NestedOCopyWith<$Res> {
  _$NestedOCopyWithImpl(this._self, this._then);

  final NestedO _self;
  final $Res Function(NestedO) _then;

  /// Create a copy of NestedO
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
              as List<GroupO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NestedO implements NestedO {
  const _NestedO({@RfArray<dynamic>() required final List<GroupO> groupList})
      : _groupList = groupList;
  factory _NestedO.fromJson(Map<String, dynamic> json) =>
      _$NestedOFromJson(json);

  final List<GroupO> _groupList;
  @override
  @RfArray<dynamic>()
  List<GroupO> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NestedOCopyWith<_NestedO> get copyWith =>
      __$NestedOCopyWithImpl<_NestedO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NestedOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NestedO &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  @override
  String toString() {
    return 'NestedO(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class _$NestedOCopyWith<$Res> implements $NestedOCopyWith<$Res> {
  factory _$NestedOCopyWith(_NestedO value, $Res Function(_NestedO) _then) =
      __$NestedOCopyWithImpl;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupO> groupList});
}

/// @nodoc
class __$NestedOCopyWithImpl<$Res> implements _$NestedOCopyWith<$Res> {
  __$NestedOCopyWithImpl(this._self, this._then);

  final _NestedO _self;
  final $Res Function(_NestedO) _then;

  /// Create a copy of NestedO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_NestedO(
      groupList: null == groupList
          ? _self._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupO>,
    ));
  }
}

/// @nodoc
mixin _$SubGroupOOutput {
  @RfControl()
  String get id;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubGroupOOutputCopyWith<SubGroupOOutput> get copyWith =>
      _$SubGroupOOutputCopyWithImpl<SubGroupOOutput>(
          this as SubGroupOOutput, _$identity);

  /// Serializes this SubGroupOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubGroupOOutput &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroupOOutput(id: $id)';
  }
}

/// @nodoc
abstract mixin class $SubGroupOOutputCopyWith<$Res> {
  factory $SubGroupOOutputCopyWith(
          SubGroupOOutput value, $Res Function(SubGroupOOutput) _then) =
      _$SubGroupOOutputCopyWithImpl;
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class _$SubGroupOOutputCopyWithImpl<$Res>
    implements $SubGroupOOutputCopyWith<$Res> {
  _$SubGroupOOutputCopyWithImpl(this._self, this._then);

  final SubGroupOOutput _self;
  final $Res Function(SubGroupOOutput) _then;

  /// Create a copy of SubGroupOOutput
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
class _SubGroupOOutput implements SubGroupOOutput {
  const _SubGroupOOutput({@RfControl() required this.id});
  factory _SubGroupOOutput.fromJson(Map<String, dynamic> json) =>
      _$SubGroupOOutputFromJson(json);

  @override
  @RfControl()
  final String id;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubGroupOOutputCopyWith<_SubGroupOOutput> get copyWith =>
      __$SubGroupOOutputCopyWithImpl<_SubGroupOOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubGroupOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubGroupOOutput &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'SubGroupOOutput(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$SubGroupOOutputCopyWith<$Res>
    implements $SubGroupOOutputCopyWith<$Res> {
  factory _$SubGroupOOutputCopyWith(
          _SubGroupOOutput value, $Res Function(_SubGroupOOutput) _then) =
      __$SubGroupOOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl() String id});
}

/// @nodoc
class __$SubGroupOOutputCopyWithImpl<$Res>
    implements _$SubGroupOOutputCopyWith<$Res> {
  __$SubGroupOOutputCopyWithImpl(this._self, this._then);

  final _SubGroupOOutput _self;
  final $Res Function(_SubGroupOOutput) _then;

  /// Create a copy of SubGroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_SubGroupOOutput(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$GroupOOutput {
  @RfControl()
  String get id;
  @RfArray<dynamic>()
  List<SubGroupOOutput> get subGroupList;

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GroupOOutputCopyWith<GroupOOutput> get copyWith =>
      _$GroupOOutputCopyWithImpl<GroupOOutput>(
          this as GroupOOutput, _$identity);

  /// Serializes this GroupOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GroupOOutput &&
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
    return 'GroupOOutput(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class $GroupOOutputCopyWith<$Res> {
  factory $GroupOOutputCopyWith(
          GroupOOutput value, $Res Function(GroupOOutput) _then) =
      _$GroupOOutputCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupOOutput> subGroupList});
}

/// @nodoc
class _$GroupOOutputCopyWithImpl<$Res> implements $GroupOOutputCopyWith<$Res> {
  _$GroupOOutputCopyWithImpl(this._self, this._then);

  final GroupOOutput _self;
  final $Res Function(GroupOOutput) _then;

  /// Create a copy of GroupOOutput
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
              as List<SubGroupOOutput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GroupOOutput implements GroupOOutput {
  const _GroupOOutput(
      {@RfControl() required this.id,
      @RfArray<dynamic>() required final List<SubGroupOOutput> subGroupList})
      : _subGroupList = subGroupList;
  factory _GroupOOutput.fromJson(Map<String, dynamic> json) =>
      _$GroupOOutputFromJson(json);

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

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GroupOOutputCopyWith<_GroupOOutput> get copyWith =>
      __$GroupOOutputCopyWithImpl<_GroupOOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GroupOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupOOutput &&
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
    return 'GroupOOutput(id: $id, subGroupList: $subGroupList)';
  }
}

/// @nodoc
abstract mixin class _$GroupOOutputCopyWith<$Res>
    implements $GroupOOutputCopyWith<$Res> {
  factory _$GroupOOutputCopyWith(
          _GroupOOutput value, $Res Function(_GroupOOutput) _then) =
      __$GroupOOutputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl() String id,
      @RfArray<dynamic>() List<SubGroupOOutput> subGroupList});
}

/// @nodoc
class __$GroupOOutputCopyWithImpl<$Res>
    implements _$GroupOOutputCopyWith<$Res> {
  __$GroupOOutputCopyWithImpl(this._self, this._then);

  final _GroupOOutput _self;
  final $Res Function(_GroupOOutput) _then;

  /// Create a copy of GroupOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? subGroupList = null,
  }) {
    return _then(_GroupOOutput(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subGroupList: null == subGroupList
          ? _self._subGroupList
          : subGroupList // ignore: cast_nullable_to_non_nullable
              as List<SubGroupOOutput>,
    ));
  }
}

/// @nodoc
mixin _$NestedOOutput {
  @RfArray<dynamic>()
  List<GroupOOutput> get groupList;

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NestedOOutputCopyWith<NestedOOutput> get copyWith =>
      _$NestedOOutputCopyWithImpl<NestedOOutput>(
          this as NestedOOutput, _$identity);

  /// Serializes this NestedOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NestedOOutput &&
            const DeepCollectionEquality().equals(other.groupList, groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groupList));

  @override
  String toString() {
    return 'NestedOOutput(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class $NestedOOutputCopyWith<$Res> {
  factory $NestedOOutputCopyWith(
          NestedOOutput value, $Res Function(NestedOOutput) _then) =
      _$NestedOOutputCopyWithImpl;
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupOOutput> groupList});
}

/// @nodoc
class _$NestedOOutputCopyWithImpl<$Res>
    implements $NestedOOutputCopyWith<$Res> {
  _$NestedOOutputCopyWithImpl(this._self, this._then);

  final NestedOOutput _self;
  final $Res Function(NestedOOutput) _then;

  /// Create a copy of NestedOOutput
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
              as List<GroupOOutput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NestedOOutput implements NestedOOutput {
  const _NestedOOutput(
      {@RfArray<dynamic>() required final List<GroupOOutput> groupList})
      : _groupList = groupList;
  factory _NestedOOutput.fromJson(Map<String, dynamic> json) =>
      _$NestedOOutputFromJson(json);

  final List<GroupOOutput> _groupList;
  @override
  @RfArray<dynamic>()
  List<GroupOOutput> get groupList {
    if (_groupList is EqualUnmodifiableListView) return _groupList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupList);
  }

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NestedOOutputCopyWith<_NestedOOutput> get copyWith =>
      __$NestedOOutputCopyWithImpl<_NestedOOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NestedOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NestedOOutput &&
            const DeepCollectionEquality()
                .equals(other._groupList, _groupList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupList));

  @override
  String toString() {
    return 'NestedOOutput(groupList: $groupList)';
  }
}

/// @nodoc
abstract mixin class _$NestedOOutputCopyWith<$Res>
    implements $NestedOOutputCopyWith<$Res> {
  factory _$NestedOOutputCopyWith(
          _NestedOOutput value, $Res Function(_NestedOOutput) _then) =
      __$NestedOOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@RfArray<dynamic>() List<GroupOOutput> groupList});
}

/// @nodoc
class __$NestedOOutputCopyWithImpl<$Res>
    implements _$NestedOOutputCopyWith<$Res> {
  __$NestedOOutputCopyWithImpl(this._self, this._then);

  final _NestedOOutput _self;
  final $Res Function(_NestedOOutput) _then;

  /// Create a copy of NestedOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? groupList = null,
  }) {
    return _then(_NestedOOutput(
      groupList: null == groupList
          ? _self._groupList
          : groupList // ignore: cast_nullable_to_non_nullable
              as List<GroupOOutput>,
    ));
  }
}

// dart format on
