// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  String get anotherId => throw _privateConstructorUsedError;
  @FormControlAnnotation<String>()
  String get name => throw _privateConstructorUsedError;
  @FormControlAnnotation<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder => throw _privateConstructorUsedError;
  @FormControlAnnotation<NumberingStandard>()
  NumberingStandard get numberingStandard => throw _privateConstructorUsedError;
  IncidenceFilter get incidenceFilter => throw _privateConstructorUsedError;
  @FormControlAnnotation<MeasurementType>()
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  ThresholdSetting get threshold => throw _privateConstructorUsedError;
  TimerSetting get timer => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get audioGuidance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @FormControlAnnotation<String>()
          String name,
      @FormControlAnnotation<ChartingOrderValue>()
          ChartingOrderValue chartingOrder,
      @FormControlAnnotation<NumberingStandard>()
          NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @FormControlAnnotation<MeasurementType>()
          MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @FormControlAnnotation<bool>()
          bool audioGuidance});

  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  $IncidenceFilterCopyWith<$Res> get incidenceFilter;
  $ThresholdSettingCopyWith<$Res> get threshold;
  $TimerSettingCopyWith<$Res> get timer;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? anotherId = null,
    Object? name = null,
    Object? chartingOrder = null,
    Object? numberingStandard = null,
    Object? incidenceFilter = null,
    Object? measurementType = null,
    Object? threshold = null,
    Object? timer = null,
    Object? audioGuidance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      anotherId: null == anotherId
          ? _value.anotherId
          : anotherId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: null == chartingOrder
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: null == numberingStandard
          ? _value.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: null == incidenceFilter
          ? _value.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_value.chartingOrder, (value) {
      return _then(_value.copyWith(chartingOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterCopyWith<$Res>(_value.incidenceFilter, (value) {
      return _then(_value.copyWith(incidenceFilter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingCopyWith<$Res> get threshold {
    return $ThresholdSettingCopyWith<$Res>(_value.threshold, (value) {
      return _then(_value.copyWith(threshold: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimerSettingCopyWith<$Res> get timer {
    return $TimerSettingCopyWith<$Res>(_value.timer, (value) {
      return _then(_value.copyWith(timer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @FormControlAnnotation<String>()
          String name,
      @FormControlAnnotation<ChartingOrderValue>()
          ChartingOrderValue chartingOrder,
      @FormControlAnnotation<NumberingStandard>()
          NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @FormControlAnnotation<MeasurementType>()
          MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @FormControlAnnotation<bool>()
          bool audioGuidance});

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
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? anotherId = null,
    Object? name = null,
    Object? chartingOrder = null,
    Object? numberingStandard = null,
    Object? incidenceFilter = null,
    Object? measurementType = null,
    Object? threshold = null,
    Object? timer = null,
    Object? audioGuidance = null,
  }) {
    return _then(_$_Profile(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      anotherId: null == anotherId
          ? _value.anotherId
          : anotherId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: null == chartingOrder
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: null == numberingStandard
          ? _value.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: null == incidenceFilter
          ? _value.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: null == audioGuidance
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
      this.id,
      {required this.anotherId,
      @FormControlAnnotation<String>()
          required this.name,
      @FormControlAnnotation<ChartingOrderValue>()
          required this.chartingOrder,
      @FormControlAnnotation<NumberingStandard>()
          required this.numberingStandard,
      required this.incidenceFilter,
      @FormControlAnnotation<MeasurementType>()
          required this.measurementType,
      required this.threshold,
      required this.timer,
      @FormControlAnnotation<bool>()
          required this.audioGuidance})
      : super._();

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String id;
  @override
  final String anotherId;
  @override
  @FormControlAnnotation<String>()
  final String name;
  @override
  @FormControlAnnotation<ChartingOrderValue>()
  final ChartingOrderValue chartingOrder;
  @override
  @FormControlAnnotation<NumberingStandard>()
  final NumberingStandard numberingStandard;
  @override
  final IncidenceFilter incidenceFilter;
  @override
  @FormControlAnnotation<MeasurementType>()
  final MeasurementType measurementType;
  @override
  final ThresholdSetting threshold;
  @override
  final TimerSetting timer;
  @override
  @FormControlAnnotation<bool>()
  final bool audioGuidance;

  @override
  String toString() {
    return 'Profile(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.anotherId, anotherId) ||
                other.anotherId == anotherId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.chartingOrder, chartingOrder) ||
                other.chartingOrder == chartingOrder) &&
            (identical(other.numberingStandard, numberingStandard) ||
                other.numberingStandard == numberingStandard) &&
            (identical(other.incidenceFilter, incidenceFilter) ||
                other.incidenceFilter == incidenceFilter) &&
            (identical(other.measurementType, measurementType) ||
                other.measurementType == measurementType) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.audioGuidance, audioGuidance) ||
                other.audioGuidance == audioGuidance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      anotherId,
      name,
      chartingOrder,
      numberingStandard,
      incidenceFilter,
      measurementType,
      threshold,
      timer,
      audioGuidance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile extends Profile {
  factory _Profile(
      final String id,
      {required final String anotherId,
      @FormControlAnnotation<String>()
          required final String name,
      @FormControlAnnotation<ChartingOrderValue>()
          required final ChartingOrderValue chartingOrder,
      @FormControlAnnotation<NumberingStandard>()
          required final NumberingStandard numberingStandard,
      required final IncidenceFilter incidenceFilter,
      @FormControlAnnotation<MeasurementType>()
          required final MeasurementType measurementType,
      required final ThresholdSetting threshold,
      required final TimerSetting timer,
      @FormControlAnnotation<bool>()
          required final bool audioGuidance}) = _$_Profile;
  _Profile._() : super._();

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get id;
  @override
  String get anotherId;
  @override
  @FormControlAnnotation<String>()
  String get name;
  @override
  @FormControlAnnotation<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder;
  @override
  @FormControlAnnotation<NumberingStandard>()
  NumberingStandard get numberingStandard;
  @override
  IncidenceFilter get incidenceFilter;
  @override
  @FormControlAnnotation<MeasurementType>()
  MeasurementType get measurementType;
  @override
  ThresholdSetting get threshold;
  @override
  TimerSetting get timer;
  @override
  @FormControlAnnotation<bool>()
  bool get audioGuidance;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

ThresholdSetting _$ThresholdSettingFromJson(Map<String, dynamic> json) {
  return _ThresholdSetting.fromJson(json);
}

/// @nodoc
mixin _$ThresholdSetting {
  @FormControlAnnotation<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<int>()
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
      _$ThresholdSettingCopyWithImpl<$Res, ThresholdSetting>;
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isEnabled,
      @FormControlAnnotation<int>() int value});
}

/// @nodoc
class _$ThresholdSettingCopyWithImpl<$Res, $Val extends ThresholdSetting>
    implements $ThresholdSettingCopyWith<$Res> {
  _$ThresholdSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThresholdSettingCopyWith<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  factory _$$_ThresholdSettingCopyWith(
          _$_ThresholdSetting value, $Res Function(_$_ThresholdSetting) then) =
      __$$_ThresholdSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isEnabled,
      @FormControlAnnotation<int>() int value});
}

/// @nodoc
class __$$_ThresholdSettingCopyWithImpl<$Res>
    extends _$ThresholdSettingCopyWithImpl<$Res, _$_ThresholdSetting>
    implements _$$_ThresholdSettingCopyWith<$Res> {
  __$$_ThresholdSettingCopyWithImpl(
      _$_ThresholdSetting _value, $Res Function(_$_ThresholdSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$_ThresholdSetting(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
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
      {@FormControlAnnotation<bool>() this.isEnabled = true,
      @FormControlAnnotation<int>() this.value = 2});

  factory _$_ThresholdSetting.fromJson(Map<String, dynamic> json) =>
      _$$_ThresholdSettingFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<int>()
  final int value;

  @override
  String toString() {
    return 'ThresholdSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThresholdSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThresholdSettingCopyWith<_$_ThresholdSetting> get copyWith =>
      __$$_ThresholdSettingCopyWithImpl<_$_ThresholdSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThresholdSettingToJson(
      this,
    );
  }
}

abstract class _ThresholdSetting implements ThresholdSetting {
  const factory _ThresholdSetting(
      {@FormControlAnnotation<bool>() final bool isEnabled,
      @FormControlAnnotation<int>() final int value}) = _$_ThresholdSetting;

  factory _ThresholdSetting.fromJson(Map<String, dynamic> json) =
      _$_ThresholdSetting.fromJson;

  @override
  @FormControlAnnotation<bool>()
  bool get isEnabled;
  @override
  @FormControlAnnotation<int>()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_ThresholdSettingCopyWith<_$_ThresholdSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

TimerSetting _$TimerSettingFromJson(Map<String, dynamic> json) {
  return _TimerSetting.fromJson(json);
}

/// @nodoc
mixin _$TimerSetting {
  @FormControlAnnotation<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<int>()
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
      _$TimerSettingCopyWithImpl<$Res, TimerSetting>;
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isEnabled,
      @FormControlAnnotation<int>() int value});
}

/// @nodoc
class _$TimerSettingCopyWithImpl<$Res, $Val extends TimerSetting>
    implements $TimerSettingCopyWith<$Res> {
  _$TimerSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimerSettingCopyWith<$Res>
    implements $TimerSettingCopyWith<$Res> {
  factory _$$_TimerSettingCopyWith(
          _$_TimerSetting value, $Res Function(_$_TimerSetting) then) =
      __$$_TimerSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isEnabled,
      @FormControlAnnotation<int>() int value});
}

/// @nodoc
class __$$_TimerSettingCopyWithImpl<$Res>
    extends _$TimerSettingCopyWithImpl<$Res, _$_TimerSetting>
    implements _$$_TimerSettingCopyWith<$Res> {
  __$$_TimerSettingCopyWithImpl(
      _$_TimerSetting _value, $Res Function(_$_TimerSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$_TimerSetting(
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
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
      {@FormControlAnnotation<bool>() this.isEnabled = false,
      @FormControlAnnotation<int>() this.value = 5});

  factory _$_TimerSetting.fromJson(Map<String, dynamic> json) =>
      _$$_TimerSettingFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<int>()
  final int value;

  @override
  String toString() {
    return 'TimerSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimerSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimerSettingCopyWith<_$_TimerSetting> get copyWith =>
      __$$_TimerSettingCopyWithImpl<_$_TimerSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimerSettingToJson(
      this,
    );
  }
}

abstract class _TimerSetting implements TimerSetting {
  const factory _TimerSetting(
      {@FormControlAnnotation<bool>() final bool isEnabled,
      @FormControlAnnotation<int>() final int value}) = _$_TimerSetting;

  factory _TimerSetting.fromJson(Map<String, dynamic> json) =
      _$_TimerSetting.fromJson;

  @override
  @FormControlAnnotation<bool>()
  bool get isEnabled;
  @override
  @FormControlAnnotation<int>()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_TimerSettingCopyWith<_$_TimerSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

IncidenceFilter _$IncidenceFilterFromJson(Map<String, dynamic> json) {
  return _IncidenceFilter.fromJson(json);
}

/// @nodoc
mixin _$IncidenceFilter {
  @FormControlAnnotation<bool>()
  bool get isMobilityEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get isFurcationEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get isBleedingEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get isSuppurationEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
  bool get isCalculusEnabled => throw _privateConstructorUsedError;
  @FormControlAnnotation<bool>()
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
      _$IncidenceFilterCopyWithImpl<$Res, IncidenceFilter>;
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isMobilityEnabled,
      @FormControlAnnotation<bool>() bool isFurcationEnabled,
      @FormControlAnnotation<bool>() bool isBleedingEnabled,
      @FormControlAnnotation<bool>() bool isSuppurationEnabled,
      @FormControlAnnotation<bool>() bool isCalculusEnabled,
      @FormControlAnnotation<bool>() bool isPlaqueEnabled});
}

/// @nodoc
class _$IncidenceFilterCopyWithImpl<$Res, $Val extends IncidenceFilter>
    implements $IncidenceFilterCopyWith<$Res> {
  _$IncidenceFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMobilityEnabled = null,
    Object? isFurcationEnabled = null,
    Object? isBleedingEnabled = null,
    Object? isSuppurationEnabled = null,
    Object? isCalculusEnabled = null,
    Object? isPlaqueEnabled = null,
  }) {
    return _then(_value.copyWith(
      isMobilityEnabled: null == isMobilityEnabled
          ? _value.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: null == isFurcationEnabled
          ? _value.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: null == isBleedingEnabled
          ? _value.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: null == isSuppurationEnabled
          ? _value.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: null == isCalculusEnabled
          ? _value.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: null == isPlaqueEnabled
          ? _value.isPlaqueEnabled
          : isPlaqueEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncidenceFilterCopyWith<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  factory _$$_IncidenceFilterCopyWith(
          _$_IncidenceFilter value, $Res Function(_$_IncidenceFilter) then) =
      __$$_IncidenceFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation<bool>() bool isMobilityEnabled,
      @FormControlAnnotation<bool>() bool isFurcationEnabled,
      @FormControlAnnotation<bool>() bool isBleedingEnabled,
      @FormControlAnnotation<bool>() bool isSuppurationEnabled,
      @FormControlAnnotation<bool>() bool isCalculusEnabled,
      @FormControlAnnotation<bool>() bool isPlaqueEnabled});
}

/// @nodoc
class __$$_IncidenceFilterCopyWithImpl<$Res>
    extends _$IncidenceFilterCopyWithImpl<$Res, _$_IncidenceFilter>
    implements _$$_IncidenceFilterCopyWith<$Res> {
  __$$_IncidenceFilterCopyWithImpl(
      _$_IncidenceFilter _value, $Res Function(_$_IncidenceFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMobilityEnabled = null,
    Object? isFurcationEnabled = null,
    Object? isBleedingEnabled = null,
    Object? isSuppurationEnabled = null,
    Object? isCalculusEnabled = null,
    Object? isPlaqueEnabled = null,
  }) {
    return _then(_$_IncidenceFilter(
      isMobilityEnabled: null == isMobilityEnabled
          ? _value.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: null == isFurcationEnabled
          ? _value.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: null == isBleedingEnabled
          ? _value.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: null == isSuppurationEnabled
          ? _value.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: null == isCalculusEnabled
          ? _value.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: null == isPlaqueEnabled
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
      {@FormControlAnnotation<bool>() this.isMobilityEnabled = true,
      @FormControlAnnotation<bool>() this.isFurcationEnabled = true,
      @FormControlAnnotation<bool>() this.isBleedingEnabled = true,
      @FormControlAnnotation<bool>() this.isSuppurationEnabled = true,
      @FormControlAnnotation<bool>() this.isCalculusEnabled = true,
      @FormControlAnnotation<bool>() this.isPlaqueEnabled = true});

  factory _$_IncidenceFilter.fromJson(Map<String, dynamic> json) =>
      _$$_IncidenceFilterFromJson(json);

  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isMobilityEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isFurcationEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isBleedingEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isSuppurationEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isCalculusEnabled;
  @override
  @JsonKey()
  @FormControlAnnotation<bool>()
  final bool isPlaqueEnabled;

  @override
  String toString() {
    return 'IncidenceFilter(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncidenceFilter &&
            (identical(other.isMobilityEnabled, isMobilityEnabled) ||
                other.isMobilityEnabled == isMobilityEnabled) &&
            (identical(other.isFurcationEnabled, isFurcationEnabled) ||
                other.isFurcationEnabled == isFurcationEnabled) &&
            (identical(other.isBleedingEnabled, isBleedingEnabled) ||
                other.isBleedingEnabled == isBleedingEnabled) &&
            (identical(other.isSuppurationEnabled, isSuppurationEnabled) ||
                other.isSuppurationEnabled == isSuppurationEnabled) &&
            (identical(other.isCalculusEnabled, isCalculusEnabled) ||
                other.isCalculusEnabled == isCalculusEnabled) &&
            (identical(other.isPlaqueEnabled, isPlaqueEnabled) ||
                other.isPlaqueEnabled == isPlaqueEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMobilityEnabled,
      isFurcationEnabled,
      isBleedingEnabled,
      isSuppurationEnabled,
      isCalculusEnabled,
      isPlaqueEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncidenceFilterCopyWith<_$_IncidenceFilter> get copyWith =>
      __$$_IncidenceFilterCopyWithImpl<_$_IncidenceFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncidenceFilterToJson(
      this,
    );
  }
}

abstract class _IncidenceFilter implements IncidenceFilter {
  const factory _IncidenceFilter(
          {@FormControlAnnotation<bool>() final bool isMobilityEnabled,
          @FormControlAnnotation<bool>() final bool isFurcationEnabled,
          @FormControlAnnotation<bool>() final bool isBleedingEnabled,
          @FormControlAnnotation<bool>() final bool isSuppurationEnabled,
          @FormControlAnnotation<bool>() final bool isCalculusEnabled,
          @FormControlAnnotation<bool>() final bool isPlaqueEnabled}) =
      _$_IncidenceFilter;

  factory _IncidenceFilter.fromJson(Map<String, dynamic> json) =
      _$_IncidenceFilter.fromJson;

  @override
  @FormControlAnnotation<bool>()
  bool get isMobilityEnabled;
  @override
  @FormControlAnnotation<bool>()
  bool get isFurcationEnabled;
  @override
  @FormControlAnnotation<bool>()
  bool get isBleedingEnabled;
  @override
  @FormControlAnnotation<bool>()
  bool get isSuppurationEnabled;
  @override
  @FormControlAnnotation<bool>()
  bool get isCalculusEnabled;
  @override
  @FormControlAnnotation<bool>()
  bool get isPlaqueEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_IncidenceFilterCopyWith<_$_IncidenceFilter> get copyWith =>
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
    TResult? Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult? Function(
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
    TResult? Function(ArchScanOrder value)? arch,
    TResult? Function(QuadrantScanOrder value)? quadrant,
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
      _$ScanOrderCopyWithImpl<$Res, ScanOrder>;
  @useResult
  $Res call({Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$ScanOrderCopyWithImpl<$Res, $Val extends ScanOrder>
    implements $ScanOrderCopyWith<$Res> {
  _$ScanOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
          ? _value.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArchScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory _$$ArchScanOrderCopyWith(
          _$ArchScanOrder value, $Res Function(_$ArchScanOrder) then) =
      __$$ArchScanOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Jaw jaw, Direction direction, ToothSide toothSide});
}

/// @nodoc
class __$$ArchScanOrderCopyWithImpl<$Res>
    extends _$ScanOrderCopyWithImpl<$Res, _$ArchScanOrder>
    implements _$$ArchScanOrderCopyWith<$Res> {
  __$$ArchScanOrderCopyWithImpl(
      _$ArchScanOrder _value, $Res Function(_$ArchScanOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jaw = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_$ArchScanOrder(
      null == jaw
          ? _value.jaw
          : jaw // ignore: cast_nullable_to_non_nullable
              as Jaw,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
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
      {required this.direction, required this.toothSide, final String? $type})
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
            other is _$ArchScanOrder &&
            (identical(other.jaw, jaw) || other.jaw == jaw) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.toothSide, toothSide) ||
                other.toothSide == toothSide));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jaw, direction, toothSide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchScanOrderCopyWith<_$ArchScanOrder> get copyWith =>
      __$$ArchScanOrderCopyWithImpl<_$ArchScanOrder>(this, _$identity);

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
    TResult? Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult? Function(
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
    TResult? Function(ArchScanOrder value)? arch,
    TResult? Function(QuadrantScanOrder value)? quadrant,
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
    return _$$ArchScanOrderToJson(
      this,
    );
  }
}

abstract class ArchScanOrder implements ScanOrder {
  const factory ArchScanOrder(final Jaw jaw,
      {required final Direction direction,
      required final ToothSide toothSide}) = _$ArchScanOrder;

  factory ArchScanOrder.fromJson(Map<String, dynamic> json) =
      _$ArchScanOrder.fromJson;

  Jaw get jaw;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  _$$ArchScanOrderCopyWith<_$ArchScanOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuadrantScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory _$$QuadrantScanOrderCopyWith(
          _$QuadrantScanOrder value, $Res Function(_$QuadrantScanOrder) then) =
      __$$QuadrantScanOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Quadrant quadrant, Direction direction, ToothSide toothSide});
}

/// @nodoc
class __$$QuadrantScanOrderCopyWithImpl<$Res>
    extends _$ScanOrderCopyWithImpl<$Res, _$QuadrantScanOrder>
    implements _$$QuadrantScanOrderCopyWith<$Res> {
  __$$QuadrantScanOrderCopyWithImpl(
      _$QuadrantScanOrder _value, $Res Function(_$QuadrantScanOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quadrant = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_$QuadrantScanOrder(
      null == quadrant
          ? _value.quadrant
          : quadrant // ignore: cast_nullable_to_non_nullable
              as Quadrant,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
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
      {required this.direction, required this.toothSide, final String? $type})
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
            other is _$QuadrantScanOrder &&
            (identical(other.quadrant, quadrant) ||
                other.quadrant == quadrant) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.toothSide, toothSide) ||
                other.toothSide == toothSide));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quadrant, direction, toothSide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuadrantScanOrderCopyWith<_$QuadrantScanOrder> get copyWith =>
      __$$QuadrantScanOrderCopyWithImpl<_$QuadrantScanOrder>(this, _$identity);

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
    TResult? Function(Jaw jaw, Direction direction, ToothSide toothSide)? arch,
    TResult? Function(
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
    TResult? Function(ArchScanOrder value)? arch,
    TResult? Function(QuadrantScanOrder value)? quadrant,
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
    return _$$QuadrantScanOrderToJson(
      this,
    );
  }
}

abstract class QuadrantScanOrder implements ScanOrder {
  const factory QuadrantScanOrder(final Quadrant quadrant,
      {required final Direction direction,
      required final ToothSide toothSide}) = _$QuadrantScanOrder;

  factory QuadrantScanOrder.fromJson(Map<String, dynamic> json) =
      _$QuadrantScanOrder.fromJson;

  Quadrant get quadrant;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  _$$QuadrantScanOrderCopyWith<_$QuadrantScanOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

ChartingOrderValue _$ChartingOrderValueFromJson(Map<String, dynamic> json) {
  return _ChartingOrderValue.fromJson(json);
}

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
      _$ChartingOrderValueCopyWithImpl<$Res, ChartingOrderValue>;
  @useResult
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class _$ChartingOrderValueCopyWithImpl<$Res, $Val extends ChartingOrderValue>
    implements $ChartingOrderValueCopyWith<$Res> {
  _$ChartingOrderValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartingOrder = null,
    Object? selectedOption = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      chartingOrder: null == chartingOrder
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<List<ScanOrder>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChartingOrderValueCopyWith<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  factory _$$_ChartingOrderValueCopyWith(_$_ChartingOrderValue value,
          $Res Function(_$_ChartingOrderValue) then) =
      __$$_ChartingOrderValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class __$$_ChartingOrderValueCopyWithImpl<$Res>
    extends _$ChartingOrderValueCopyWithImpl<$Res, _$_ChartingOrderValue>
    implements _$$_ChartingOrderValueCopyWith<$Res> {
  __$$_ChartingOrderValueCopyWithImpl(
      _$_ChartingOrderValue _value, $Res Function(_$_ChartingOrderValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartingOrder = null,
    Object? selectedOption = null,
    Object? order = null,
  }) {
    return _then(_$_ChartingOrderValue(
      chartingOrder: null == chartingOrder
          ? _value.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: null == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value._order
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
      required final List<List<ScanOrder>> order})
      : _order = order;

  factory _$_ChartingOrderValue.fromJson(Map<String, dynamic> json) =>
      _$$_ChartingOrderValueFromJson(json);

  @override
  @JsonKey()
  final ChartingOrderType chartingOrder;
  @override
  @JsonKey()
  final int selectedOption;
  final List<List<ScanOrder>> _order;
  @override
  List<List<ScanOrder>> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  String toString() {
    return 'ChartingOrderValue(chartingOrder: $chartingOrder, selectedOption: $selectedOption, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChartingOrderValue &&
            (identical(other.chartingOrder, chartingOrder) ||
                other.chartingOrder == chartingOrder) &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption) &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chartingOrder, selectedOption,
      const DeepCollectionEquality().hash(_order));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChartingOrderValueCopyWith<_$_ChartingOrderValue> get copyWith =>
      __$$_ChartingOrderValueCopyWithImpl<_$_ChartingOrderValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChartingOrderValueToJson(
      this,
    );
  }
}

abstract class _ChartingOrderValue implements ChartingOrderValue {
  const factory _ChartingOrderValue(
      {final ChartingOrderType chartingOrder,
      final int selectedOption,
      required final List<List<ScanOrder>> order}) = _$_ChartingOrderValue;

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
  _$$_ChartingOrderValueCopyWith<_$_ChartingOrderValue> get copyWith =>
      throw _privateConstructorUsedError;
}
