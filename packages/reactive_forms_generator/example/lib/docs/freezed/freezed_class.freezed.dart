// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreezedClass {
  @RfControl<String>()
  String? get gender;
  @RfControl(validators: [RequiredValidator()])
  String? get id;
  @RfControl<String>()
  String? get name;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @RfControl<double>()
  double? get year;
  List<String> get selectedSpaces;

  /// Create a copy of FreezedClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreezedClassCopyWith<FreezedClass> get copyWith =>
      _$FreezedClassCopyWithImpl<FreezedClass>(
          this as FreezedClass, _$identity);

  /// Serializes this FreezedClass to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreezedClass &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other.selectedSpaces, selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, id, name, logoImage,
      year, const DeepCollectionEquality().hash(selectedSpaces));

  @override
  String toString() {
    return 'FreezedClass(gender: $gender, id: $id, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class $FreezedClassCopyWith<$Res> {
  factory $FreezedClassCopyWith(
          FreezedClass value, $Res Function(FreezedClass) _then) =
      _$FreezedClassCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? id,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class _$FreezedClassCopyWithImpl<$Res> implements $FreezedClassCopyWith<$Res> {
  _$FreezedClassCopyWithImpl(this._self, this._then);

  final FreezedClass _self;
  final $Res Function(FreezedClass) _then;

  /// Create a copy of FreezedClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
    Object? selectedSpaces = null,
  }) {
    return _then(_self.copyWith(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _self.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _self.selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FreezedClass extends FreezedClass {
  _FreezedClass(@RfControl<String>() this.gender,
      {@RfControl(validators: [RequiredValidator()]) this.id,
      @RfControl<String>() this.name,
      @JsonKey(name: 'logo_image') @RfControl<String>() this.logoImage,
      @RfControl<double>() this.year,
      final List<String> selectedSpaces = const []})
      : _selectedSpaces = selectedSpaces,
        super._();
  factory _FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassFromJson(json);

  @override
  @RfControl<String>()
  final String? gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? id;
  @override
  @RfControl<String>()
  final String? name;
  @override
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  final String? logoImage;
  @override
  @RfControl<double>()
  final double? year;
  final List<String> _selectedSpaces;
  @override
  @JsonKey()
  List<String> get selectedSpaces {
    if (_selectedSpaces is EqualUnmodifiableListView) return _selectedSpaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSpaces);
  }

  /// Create a copy of FreezedClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreezedClassCopyWith<_FreezedClass> get copyWith =>
      __$FreezedClassCopyWithImpl<_FreezedClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FreezedClassToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedClass &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other._selectedSpaces, _selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, id, name, logoImage,
      year, const DeepCollectionEquality().hash(_selectedSpaces));

  @override
  String toString() {
    return 'FreezedClass(gender: $gender, id: $id, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class _$FreezedClassCopyWith<$Res>
    implements $FreezedClassCopyWith<$Res> {
  factory _$FreezedClassCopyWith(
          _FreezedClass value, $Res Function(_FreezedClass) _then) =
      __$FreezedClassCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? id,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class __$FreezedClassCopyWithImpl<$Res>
    implements _$FreezedClassCopyWith<$Res> {
  __$FreezedClassCopyWithImpl(this._self, this._then);

  final _FreezedClass _self;
  final $Res Function(_FreezedClass) _then;

  /// Create a copy of FreezedClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
    Object? selectedSpaces = null,
  }) {
    return _then(_FreezedClass(
      freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _self.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _self._selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
