// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreezedClassO _$FreezedClassOFromJson(Map<String, dynamic> json) {
  return _FreezedClassO.fromJson(json);
}

/// @nodoc
mixin _$FreezedClassO {
  @RfControl<String>()
  String? get gender => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get genderR => throw _privateConstructorUsedError;
  @RfControl()
  String? get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get idR => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get idR2 => throw _privateConstructorUsedError;
  @RfControl<String>()
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage => throw _privateConstructorUsedError;
  @RfControl<double>()
  double? get year => throw _privateConstructorUsedError;
  List<String> get selectedSpaces => throw _privateConstructorUsedError;

  /// Serializes this FreezedClassO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreezedClassOCopyWith<FreezedClassO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedClassOCopyWith<$Res> {
  factory $FreezedClassOCopyWith(
          FreezedClassO value, $Res Function(FreezedClassO) then) =
      _$FreezedClassOCopyWithImpl<$Res, FreezedClassO>;
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
class _$FreezedClassOCopyWithImpl<$Res, $Val extends FreezedClassO>
    implements $FreezedClassOCopyWith<$Res> {
  _$FreezedClassOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      genderR: freezed == genderR
          ? _value.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: freezed == idR
          ? _value.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String?,
      idR2: null == idR2
          ? _value.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _value.selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedClassOImplCopyWith<$Res>
    implements $FreezedClassOCopyWith<$Res> {
  factory _$$FreezedClassOImplCopyWith(
          _$FreezedClassOImpl value, $Res Function(_$FreezedClassOImpl) then) =
      __$$FreezedClassOImplCopyWithImpl<$Res>;
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
class __$$FreezedClassOImplCopyWithImpl<$Res>
    extends _$FreezedClassOCopyWithImpl<$Res, _$FreezedClassOImpl>
    implements _$$FreezedClassOImplCopyWith<$Res> {
  __$$FreezedClassOImplCopyWithImpl(
      _$FreezedClassOImpl _value, $Res Function(_$FreezedClassOImpl) _then)
      : super(_value, _then);

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
    return _then(_$FreezedClassOImpl(
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == genderR
          ? _value.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: freezed == idR
          ? _value.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String?,
      idR2: null == idR2
          ? _value.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _value._selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedClassOImpl extends _FreezedClassO {
  _$FreezedClassOImpl(@RfControl<String>() this.gender,
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

  factory _$FreezedClassOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedClassOImplFromJson(json);

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

  @override
  String toString() {
    return 'FreezedClassO(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedClassOImpl &&
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

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedClassOImplCopyWith<_$FreezedClassOImpl> get copyWith =>
      __$$FreezedClassOImplCopyWithImpl<_$FreezedClassOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedClassOImplToJson(
      this,
    );
  }
}

abstract class _FreezedClassO extends FreezedClassO {
  factory _FreezedClassO(@RfControl<String>() final String? gender,
      @RfControl(validators: [RequiredValidator()]) final String? genderR,
      {@RfControl() final String? id,
      @RfControl(validators: [RequiredValidator()]) final String? idR,
      @RfControl(validators: [RequiredValidator()]) final String idR2,
      @RfControl<String>() final String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() final String? logoImage,
      @RfControl<double>() final double? year,
      final List<String> selectedSpaces}) = _$FreezedClassOImpl;
  _FreezedClassO._() : super._();

  factory _FreezedClassO.fromJson(Map<String, dynamic> json) =
      _$FreezedClassOImpl.fromJson;

  @override
  @RfControl<String>()
  String? get gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get genderR;
  @override
  @RfControl()
  String? get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get idR;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get idR2;
  @override
  @RfControl<String>()
  String? get name;
  @override
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @override
  @RfControl<double>()
  double? get year;
  @override
  List<String> get selectedSpaces;

  /// Create a copy of FreezedClassO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreezedClassOImplCopyWith<_$FreezedClassOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FreezedClassOOutput _$FreezedClassOOutputFromJson(Map<String, dynamic> json) {
  return _FreezedClassOOutput.fromJson(json);
}

/// @nodoc
mixin _$FreezedClassOOutput {
  @RfControl<String>()
  String? get gender => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get genderR => throw _privateConstructorUsedError;
  @RfControl()
  String? get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get idR => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get idR2 => throw _privateConstructorUsedError;
  @RfControl<String>()
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage => throw _privateConstructorUsedError;
  @RfControl<double>()
  double? get year => throw _privateConstructorUsedError;
  List<String> get selectedSpaces => throw _privateConstructorUsedError;

  /// Serializes this FreezedClassOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreezedClassOOutputCopyWith<FreezedClassOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedClassOOutputCopyWith<$Res> {
  factory $FreezedClassOOutputCopyWith(
          FreezedClassOOutput value, $Res Function(FreezedClassOOutput) then) =
      _$FreezedClassOOutputCopyWithImpl<$Res, FreezedClassOOutput>;
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
class _$FreezedClassOOutputCopyWithImpl<$Res, $Val extends FreezedClassOOutput>
    implements $FreezedClassOOutputCopyWith<$Res> {
  _$FreezedClassOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      genderR: null == genderR
          ? _value.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: null == idR
          ? _value.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String,
      idR2: null == idR2
          ? _value.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _value.selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedClassOOutputImplCopyWith<$Res>
    implements $FreezedClassOOutputCopyWith<$Res> {
  factory _$$FreezedClassOOutputImplCopyWith(_$FreezedClassOOutputImpl value,
          $Res Function(_$FreezedClassOOutputImpl) then) =
      __$$FreezedClassOOutputImplCopyWithImpl<$Res>;
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
class __$$FreezedClassOOutputImplCopyWithImpl<$Res>
    extends _$FreezedClassOOutputCopyWithImpl<$Res, _$FreezedClassOOutputImpl>
    implements _$$FreezedClassOOutputImplCopyWith<$Res> {
  __$$FreezedClassOOutputImplCopyWithImpl(_$FreezedClassOOutputImpl _value,
      $Res Function(_$FreezedClassOOutputImpl) _then)
      : super(_value, _then);

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
    return _then(_$FreezedClassOOutputImpl(
      freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      null == genderR
          ? _value.genderR
          : genderR // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idR: null == idR
          ? _value.idR
          : idR // ignore: cast_nullable_to_non_nullable
              as String,
      idR2: null == idR2
          ? _value.idR2
          : idR2 // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logoImage: freezed == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedSpaces: null == selectedSpaces
          ? _value._selectedSpaces
          : selectedSpaces // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedClassOOutputImpl extends _FreezedClassOOutput {
  _$FreezedClassOOutputImpl(@RfControl<String>() this.gender,
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

  factory _$FreezedClassOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedClassOOutputImplFromJson(json);

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

  @override
  String toString() {
    return 'FreezedClassOOutput(gender: $gender, genderR: $genderR, id: $id, idR: $idR, idR2: $idR2, name: $name, logoImage: $logoImage, year: $year, selectedSpaces: $selectedSpaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedClassOOutputImpl &&
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

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedClassOOutputImplCopyWith<_$FreezedClassOOutputImpl> get copyWith =>
      __$$FreezedClassOOutputImplCopyWithImpl<_$FreezedClassOOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedClassOOutputImplToJson(
      this,
    );
  }
}

abstract class _FreezedClassOOutput extends FreezedClassOOutput {
  factory _FreezedClassOOutput(@RfControl<String>() final String? gender,
      @RfControl(validators: [RequiredValidator()]) final String genderR,
      {@RfControl() final String? id,
      @RfControl(validators: [RequiredValidator()]) required final String idR,
      @RfControl(validators: [RequiredValidator()]) required final String idR2,
      @RfControl<String>() final String? name,
      @JsonKey(name: 'logo_image') @RfControl<String>() final String? logoImage,
      @RfControl<double>() final double? year,
      final List<String> selectedSpaces}) = _$FreezedClassOOutputImpl;
  _FreezedClassOOutput._() : super._();

  factory _FreezedClassOOutput.fromJson(Map<String, dynamic> json) =
      _$FreezedClassOOutputImpl.fromJson;

  @override
  @RfControl<String>()
  String? get gender;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get genderR;
  @override
  @RfControl()
  String? get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get idR;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get idR2;
  @override
  @RfControl<String>()
  String? get name;
  @override
  @JsonKey(name: 'logo_image')
  @RfControl<String>()
  String? get logoImage;
  @override
  @RfControl<double>()
  double? get year;
  @override
  List<String> get selectedSpaces;

  /// Create a copy of FreezedClassOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreezedClassOOutputImplCopyWith<_$FreezedClassOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
