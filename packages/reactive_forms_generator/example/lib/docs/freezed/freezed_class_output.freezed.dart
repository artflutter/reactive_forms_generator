// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreezedClassO {
  @RfControl<String>()
  String? get gender;
  @RfControl(validators: [RequiredValidator()])
  String? get genderR;
  @RfControl()
  String? get id;
  @RfControl(validators: [RequiredValidator()])
  String? get idR;
  @RfControl(validators: [RequiredValidator()])
  String get idR2;
  @RfControl<String>()
  String? get name;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @RfControl<double>()
  double? get year;
  List<String> get selectedSpaces;

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreezedClassOCopyWith<FreezedClassO> get copyWith =>
      _$FreezedClassOCopyWithImpl<FreezedClassO>(
          this as FreezedClassO, _$identity);

  /// Serializes this FreezedClassO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreezedClassO &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderR, genderR) || other.genderR == genderR) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idR, idR) || other.idR == idR) &&
            (identical(other.idR2, idR2) || other.idR2 == idR2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other.selectedSpaces, selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      genderR,
      id,
      idR,
      idR2,
      name,
      logoImage,
      year,
      const DeepCollectionEquality().hash(selectedSpaces));

  @override
  String toString() {
    return 'FreezedClassO(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class $FreezedClassOCopyWith<$Res> {
  factory $FreezedClassOCopyWith(
          FreezedClassO value, $Res Function(FreezedClassO) _then) =
      _$FreezedClassOCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? genderR,
      @RfControl() String? id,
      @RfControl(validators: [RequiredValidator()]) String? idR,
      @RfControl(validators: [RequiredValidator()]) String idR2,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class _$FreezedClassOCopyWithImpl<$Res>
    implements $FreezedClassOCopyWith<$Res> {
  _$FreezedClassOCopyWithImpl(this._self, this._then);

  final FreezedClassO _self;
  final $Res Function(FreezedClassO) _then;

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? genderR = freezed,
    Object? id = freezed,
    Object? idR = freezed,
    Object? idR2 = null,
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
      genderR: freezed == genderR
          ? _self.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: freezed == idR
          ? _self.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String?,
      idR2: null == idR2
          ? _self.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
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
class _FreezedClassO extends FreezedClassO {
  _FreezedClassO(@RfControl<String>() this.gender,
      @RfControl(validators: [RequiredValidator()]) this.genderR,
      {@RfControl() this.id,
      @RfControl(validators: [RequiredValidator()]) this.idR,
      @RfControl(validators: [RequiredValidator()]) this.idR2 = '',
      @RfControl<String>() this.name,
      @JsonKey(name: 'logo_image') @RfControl<String>() this.logoImage,
      @RfControl<double>() this.year,
      final List<String> selectedSpaces = const []})
      : _selectedSpaces = selectedSpaces,
        super._();
  factory _FreezedClassO.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassOFromJson(json);

  @override
  @RfControl<String>()
  final String? gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? genderR;
  @override
  @RfControl()
  final String? id;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? idR;
  @override
  @JsonKey()
  @RfControl(validators: [RequiredValidator()])
  final String idR2;
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

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreezedClassOCopyWith<_FreezedClassO> get copyWith =>
      __$FreezedClassOCopyWithImpl<_FreezedClassO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FreezedClassOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedClassO &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderR, genderR) || other.genderR == genderR) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idR, idR) || other.idR == idR) &&
            (identical(other.idR2, idR2) || other.idR2 == idR2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other._selectedSpaces, _selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      genderR,
      id,
      idR,
      idR2,
      name,
      logoImage,
      year,
      const DeepCollectionEquality().hash(_selectedSpaces));

  @override
  String toString() {
    return 'FreezedClassO(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class _$FreezedClassOCopyWith<$Res>
    implements $FreezedClassOCopyWith<$Res> {
  factory _$FreezedClassOCopyWith(
          _FreezedClassO value, $Res Function(_FreezedClassO) _then) =
      __$FreezedClassOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String? genderR,
      @RfControl() String? id,
      @RfControl(validators: [RequiredValidator()]) String? idR,
      @RfControl(validators: [RequiredValidator()]) String idR2,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class __$FreezedClassOCopyWithImpl<$Res>
    implements _$FreezedClassOCopyWith<$Res> {
  __$FreezedClassOCopyWithImpl(this._self, this._then);

  final _FreezedClassO _self;
  final $Res Function(_FreezedClassO) _then;

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? genderR = freezed,
    Object? id = freezed,
    Object? idR = freezed,
    Object? idR2 = null,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
    Object? selectedSpaces = null,
  }) {
    return _then(_FreezedClassO(
      freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == genderR
          ? _self.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: freezed == idR
          ? _self.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String?,
      idR2: null == idR2
          ? _self.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
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

/// @nodoc
mixin _$FreezedClassOOutput {
  @RfControl<String>()
  String? get gender;
  @RfControl(validators: [RequiredValidator()])
  String get genderR;
  @RfControl()
  String? get id;
  @RfControl(validators: [RequiredValidator()])
  String get idR;
  @RfControl(validators: [RequiredValidator()])
  String get idR2;
  @RfControl<String>()
  String? get name;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @RfControl<double>()
  double? get year;
  List<String> get selectedSpaces;

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreezedClassOOutputCopyWith<FreezedClassOOutput> get copyWith =>
      _$FreezedClassOOutputCopyWithImpl<FreezedClassOOutput>(
          this as FreezedClassOOutput, _$identity);

  /// Serializes this FreezedClassOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreezedClassOOutput &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderR, genderR) || other.genderR == genderR) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idR, idR) || other.idR == idR) &&
            (identical(other.idR2, idR2) || other.idR2 == idR2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other.selectedSpaces, selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      genderR,
      id,
      idR,
      idR2,
      name,
      logoImage,
      year,
      const DeepCollectionEquality().hash(selectedSpaces));

  @override
  String toString() {
    return 'FreezedClassOOutput(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class $FreezedClassOOutputCopyWith<$Res> {
  factory $FreezedClassOOutputCopyWith(
          FreezedClassOOutput value, $Res Function(FreezedClassOOutput) _then) =
      _$FreezedClassOOutputCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String genderR,
      @RfControl() String? id,
      @RfControl(validators: [RequiredValidator()]) String idR,
      @RfControl(validators: [RequiredValidator()]) String idR2,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class _$FreezedClassOOutputCopyWithImpl<$Res>
    implements $FreezedClassOOutputCopyWith<$Res> {
  _$FreezedClassOOutputCopyWithImpl(this._self, this._then);

  final FreezedClassOOutput _self;
  final $Res Function(FreezedClassOOutput) _then;

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? genderR = null,
    Object? id = freezed,
    Object? idR = null,
    Object? idR2 = null,
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
      genderR: null == genderR
          ? _self.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: null == idR
          ? _self.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String,
      idR2: null == idR2
          ? _self.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
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
class _FreezedClassOOutput extends FreezedClassOOutput {
  _FreezedClassOOutput(@RfControl<String>() this.gender,
      @RfControl(validators: [RequiredValidator()]) this.genderR,
      {@RfControl() this.id,
      @RfControl(validators: [RequiredValidator()]) required this.idR,
      @RfControl(validators: [RequiredValidator()]) required this.idR2,
      @RfControl<String>() this.name,
      @JsonKey(name: 'logo_image') @RfControl<String>() this.logoImage,
      @RfControl<double>() this.year,
      final List<String> selectedSpaces = const []})
      : _selectedSpaces = selectedSpaces,
        super._();
  factory _FreezedClassOOutput.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassOOutputFromJson(json);

  @override
  @RfControl<String>()
  final String? gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String genderR;
  @override
  @RfControl()
  final String? id;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String idR;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String idR2;
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

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreezedClassOOutputCopyWith<_FreezedClassOOutput> get copyWith =>
      __$FreezedClassOOutputCopyWithImpl<_FreezedClassOOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FreezedClassOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedClassOOutput &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderR, genderR) || other.genderR == genderR) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idR, idR) || other.idR == idR) &&
            (identical(other.idR2, idR2) || other.idR2 == idR2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality()
                .equals(other._selectedSpaces, _selectedSpaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      genderR,
      id,
      idR,
      idR2,
      name,
      logoImage,
      year,
      const DeepCollectionEquality().hash(_selectedSpaces));

  @override
  String toString() {
    return 'FreezedClassOOutput(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }
}

/// @nodoc
abstract mixin class _$FreezedClassOOutputCopyWith<$Res>
    implements $FreezedClassOOutputCopyWith<$Res> {
  factory _$FreezedClassOOutputCopyWith(_FreezedClassOOutput value,
          $Res Function(_FreezedClassOOutput) _then) =
      __$FreezedClassOOutputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl<String>() String? gender,
      @RfControl(validators: [RequiredValidator()]) String genderR,
      @RfControl() String? id,
      @RfControl(validators: [RequiredValidator()]) String idR,
      @RfControl(validators: [RequiredValidator()]) String idR2,
      @RfControl<String>() String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
      @RfControl<double>() double? year,
      List<String> selectedSpaces});
}

/// @nodoc
class __$FreezedClassOOutputCopyWithImpl<$Res>
    implements _$FreezedClassOOutputCopyWith<$Res> {
  __$FreezedClassOOutputCopyWithImpl(this._self, this._then);

  final _FreezedClassOOutput _self;
  final $Res Function(_FreezedClassOOutput) _then;

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? genderR = null,
    Object? id = freezed,
    Object? idR = null,
    Object? idR2 = null,
    Object? name = freezed,
    Object? logoImage = freezed,
    Object? year = freezed,
    Object? selectedSpaces = null,
  }) {
    return _then(_FreezedClassOOutput(
      freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      null == genderR
          ? _self.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: null == idR
          ? _self.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String,
      idR2: null == idR2
          ? _self.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
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
