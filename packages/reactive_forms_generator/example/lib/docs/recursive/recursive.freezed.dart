// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String? get id; SecuredArea? get securedArea; ParcelSystem? get parcelSystem;@RfArray<SecuredArea>() List<SecuredArea> get subSecuredAreas;
/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecuredAreaCopyWith<SecuredArea> get copyWith => _$SecuredAreaCopyWithImpl<SecuredArea>(this as SecuredArea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecuredArea&&(identical(other.id, id) || other.id == id)&&(identical(other.securedArea, securedArea) || other.securedArea == securedArea)&&(identical(other.parcelSystem, parcelSystem) || other.parcelSystem == parcelSystem)&&const DeepCollectionEquality().equals(other.subSecuredAreas, subSecuredAreas));
}


@override
int get hashCode => Object.hash(runtimeType,id,securedArea,parcelSystem,const DeepCollectionEquality().hash(subSecuredAreas));

@override
String toString() {
  return 'SecuredArea(id: $id, securedArea: $securedArea, parcelSystem: $parcelSystem, subSecuredAreas: $subSecuredAreas)';
}


}

/// @nodoc
abstract mixin class $SecuredAreaCopyWith<$Res>  {
  factory $SecuredAreaCopyWith(SecuredArea value, $Res Function(SecuredArea) _then) = _$SecuredAreaCopyWithImpl;
@useResult
$Res call({
 String? id, SecuredArea? securedArea, ParcelSystem? parcelSystem,@RfArray<SecuredArea>() List<SecuredArea> subSecuredAreas
});


$SecuredAreaCopyWith<$Res>? get securedArea;$ParcelSystemCopyWith<$Res>? get parcelSystem;

}
/// @nodoc
class _$SecuredAreaCopyWithImpl<$Res>
    implements $SecuredAreaCopyWith<$Res> {
  _$SecuredAreaCopyWithImpl(this._self, this._then);

  final SecuredArea _self;
  final $Res Function(SecuredArea) _then;

/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? securedArea = freezed,Object? parcelSystem = freezed,Object? subSecuredAreas = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,securedArea: freezed == securedArea ? _self.securedArea : securedArea // ignore: cast_nullable_to_non_nullable
as SecuredArea?,parcelSystem: freezed == parcelSystem ? _self.parcelSystem : parcelSystem // ignore: cast_nullable_to_non_nullable
as ParcelSystem?,subSecuredAreas: null == subSecuredAreas ? _self.subSecuredAreas : subSecuredAreas // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSystemCopyWith<$Res>? get parcelSystem {
    if (_self.parcelSystem == null) {
    return null;
  }

  return $ParcelSystemCopyWith<$Res>(_self.parcelSystem!, (value) {
    return _then(_self.copyWith(parcelSystem: value));
  });
}
}


/// Adds pattern-matching-related methods to [SecuredArea].
extension SecuredAreaPatterns on SecuredArea {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecuredArea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecuredArea() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecuredArea value)  $default,){
final _that = this;
switch (_that) {
case _SecuredArea():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecuredArea value)?  $default,){
final _that = this;
switch (_that) {
case _SecuredArea() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  SecuredArea? securedArea,  ParcelSystem? parcelSystem, @RfArray<SecuredArea>()  List<SecuredArea> subSecuredAreas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecuredArea() when $default != null:
return $default(_that.id,_that.securedArea,_that.parcelSystem,_that.subSecuredAreas);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  SecuredArea? securedArea,  ParcelSystem? parcelSystem, @RfArray<SecuredArea>()  List<SecuredArea> subSecuredAreas)  $default,) {final _that = this;
switch (_that) {
case _SecuredArea():
return $default(_that.id,_that.securedArea,_that.parcelSystem,_that.subSecuredAreas);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  SecuredArea? securedArea,  ParcelSystem? parcelSystem, @RfArray<SecuredArea>()  List<SecuredArea> subSecuredAreas)?  $default,) {final _that = this;
switch (_that) {
case _SecuredArea() when $default != null:
return $default(_that.id,_that.securedArea,_that.parcelSystem,_that.subSecuredAreas);case _:
  return null;

}
}

}

/// @nodoc


class _SecuredArea implements SecuredArea {
  const _SecuredArea({this.id, this.securedArea, this.parcelSystem, @RfArray<SecuredArea>() final  List<SecuredArea> subSecuredAreas = const []}): _subSecuredAreas = subSecuredAreas;
  

@override final  String? id;
@override final  SecuredArea? securedArea;
@override final  ParcelSystem? parcelSystem;
 final  List<SecuredArea> _subSecuredAreas;
@override@JsonKey()@RfArray<SecuredArea>() List<SecuredArea> get subSecuredAreas {
  if (_subSecuredAreas is EqualUnmodifiableListView) return _subSecuredAreas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subSecuredAreas);
}


/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecuredAreaCopyWith<_SecuredArea> get copyWith => __$SecuredAreaCopyWithImpl<_SecuredArea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecuredArea&&(identical(other.id, id) || other.id == id)&&(identical(other.securedArea, securedArea) || other.securedArea == securedArea)&&(identical(other.parcelSystem, parcelSystem) || other.parcelSystem == parcelSystem)&&const DeepCollectionEquality().equals(other._subSecuredAreas, _subSecuredAreas));
}


@override
int get hashCode => Object.hash(runtimeType,id,securedArea,parcelSystem,const DeepCollectionEquality().hash(_subSecuredAreas));

@override
String toString() {
  return 'SecuredArea(id: $id, securedArea: $securedArea, parcelSystem: $parcelSystem, subSecuredAreas: $subSecuredAreas)';
}


}

/// @nodoc
abstract mixin class _$SecuredAreaCopyWith<$Res> implements $SecuredAreaCopyWith<$Res> {
  factory _$SecuredAreaCopyWith(_SecuredArea value, $Res Function(_SecuredArea) _then) = __$SecuredAreaCopyWithImpl;
@override @useResult
$Res call({
 String? id, SecuredArea? securedArea, ParcelSystem? parcelSystem,@RfArray<SecuredArea>() List<SecuredArea> subSecuredAreas
});


@override $SecuredAreaCopyWith<$Res>? get securedArea;@override $ParcelSystemCopyWith<$Res>? get parcelSystem;

}
/// @nodoc
class __$SecuredAreaCopyWithImpl<$Res>
    implements _$SecuredAreaCopyWith<$Res> {
  __$SecuredAreaCopyWithImpl(this._self, this._then);

  final _SecuredArea _self;
  final $Res Function(_SecuredArea) _then;

/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? securedArea = freezed,Object? parcelSystem = freezed,Object? subSecuredAreas = null,}) {
  return _then(_SecuredArea(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,securedArea: freezed == securedArea ? _self.securedArea : securedArea // ignore: cast_nullable_to_non_nullable
as SecuredArea?,parcelSystem: freezed == parcelSystem ? _self.parcelSystem : parcelSystem // ignore: cast_nullable_to_non_nullable
as ParcelSystem?,subSecuredAreas: null == subSecuredAreas ? _self._subSecuredAreas : subSecuredAreas // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of SecuredArea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSystemCopyWith<$Res>? get parcelSystem {
    if (_self.parcelSystem == null) {
    return null;
  }

  return $ParcelSystemCopyWith<$Res>(_self.parcelSystem!, (value) {
    return _then(_self.copyWith(parcelSystem: value));
  });
}
}

/// @nodoc
mixin _$ParcelSystem {

@RfControl<bool>() bool get hasParcelSystem; ParcelSystemData get data;
/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSystemCopyWith<ParcelSystem> get copyWith => _$ParcelSystemCopyWithImpl<ParcelSystem>(this as ParcelSystem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSystem&&(identical(other.hasParcelSystem, hasParcelSystem) || other.hasParcelSystem == hasParcelSystem)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,hasParcelSystem,data);

@override
String toString() {
  return 'ParcelSystem(hasParcelSystem: $hasParcelSystem, data: $data)';
}


}

/// @nodoc
abstract mixin class $ParcelSystemCopyWith<$Res>  {
  factory $ParcelSystemCopyWith(ParcelSystem value, $Res Function(ParcelSystem) _then) = _$ParcelSystemCopyWithImpl;
@useResult
$Res call({
@RfControl<bool>() bool hasParcelSystem, ParcelSystemData data
});


$ParcelSystemDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ParcelSystemCopyWithImpl<$Res>
    implements $ParcelSystemCopyWith<$Res> {
  _$ParcelSystemCopyWithImpl(this._self, this._then);

  final ParcelSystem _self;
  final $Res Function(ParcelSystem) _then;

/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasParcelSystem = null,Object? data = null,}) {
  return _then(_self.copyWith(
hasParcelSystem: null == hasParcelSystem ? _self.hasParcelSystem : hasParcelSystem // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ParcelSystemData,
  ));
}
/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSystemDataCopyWith<$Res> get data {
  
  return $ParcelSystemDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParcelSystem].
extension ParcelSystemPatterns on ParcelSystem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSystem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSystem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSystem value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSystem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSystem value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSystem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@RfControl<bool>()  bool hasParcelSystem,  ParcelSystemData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSystem() when $default != null:
return $default(_that.hasParcelSystem,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@RfControl<bool>()  bool hasParcelSystem,  ParcelSystemData data)  $default,) {final _that = this;
switch (_that) {
case _ParcelSystem():
return $default(_that.hasParcelSystem,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@RfControl<bool>()  bool hasParcelSystem,  ParcelSystemData data)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSystem() when $default != null:
return $default(_that.hasParcelSystem,_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelSystem implements ParcelSystem {
  const _ParcelSystem({@RfControl<bool>() this.hasParcelSystem = false, this.data = const ParcelSystemData()});
  

@override@JsonKey()@RfControl<bool>() final  bool hasParcelSystem;
@override@JsonKey() final  ParcelSystemData data;

/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSystemCopyWith<_ParcelSystem> get copyWith => __$ParcelSystemCopyWithImpl<_ParcelSystem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSystem&&(identical(other.hasParcelSystem, hasParcelSystem) || other.hasParcelSystem == hasParcelSystem)&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,hasParcelSystem,data);

@override
String toString() {
  return 'ParcelSystem(hasParcelSystem: $hasParcelSystem, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ParcelSystemCopyWith<$Res> implements $ParcelSystemCopyWith<$Res> {
  factory _$ParcelSystemCopyWith(_ParcelSystem value, $Res Function(_ParcelSystem) _then) = __$ParcelSystemCopyWithImpl;
@override @useResult
$Res call({
@RfControl<bool>() bool hasParcelSystem, ParcelSystemData data
});


@override $ParcelSystemDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ParcelSystemCopyWithImpl<$Res>
    implements _$ParcelSystemCopyWith<$Res> {
  __$ParcelSystemCopyWithImpl(this._self, this._then);

  final _ParcelSystem _self;
  final $Res Function(_ParcelSystem) _then;

/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasParcelSystem = null,Object? data = null,}) {
  return _then(_ParcelSystem(
hasParcelSystem: null == hasParcelSystem ? _self.hasParcelSystem : hasParcelSystem // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ParcelSystemData,
  ));
}

/// Create a copy of ParcelSystem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParcelSystemDataCopyWith<$Res> get data {
  
  return $ParcelSystemDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$ParcelSystemData {

 String? get id;
/// Create a copy of ParcelSystemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParcelSystemDataCopyWith<ParcelSystemData> get copyWith => _$ParcelSystemDataCopyWithImpl<ParcelSystemData>(this as ParcelSystemData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParcelSystemData&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ParcelSystemData(id: $id)';
}


}

/// @nodoc
abstract mixin class $ParcelSystemDataCopyWith<$Res>  {
  factory $ParcelSystemDataCopyWith(ParcelSystemData value, $Res Function(ParcelSystemData) _then) = _$ParcelSystemDataCopyWithImpl;
@useResult
$Res call({
 String? id
});




}
/// @nodoc
class _$ParcelSystemDataCopyWithImpl<$Res>
    implements $ParcelSystemDataCopyWith<$Res> {
  _$ParcelSystemDataCopyWithImpl(this._self, this._then);

  final ParcelSystemData _self;
  final $Res Function(ParcelSystemData) _then;

/// Create a copy of ParcelSystemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ParcelSystemData].
extension ParcelSystemDataPatterns on ParcelSystemData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParcelSystemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParcelSystemData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParcelSystemData value)  $default,){
final _that = this;
switch (_that) {
case _ParcelSystemData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParcelSystemData value)?  $default,){
final _that = this;
switch (_that) {
case _ParcelSystemData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParcelSystemData() when $default != null:
return $default(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id)  $default,) {final _that = this;
switch (_that) {
case _ParcelSystemData():
return $default(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id)?  $default,) {final _that = this;
switch (_that) {
case _ParcelSystemData() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _ParcelSystemData implements ParcelSystemData {
  const _ParcelSystemData({this.id});
  

@override final  String? id;

/// Create a copy of ParcelSystemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParcelSystemDataCopyWith<_ParcelSystemData> get copyWith => __$ParcelSystemDataCopyWithImpl<_ParcelSystemData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParcelSystemData&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ParcelSystemData(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ParcelSystemDataCopyWith<$Res> implements $ParcelSystemDataCopyWith<$Res> {
  factory _$ParcelSystemDataCopyWith(_ParcelSystemData value, $Res Function(_ParcelSystemData) _then) = __$ParcelSystemDataCopyWithImpl;
@override @useResult
$Res call({
 String? id
});




}
/// @nodoc
class __$ParcelSystemDataCopyWithImpl<$Res>
    implements _$ParcelSystemDataCopyWith<$Res> {
  __$ParcelSystemDataCopyWithImpl(this._self, this._then);

  final _ParcelSystemData _self;
  final $Res Function(_ParcelSystemData) _then;

/// Create a copy of ParcelSystemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_ParcelSystemData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
