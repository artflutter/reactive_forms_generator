// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

  _Profile call(
      {required String id,
      @FormControlAnnotation() required String name,
      @FormControlAnnotation() required ChartingOrderValue chartingOrder,
      @FormControlAnnotation() required NumberingStandard numberingStandard,
      required IncidenceFilter incidenceFilter,
      @FormControlAnnotation() required MeasurementType measurementType,
      required ThresholdSetting threshold,
      required TimerSetting timer,
      @FormControlAnnotation() required bool audioGuidance}) {
    return _Profile(
      id: id,
      name: name,
      chartingOrder: chartingOrder,
      numberingStandard: numberingStandard,
      incidenceFilter: incidenceFilter,
      measurementType: measurementType,
      threshold: threshold,
      timer: timer,
      audioGuidance: audioGuidance,
    );
  }

  Profile fromJson(Map<String, Object?> json) {
    return Profile.fromJson(json);
  }
}

/// @nodoc
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String get name => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  ChartingOrderValue get chartingOrder => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  NumberingStandard get numberingStandard => throw _privateConstructorUsedError;
  IncidenceFilter get incidenceFilter => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  ThresholdSetting get threshold => throw _privateConstructorUsedError;
  TimerSetting get timer => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get audioGuidance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @FormControlAnnotation() String name,
      @FormControlAnnotation() ChartingOrderValue chartingOrder,
      @FormControlAnnotation() NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @FormControlAnnotation() MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @FormControlAnnotation() bool audioGuidance});

  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  $IncidenceFilterCopyWith<$Res> get incidenceFilter;
  $ThresholdSettingCopyWith<$Res> get threshold;
  $TimerSettingCopyWith<$Res> get timer;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? chartingOrder = freezed,
    Object? numberingStandard = freezed,
    Object? incidenceFilter = freezed,
    Object? measurementType = freezed,
    Object? threshold = freezed,
    Object? timer = freezed,
    Object? audioGuidance = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: chartingOrder == freezed
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: numberingStandard == freezed
          ? _value.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: incidenceFilter == freezed
          ? _value.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: measurementType == freezed
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: audioGuidance == freezed
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_value.chartingOrder, (value) {
      return _then(_value.copyWith(chartingOrder: value));
    });
  }

  @override
  $IncidenceFilterCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterCopyWith<$Res>(_value.incidenceFilter, (value) {
      return _then(_value.copyWith(incidenceFilter: value));
    });
  }

  @override
  $ThresholdSettingCopyWith<$Res> get threshold {
    return $ThresholdSettingCopyWith<$Res>(_value.threshold, (value) {
      return _then(_value.copyWith(threshold: value));
    });
  }

  @override
  $TimerSettingCopyWith<$Res> get timer {
    return $TimerSettingCopyWith<$Res>(_value.timer, (value) {
      return _then(_value.copyWith(timer: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @FormControlAnnotation() String name,
      @FormControlAnnotation() ChartingOrderValue chartingOrder,
      @FormControlAnnotation() NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @FormControlAnnotation() MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @FormControlAnnotation() bool audioGuidance});

  @override
  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  @override
  $IncidenceFilterCopyWith<$Res> get incidenceFilter;
  @override
  $ThresholdSettingCopyWith<$Res> get threshold;
  @override
  $TimerSettingCopyWith<$Res> get timer;
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? chartingOrder = freezed,
    Object? numberingStandard = freezed,
    Object? incidenceFilter = freezed,
    Object? measurementType = freezed,
    Object? threshold = freezed,
    Object? timer = freezed,
    Object? audioGuidance = freezed,
  }) {
    return _then(_Profile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: chartingOrder == freezed
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: numberingStandard == freezed
          ? _value.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: incidenceFilter == freezed
          ? _value.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: measurementType == freezed
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: threshold == freezed
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: timer == freezed
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: audioGuidance == freezed
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile extends _Profile {
  _$_Profile(
      {required this.id,
      @FormControlAnnotation() required this.name,
      @FormControlAnnotation() required this.chartingOrder,
      @FormControlAnnotation() required this.numberingStandard,
      required this.incidenceFilter,
      @FormControlAnnotation() required this.measurementType,
      required this.threshold,
      required this.timer,
      @FormControlAnnotation() required this.audioGuidance})
      : super._();

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String id;
  @override
  @FormControlAnnotation()
  final String name;
  @override
  @FormControlAnnotation()
  final ChartingOrderValue chartingOrder;
  @override
  @FormControlAnnotation()
  final NumberingStandard numberingStandard;
  @override
  final IncidenceFilter incidenceFilter;
  @override
  @FormControlAnnotation()
  final MeasurementType measurementType;
  @override
  final ThresholdSetting threshold;
  @override
  final TimerSetting timer;
  @override
  @FormControlAnnotation()
  final bool audioGuidance;

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.chartingOrder, chartingOrder) &&
            const DeepCollectionEquality()
                .equals(other.numberingStandard, numberingStandard) &&
            const DeepCollectionEquality()
                .equals(other.incidenceFilter, incidenceFilter) &&
            const DeepCollectionEquality()
                .equals(other.measurementType, measurementType) &&
            const DeepCollectionEquality().equals(other.threshold, threshold) &&
            const DeepCollectionEquality().equals(other.timer, timer) &&
            const DeepCollectionEquality()
                .equals(other.audioGuidance, audioGuidance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(chartingOrder),
      const DeepCollectionEquality().hash(numberingStandard),
      const DeepCollectionEquality().hash(incidenceFilter),
      const DeepCollectionEquality().hash(measurementType),
      const DeepCollectionEquality().hash(threshold),
      const DeepCollectionEquality().hash(timer),
      const DeepCollectionEquality().hash(audioGuidance));

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(this);
  }
}

abstract class _Profile extends Profile {
  factory _Profile(
      {required String id,
      @FormControlAnnotation() required String name,
      @FormControlAnnotation() required ChartingOrderValue chartingOrder,
      @FormControlAnnotation() required NumberingStandard numberingStandard,
      required IncidenceFilter incidenceFilter,
      @FormControlAnnotation() required MeasurementType measurementType,
      required ThresholdSetting threshold,
      required TimerSetting timer,
      @FormControlAnnotation() required bool audioGuidance}) = _$_Profile;
  _Profile._() : super._();

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get id;
  @override
  @FormControlAnnotation()
  String get name;
  @override
  @FormControlAnnotation()
  ChartingOrderValue get chartingOrder;
  @override
  @FormControlAnnotation()
  NumberingStandard get numberingStandard;
  @override
  IncidenceFilter get incidenceFilter;
  @override
  @FormControlAnnotation()
  MeasurementType get measurementType;
  @override
  ThresholdSetting get threshold;
  @override
  TimerSetting get timer;
  @override
  @FormControlAnnotation()
  bool get audioGuidance;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

ThresholdSetting _$ThresholdSettingFromJson(Map<String, dynamic> json) {
  return _ThresholdSetting.fromJson(json);
}

/// @nodoc
class _$ThresholdSettingTearOff {
  const _$ThresholdSettingTearOff();

  _ThresholdSetting call(
      {@FormControlAnnotation() bool isEnabled = true,
      @FormControlAnnotation() int value = 2}) {
    return _ThresholdSetting(
      isEnabled: isEnabled,
      value: value,
    );
  }

  ThresholdSetting fromJson(Map<String, Object?> json) {
    return ThresholdSetting.fromJson(json);
  }
}

/// @nodoc
const $ThresholdSetting = _$ThresholdSettingTearOff();

/// @nodoc
mixin _$ThresholdSetting {
  @FormControlAnnotation()
  bool get isEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThresholdSettingCopyWith<ThresholdSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThresholdSettingCopyWith<$Res> {
  factory $ThresholdSettingCopyWith(
          ThresholdSetting value, $Res Function(ThresholdSetting) then) =
      _$ThresholdSettingCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value});
}

/// @nodoc
class _$ThresholdSettingCopyWithImpl<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  _$ThresholdSettingCopyWithImpl(this._value, this._then);

  final ThresholdSetting _value;
  // ignore: unused_field
  final $Res Function(ThresholdSetting) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ThresholdSettingCopyWith<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  factory _$ThresholdSettingCopyWith(
          _ThresholdSetting value, $Res Function(_ThresholdSetting) then) =
      __$ThresholdSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value});
}

/// @nodoc
class __$ThresholdSettingCopyWithImpl<$Res>
    extends _$ThresholdSettingCopyWithImpl<$Res>
    implements _$ThresholdSettingCopyWith<$Res> {
  __$ThresholdSettingCopyWithImpl(
      _ThresholdSetting _value, $Res Function(_ThresholdSetting) _then)
      : super(_value, (v) => _then(v as _ThresholdSetting));

  @override
  _ThresholdSetting get _value => super._value as _ThresholdSetting;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? value = freezed,
  }) {
    return _then(_ThresholdSetting(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThresholdSetting implements _ThresholdSetting {
  const _$_ThresholdSetting(
      {@FormControlAnnotation() this.isEnabled = true,
      @FormControlAnnotation() this.value = 2});

  factory _$_ThresholdSetting.fromJson(Map<String, dynamic> json) =>
      _$$_ThresholdSettingFromJson(json);

  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final int value;

  @override
  String toString() {
    return 'ThresholdSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThresholdSetting &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ThresholdSettingCopyWith<_ThresholdSetting> get copyWith =>
      __$ThresholdSettingCopyWithImpl<_ThresholdSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThresholdSettingToJson(this);
  }
}

abstract class _ThresholdSetting implements ThresholdSetting {
  const factory _ThresholdSetting(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value}) = _$_ThresholdSetting;

  factory _ThresholdSetting.fromJson(Map<String, dynamic> json) =
      _$_ThresholdSetting.fromJson;

  @override
  @FormControlAnnotation()
  bool get isEnabled;
  @override
  @FormControlAnnotation()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$ThresholdSettingCopyWith<_ThresholdSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

TimerSetting _$TimerSettingFromJson(Map<String, dynamic> json) {
  return _TimerSetting.fromJson(json);
}

/// @nodoc
class _$TimerSettingTearOff {
  const _$TimerSettingTearOff();

  _TimerSetting call(
      {@FormControlAnnotation() bool isEnabled = false,
      @FormControlAnnotation() int value = 5}) {
    return _TimerSetting(
      isEnabled: isEnabled,
      value: value,
    );
  }

  TimerSetting fromJson(Map<String, Object?> json) {
    return TimerSetting.fromJson(json);
  }
}

/// @nodoc
const $TimerSetting = _$TimerSettingTearOff();

/// @nodoc
mixin _$TimerSetting {
  @FormControlAnnotation()
  bool get isEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimerSettingCopyWith<TimerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSettingCopyWith<$Res> {
  factory $TimerSettingCopyWith(
          TimerSetting value, $Res Function(TimerSetting) then) =
      _$TimerSettingCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value});
}

/// @nodoc
class _$TimerSettingCopyWithImpl<$Res> implements $TimerSettingCopyWith<$Res> {
  _$TimerSettingCopyWithImpl(this._value, this._then);

  final TimerSetting _value;
  // ignore: unused_field
  final $Res Function(TimerSetting) _then;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TimerSettingCopyWith<$Res>
    implements $TimerSettingCopyWith<$Res> {
  factory _$TimerSettingCopyWith(
          _TimerSetting value, $Res Function(_TimerSetting) then) =
      __$TimerSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value});
}

/// @nodoc
class __$TimerSettingCopyWithImpl<$Res> extends _$TimerSettingCopyWithImpl<$Res>
    implements _$TimerSettingCopyWith<$Res> {
  __$TimerSettingCopyWithImpl(
      _TimerSetting _value, $Res Function(_TimerSetting) _then)
      : super(_value, (v) => _then(v as _TimerSetting));

  @override
  _TimerSetting get _value => super._value as _TimerSetting;

  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? value = freezed,
  }) {
    return _then(_TimerSetting(
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimerSetting implements _TimerSetting {
  const _$_TimerSetting(
      {@FormControlAnnotation() this.isEnabled = false,
      @FormControlAnnotation() this.value = 5});

  factory _$_TimerSetting.fromJson(Map<String, dynamic> json) =>
      _$$_TimerSettingFromJson(json);

  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final int value;

  @override
  String toString() {
    return 'TimerSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerSetting &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isEnabled),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$TimerSettingCopyWith<_TimerSetting> get copyWith =>
      __$TimerSettingCopyWithImpl<_TimerSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimerSettingToJson(this);
  }
}

abstract class _TimerSetting implements TimerSetting {
  const factory _TimerSetting(
      {@FormControlAnnotation() bool isEnabled,
      @FormControlAnnotation() int value}) = _$_TimerSetting;

  factory _TimerSetting.fromJson(Map<String, dynamic> json) =
      _$_TimerSetting.fromJson;

  @override
  @FormControlAnnotation()
  bool get isEnabled;
  @override
  @FormControlAnnotation()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$TimerSettingCopyWith<_TimerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

IncidenceFilter _$IncidenceFilterFromJson(Map<String, dynamic> json) {
  return _IncidenceFilter.fromJson(json);
}

/// @nodoc
class _$IncidenceFilterTearOff {
  const _$IncidenceFilterTearOff();

  _IncidenceFilter call(
      {@FormControlAnnotation() bool isMobilityEnabled = true,
      @FormControlAnnotation() bool isFurcationEnabled = true,
      @FormControlAnnotation() bool isBleedingEnabled = true,
      @FormControlAnnotation() bool isSuppurationEnabled = true,
      @FormControlAnnotation() bool isCalculusEnabled = true,
      @FormControlAnnotation() bool isPlaqueEnabled = true}) {
    return _IncidenceFilter(
      isMobilityEnabled: isMobilityEnabled,
      isFurcationEnabled: isFurcationEnabled,
      isBleedingEnabled: isBleedingEnabled,
      isSuppurationEnabled: isSuppurationEnabled,
      isCalculusEnabled: isCalculusEnabled,
      isPlaqueEnabled: isPlaqueEnabled,
    );
  }

  IncidenceFilter fromJson(Map<String, Object?> json) {
    return IncidenceFilter.fromJson(json);
  }
}

/// @nodoc
const $IncidenceFilter = _$IncidenceFilterTearOff();

/// @nodoc
mixin _$IncidenceFilter {
  @FormControlAnnotation()
  bool get isMobilityEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get isFurcationEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get isBleedingEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get isSuppurationEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get isCalculusEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  bool get isPlaqueEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncidenceFilterCopyWith<IncidenceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidenceFilterCopyWith<$Res> {
  factory $IncidenceFilterCopyWith(
          IncidenceFilter value, $Res Function(IncidenceFilter) then) =
      _$IncidenceFilterCopyWithImpl<$Res>;
  $Res call(
      {@FormControlAnnotation() bool isMobilityEnabled,
      @FormControlAnnotation() bool isFurcationEnabled,
      @FormControlAnnotation() bool isBleedingEnabled,
      @FormControlAnnotation() bool isSuppurationEnabled,
      @FormControlAnnotation() bool isCalculusEnabled,
      @FormControlAnnotation() bool isPlaqueEnabled});
}

/// @nodoc
class _$IncidenceFilterCopyWithImpl<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  _$IncidenceFilterCopyWithImpl(this._value, this._then);

  final IncidenceFilter _value;
  // ignore: unused_field
  final $Res Function(IncidenceFilter) _then;

  @override
  $Res call({
    Object? isMobilityEnabled = freezed,
    Object? isFurcationEnabled = freezed,
    Object? isBleedingEnabled = freezed,
    Object? isSuppurationEnabled = freezed,
    Object? isCalculusEnabled = freezed,
    Object? isPlaqueEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      isMobilityEnabled: isMobilityEnabled == freezed
          ? _value.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: isFurcationEnabled == freezed
          ? _value.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: isBleedingEnabled == freezed
          ? _value.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: isSuppurationEnabled == freezed
          ? _value.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: isCalculusEnabled == freezed
          ? _value.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: isPlaqueEnabled == freezed
          ? _value.isPlaqueEnabled
          : isPlaqueEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$IncidenceFilterCopyWith<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  factory _$IncidenceFilterCopyWith(
          _IncidenceFilter value, $Res Function(_IncidenceFilter) then) =
      __$IncidenceFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FormControlAnnotation() bool isMobilityEnabled,
      @FormControlAnnotation() bool isFurcationEnabled,
      @FormControlAnnotation() bool isBleedingEnabled,
      @FormControlAnnotation() bool isSuppurationEnabled,
      @FormControlAnnotation() bool isCalculusEnabled,
      @FormControlAnnotation() bool isPlaqueEnabled});
}

/// @nodoc
class __$IncidenceFilterCopyWithImpl<$Res>
    extends _$IncidenceFilterCopyWithImpl<$Res>
    implements _$IncidenceFilterCopyWith<$Res> {
  __$IncidenceFilterCopyWithImpl(
      _IncidenceFilter _value, $Res Function(_IncidenceFilter) _then)
      : super(_value, (v) => _then(v as _IncidenceFilter));

  @override
  _IncidenceFilter get _value => super._value as _IncidenceFilter;

  @override
  $Res call({
    Object? isMobilityEnabled = freezed,
    Object? isFurcationEnabled = freezed,
    Object? isBleedingEnabled = freezed,
    Object? isSuppurationEnabled = freezed,
    Object? isCalculusEnabled = freezed,
    Object? isPlaqueEnabled = freezed,
  }) {
    return _then(_IncidenceFilter(
      isMobilityEnabled: isMobilityEnabled == freezed
          ? _value.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: isFurcationEnabled == freezed
          ? _value.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: isBleedingEnabled == freezed
          ? _value.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: isSuppurationEnabled == freezed
          ? _value.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: isCalculusEnabled == freezed
          ? _value.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: isPlaqueEnabled == freezed
          ? _value.isPlaqueEnabled
          : isPlaqueEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncidenceFilter implements _IncidenceFilter {
  const _$_IncidenceFilter(
      {@FormControlAnnotation() this.isMobilityEnabled = true,
      @FormControlAnnotation() this.isFurcationEnabled = true,
      @FormControlAnnotation() this.isBleedingEnabled = true,
      @FormControlAnnotation() this.isSuppurationEnabled = true,
      @FormControlAnnotation() this.isCalculusEnabled = true,
      @FormControlAnnotation() this.isPlaqueEnabled = true});

  factory _$_IncidenceFilter.fromJson(Map<String, dynamic> json) =>
      _$$_IncidenceFilterFromJson(json);

  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isMobilityEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isFurcationEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isBleedingEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isSuppurationEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isCalculusEnabled;
  @JsonKey()
  @override
  @FormControlAnnotation()
  final bool isPlaqueEnabled;

  @override
  String toString() {
    return 'IncidenceFilter(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncidenceFilter &&
            const DeepCollectionEquality()
                .equals(other.isMobilityEnabled, isMobilityEnabled) &&
            const DeepCollectionEquality()
                .equals(other.isFurcationEnabled, isFurcationEnabled) &&
            const DeepCollectionEquality()
                .equals(other.isBleedingEnabled, isBleedingEnabled) &&
            const DeepCollectionEquality()
                .equals(other.isSuppurationEnabled, isSuppurationEnabled) &&
            const DeepCollectionEquality()
                .equals(other.isCalculusEnabled, isCalculusEnabled) &&
            const DeepCollectionEquality()
                .equals(other.isPlaqueEnabled, isPlaqueEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isMobilityEnabled),
      const DeepCollectionEquality().hash(isFurcationEnabled),
      const DeepCollectionEquality().hash(isBleedingEnabled),
      const DeepCollectionEquality().hash(isSuppurationEnabled),
      const DeepCollectionEquality().hash(isCalculusEnabled),
      const DeepCollectionEquality().hash(isPlaqueEnabled));

  @JsonKey(ignore: true)
  @override
  _$IncidenceFilterCopyWith<_IncidenceFilter> get copyWith =>
      __$IncidenceFilterCopyWithImpl<_IncidenceFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncidenceFilterToJson(this);
  }
}

abstract class _IncidenceFilter implements IncidenceFilter {
  const factory _IncidenceFilter(
      {@FormControlAnnotation() bool isMobilityEnabled,
      @FormControlAnnotation() bool isFurcationEnabled,
      @FormControlAnnotation() bool isBleedingEnabled,
      @FormControlAnnotation() bool isSuppurationEnabled,
      @FormControlAnnotation() bool isCalculusEnabled,
      @FormControlAnnotation() bool isPlaqueEnabled}) = _$_IncidenceFilter;

  factory _IncidenceFilter.fromJson(Map<String, dynamic> json) =
      _$_IncidenceFilter.fromJson;

  @override
  @FormControlAnnotation()
  bool get isMobilityEnabled;
  @override
  @FormControlAnnotation()
  bool get isFurcationEnabled;
  @override
  @FormControlAnnotation()
  bool get isBleedingEnabled;
  @override
  @FormControlAnnotation()
  bool get isSuppurationEnabled;
  @override
  @FormControlAnnotation()
  bool get isCalculusEnabled;
  @override
  @FormControlAnnotation()
  bool get isPlaqueEnabled;
  @override
  @JsonKey(ignore: true)
  _$IncidenceFilterCopyWith<_IncidenceFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

ScanOrder _$ScanOrderFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'arch':
      return ArchScanOrder.fromJson(json);
    case 'quadrant':
      return QuadrantScanOrder.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ScanOrder',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ScanOrderTearOff {
  const _$ScanOrderTearOff();

  ArchScanOrder arch(Jaw jaw,
      {required Direction direction, required ToothSide toothSide}) {
    return ArchScanOrder(
      jaw,
      direction: direction,
      toothSide: toothSide,
    );
  }

  QuadrantScanOrder quadrant(Quadrant quadrant,
      {required Direction direction, required ToothSide toothSide}) {
    return QuadrantScanOrder(
      quadrant,
      direction: direction,
      toothSide: toothSide,
    );
  }

  ScanOrder fromJson(Map<String, Object?> json) {
    return ScanOrder.fromJson(json);
  }
}

/// @nodoc
const $ScanOrder = _$ScanOrderTearOff();

/// @nodoc
mixin _$ScanOrder {
  Direction get direction => throw _privateConstructorUsedError;
  ToothSide get toothSide => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)
        arch,
    required TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)
        quadrant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArchScanOrder value) arch,
    required TResult Function(QuadrantScanOrder value) quadrant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanOrderCopyWith<ScanOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanOrderCopyWith<$Res> {
  factory $ScanOrderCopyWith(ScanOrder value, $Res Function(ScanOrder) then) =
      _$ScanOrderCopyWithImpl<$Res>;
  $Res call({Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$ScanOrderCopyWithImpl<$Res> implements $ScanOrderCopyWith<$Res> {
  _$ScanOrderCopyWithImpl(this._value, this._then);

  final ScanOrder _value;
  // ignore: unused_field
  final $Res Function(ScanOrder) _then;

  @override
  $Res call({
    Object? direction = freezed,
    Object? toothSide = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: toothSide == freezed
          ? _value.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
abstract class $ArchScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory $ArchScanOrderCopyWith(
          ArchScanOrder value, $Res Function(ArchScanOrder) then) =
      _$ArchScanOrderCopyWithImpl<$Res>;
  @override
  $Res call({Jaw jaw, Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$ArchScanOrderCopyWithImpl<$Res> extends _$ScanOrderCopyWithImpl<$Res>
    implements $ArchScanOrderCopyWith<$Res> {
  _$ArchScanOrderCopyWithImpl(
      ArchScanOrder _value, $Res Function(ArchScanOrder) _then)
      : super(_value, (v) => _then(v as ArchScanOrder));

  @override
  ArchScanOrder get _value => super._value as ArchScanOrder;

  @override
  $Res call({
    Object? jaw = freezed,
    Object? direction = freezed,
    Object? toothSide = freezed,
  }) {
    return _then(ArchScanOrder(
      jaw == freezed
          ? _value.jaw
          : jaw // ignore: cast_nullable_to_non_nullable
              as Jaw,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: toothSide == freezed
          ? _value.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArchScanOrder implements ArchScanOrder {
  const _$ArchScanOrder(this.jaw,
      {required this.direction, required this.toothSide, String? $type})
      : $type = $type ?? 'arch';

  factory _$ArchScanOrder.fromJson(Map<String, dynamic> json) =>
      _$$ArchScanOrderFromJson(json);

  @override
  final Jaw jaw;
  @override
  final Direction direction;
  @override
  final ToothSide toothSide;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScanOrder.arch(jaw: $jaw, direction: $direction, toothSide: $toothSide)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArchScanOrder &&
            const DeepCollectionEquality().equals(other.jaw, jaw) &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.toothSide, toothSide));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jaw),
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(toothSide));

  @JsonKey(ignore: true)
  @override
  $ArchScanOrderCopyWith<ArchScanOrder> get copyWith =>
      _$ArchScanOrderCopyWithImpl<ArchScanOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)
        arch,
    required TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)
        quadrant,
  }) {
    return arch(jaw, direction, toothSide);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
  }) {
    return arch?.call(jaw, direction, toothSide);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
    required TResult orElse(),
  }) {
    if (arch != null) {
      return arch(jaw, direction, toothSide);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArchScanOrder value) arch,
    required TResult Function(QuadrantScanOrder value) quadrant,
  }) {
    return arch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
  }) {
    return arch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
    required TResult orElse(),
  }) {
    if (arch != null) {
      return arch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArchScanOrderToJson(this);
  }
}

abstract class ArchScanOrder implements ScanOrder {
  const factory ArchScanOrder(Jaw jaw,
      {required Direction direction,
      required ToothSide toothSide}) = _$ArchScanOrder;

  factory ArchScanOrder.fromJson(Map<String, dynamic> json) =
      _$ArchScanOrder.fromJson;

  Jaw get jaw;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  $ArchScanOrderCopyWith<ArchScanOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuadrantScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory $QuadrantScanOrderCopyWith(
          QuadrantScanOrder value, $Res Function(QuadrantScanOrder) then) =
      _$QuadrantScanOrderCopyWithImpl<$Res>;
  @override
  $Res call({Quadrant quadrant, Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$QuadrantScanOrderCopyWithImpl<$Res>
    extends _$ScanOrderCopyWithImpl<$Res>
    implements $QuadrantScanOrderCopyWith<$Res> {
  _$QuadrantScanOrderCopyWithImpl(
      QuadrantScanOrder _value, $Res Function(QuadrantScanOrder) _then)
      : super(_value, (v) => _then(v as QuadrantScanOrder));

  @override
  QuadrantScanOrder get _value => super._value as QuadrantScanOrder;

  @override
  $Res call({
    Object? quadrant = freezed,
    Object? direction = freezed,
    Object? toothSide = freezed,
  }) {
    return _then(QuadrantScanOrder(
      quadrant == freezed
          ? _value.quadrant
          : quadrant // ignore: cast_nullable_to_non_nullable
              as Quadrant,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: toothSide == freezed
          ? _value.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuadrantScanOrder implements QuadrantScanOrder {
  const _$QuadrantScanOrder(this.quadrant,
      {required this.direction, required this.toothSide, String? $type})
      : $type = $type ?? 'quadrant';

  factory _$QuadrantScanOrder.fromJson(Map<String, dynamic> json) =>
      _$$QuadrantScanOrderFromJson(json);

  @override
  final Quadrant quadrant;
  @override
  final Direction direction;
  @override
  final ToothSide toothSide;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ScanOrder.quadrant(quadrant: $quadrant, direction: $direction, toothSide: $toothSide)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuadrantScanOrder &&
            const DeepCollectionEquality().equals(other.quadrant, quadrant) &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.toothSide, toothSide));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quadrant),
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(toothSide));

  @JsonKey(ignore: true)
  @override
  $QuadrantScanOrderCopyWith<QuadrantScanOrder> get copyWith =>
      _$QuadrantScanOrderCopyWithImpl<QuadrantScanOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)
        arch,
    required TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)
        quadrant,
  }) {
    return quadrant(this.quadrant, direction, toothSide);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
  }) {
    return quadrant?.call(this.quadrant, direction, toothSide);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult Function(
            Quadrant quadrant, Direction direction, ToothSide toothSide)?
        quadrant,
    required TResult orElse(),
  }) {
    if (quadrant != null) {
      return quadrant(this.quadrant, direction, toothSide);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ArchScanOrder value) arch,
    required TResult Function(QuadrantScanOrder value) quadrant,
  }) {
    return quadrant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
  }) {
    return quadrant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ArchScanOrder value)? arch,
    TResult Function(QuadrantScanOrder value)? quadrant,
    required TResult orElse(),
  }) {
    if (quadrant != null) {
      return quadrant(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuadrantScanOrderToJson(this);
  }
}

abstract class QuadrantScanOrder implements ScanOrder {
  const factory QuadrantScanOrder(Quadrant quadrant,
      {required Direction direction,
      required ToothSide toothSide}) = _$QuadrantScanOrder;

  factory QuadrantScanOrder.fromJson(Map<String, dynamic> json) =
      _$QuadrantScanOrder.fromJson;

  Quadrant get quadrant;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  $QuadrantScanOrderCopyWith<QuadrantScanOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

ChartingOrderValue _$ChartingOrderValueFromJson(Map<String, dynamic> json) {
  return _ChartingOrderValue.fromJson(json);
}

/// @nodoc
class _$ChartingOrderValueTearOff {
  const _$ChartingOrderValueTearOff();

  _ChartingOrderValue call(
      {ChartingOrderType chartingOrder = ChartingOrderType.arch,
      int selectedOption = 0,
      required List<List<ScanOrder>> order}) {
    return _ChartingOrderValue(
      chartingOrder: chartingOrder,
      selectedOption: selectedOption,
      order: order,
    );
  }

  ChartingOrderValue fromJson(Map<String, Object?> json) {
    return ChartingOrderValue.fromJson(json);
  }
}

/// @nodoc
const $ChartingOrderValue = _$ChartingOrderValueTearOff();

/// @nodoc
mixin _$ChartingOrderValue {
  ChartingOrderType get chartingOrder => throw _privateConstructorUsedError;
  int get selectedOption => throw _privateConstructorUsedError;
  List<List<ScanOrder>> get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartingOrderValueCopyWith<ChartingOrderValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartingOrderValueCopyWith<$Res> {
  factory $ChartingOrderValueCopyWith(
          ChartingOrderValue value, $Res Function(ChartingOrderValue) then) =
      _$ChartingOrderValueCopyWithImpl<$Res>;
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class _$ChartingOrderValueCopyWithImpl<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  _$ChartingOrderValueCopyWithImpl(this._value, this._then);

  final ChartingOrderValue _value;
  // ignore: unused_field
  final $Res Function(ChartingOrderValue) _then;

  @override
  $Res call({
    Object? chartingOrder = freezed,
    Object? selectedOption = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      chartingOrder: chartingOrder == freezed
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: selectedOption == freezed
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<List<ScanOrder>>,
    ));
  }
}

/// @nodoc
abstract class _$ChartingOrderValueCopyWith<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  factory _$ChartingOrderValueCopyWith(
          _ChartingOrderValue value, $Res Function(_ChartingOrderValue) then) =
      __$ChartingOrderValueCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class __$ChartingOrderValueCopyWithImpl<$Res>
    extends _$ChartingOrderValueCopyWithImpl<$Res>
    implements _$ChartingOrderValueCopyWith<$Res> {
  __$ChartingOrderValueCopyWithImpl(
      _ChartingOrderValue _value, $Res Function(_ChartingOrderValue) _then)
      : super(_value, (v) => _then(v as _ChartingOrderValue));

  @override
  _ChartingOrderValue get _value => super._value as _ChartingOrderValue;

  @override
  $Res call({
    Object? chartingOrder = freezed,
    Object? selectedOption = freezed,
    Object? order = freezed,
  }) {
    return _then(_ChartingOrderValue(
      chartingOrder: chartingOrder == freezed
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: selectedOption == freezed
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<List<ScanOrder>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChartingOrderValue implements _ChartingOrderValue {
  const _$_ChartingOrderValue(
      {this.chartingOrder = ChartingOrderType.arch,
      this.selectedOption = 0,
      required this.order});

  factory _$_ChartingOrderValue.fromJson(Map<String, dynamic> json) =>
      _$$_ChartingOrderValueFromJson(json);

  @JsonKey()
  @override
  final ChartingOrderType chartingOrder;
  @JsonKey()
  @override
  final int selectedOption;
  @override
  final List<List<ScanOrder>> order;

  @override
  String toString() {
    return 'ChartingOrderValue(chartingOrder: $chartingOrder, selectedOption: $selectedOption, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartingOrderValue &&
            const DeepCollectionEquality()
                .equals(other.chartingOrder, chartingOrder) &&
            const DeepCollectionEquality()
                .equals(other.selectedOption, selectedOption) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chartingOrder),
      const DeepCollectionEquality().hash(selectedOption),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$ChartingOrderValueCopyWith<_ChartingOrderValue> get copyWith =>
      __$ChartingOrderValueCopyWithImpl<_ChartingOrderValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartingOrderValueToJson(this);
  }
}

abstract class _ChartingOrderValue implements ChartingOrderValue {
  const factory _ChartingOrderValue(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      required List<List<ScanOrder>> order}) = _$_ChartingOrderValue;

  factory _ChartingOrderValue.fromJson(Map<String, dynamic> json) =
      _$_ChartingOrderValue.fromJson;

  @override
  ChartingOrderType get chartingOrder;
  @override
  int get selectedOption;
  @override
  List<List<ScanOrder>> get order;
  @override
  @JsonKey(ignore: true)
  _$ChartingOrderValueCopyWith<_ChartingOrderValue> get copyWith =>
      throw _privateConstructorUsedError;
}
