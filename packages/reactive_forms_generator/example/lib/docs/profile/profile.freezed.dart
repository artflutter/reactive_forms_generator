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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  String get anotherId => throw _privateConstructorUsedError;
  @RfControl<String>()
  String get name => throw _privateConstructorUsedError;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder => throw _privateConstructorUsedError;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard => throw _privateConstructorUsedError;
  IncidenceFilter get incidenceFilter => throw _privateConstructorUsedError;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  ThresholdSetting get threshold => throw _privateConstructorUsedError;
  TimerSetting get timer => throw _privateConstructorUsedError;
  @RfControl<bool>()
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
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @RfControl<bool>() bool audioGuidance});

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
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilter incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSetting threshold,
      TimerSetting timer,
      @RfControl<bool>() bool audioGuidance});

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
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
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
    return _then(_$ProfileImpl(
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
class _$ProfileImpl extends _Profile {
  _$ProfileImpl(this.id,
      {required this.anotherId,
      @RfControl<String>() required this.name,
      @RfControl<ChartingOrderValue>() required this.chartingOrder,
      @RfControl<NumberingStandard>() required this.numberingStandard,
      required this.incidenceFilter,
      @RfControl<MeasurementType>() required this.measurementType,
      required this.threshold,
      required this.timer,
      @RfControl<bool>() required this.audioGuidance})
      : super._();

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String anotherId;
  @override
  @RfControl<String>()
  final String name;
  @override
  @RfControl<ChartingOrderValue>()
  final ChartingOrderValue chartingOrder;
  @override
  @RfControl<NumberingStandard>()
  final NumberingStandard numberingStandard;
  @override
  final IncidenceFilter incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  final MeasurementType measurementType;
  @override
  final ThresholdSetting threshold;
  @override
  final TimerSetting timer;
  @override
  @RfControl<bool>()
  final bool audioGuidance;

  @override
  String toString() {
    return 'Profile(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
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
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile extends Profile {
  factory _Profile(final String id,
      {required final String anotherId,
      @RfControl<String>() required final String name,
      @RfControl<ChartingOrderValue>()
      required final ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>()
      required final NumberingStandard numberingStandard,
      required final IncidenceFilter incidenceFilter,
      @RfControl<MeasurementType>()
      required final MeasurementType measurementType,
      required final ThresholdSetting threshold,
      required final TimerSetting timer,
      @RfControl<bool>() required final bool audioGuidance}) = _$ProfileImpl;
  _Profile._() : super._();

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get anotherId;
  @override
  @RfControl<String>()
  String get name;
  @override
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder;
  @override
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard;
  @override
  IncidenceFilter get incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  @override
  ThresholdSetting get threshold;
  @override
  TimerSetting get timer;
  @override
  @RfControl<bool>()
  bool get audioGuidance;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThresholdSetting _$ThresholdSettingFromJson(Map<String, dynamic> json) {
  return _ThresholdSetting.fromJson(json);
}

/// @nodoc
mixin _$ThresholdSetting {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
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
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
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
abstract class _$$ThresholdSettingImplCopyWith<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  factory _$$ThresholdSettingImplCopyWith(_$ThresholdSettingImpl value,
          $Res Function(_$ThresholdSettingImpl) then) =
      __$$ThresholdSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$ThresholdSettingImplCopyWithImpl<$Res>
    extends _$ThresholdSettingCopyWithImpl<$Res, _$ThresholdSettingImpl>
    implements _$$ThresholdSettingImplCopyWith<$Res> {
  __$$ThresholdSettingImplCopyWithImpl(_$ThresholdSettingImpl _value,
      $Res Function(_$ThresholdSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$ThresholdSettingImpl(
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
class _$ThresholdSettingImpl implements _ThresholdSetting {
  const _$ThresholdSettingImpl(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});

  factory _$ThresholdSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThresholdSettingImplFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  @override
  String toString() {
    return 'ThresholdSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThresholdSettingImpl &&
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
  _$$ThresholdSettingImplCopyWith<_$ThresholdSettingImpl> get copyWith =>
      __$$ThresholdSettingImplCopyWithImpl<_$ThresholdSettingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThresholdSettingImplToJson(
      this,
    );
  }
}

abstract class _ThresholdSetting implements ThresholdSetting {
  const factory _ThresholdSetting(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$ThresholdSettingImpl;

  factory _ThresholdSetting.fromJson(Map<String, dynamic> json) =
      _$ThresholdSettingImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$ThresholdSettingImplCopyWith<_$ThresholdSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimerSetting _$TimerSettingFromJson(Map<String, dynamic> json) {
  return _TimerSetting.fromJson(json);
}

/// @nodoc
mixin _$TimerSetting {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
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
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
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
abstract class _$$TimerSettingImplCopyWith<$Res>
    implements $TimerSettingCopyWith<$Res> {
  factory _$$TimerSettingImplCopyWith(
          _$TimerSettingImpl value, $Res Function(_$TimerSettingImpl) then) =
      __$$TimerSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$TimerSettingImplCopyWithImpl<$Res>
    extends _$TimerSettingCopyWithImpl<$Res, _$TimerSettingImpl>
    implements _$$TimerSettingImplCopyWith<$Res> {
  __$$TimerSettingImplCopyWithImpl(
      _$TimerSettingImpl _value, $Res Function(_$TimerSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$TimerSettingImpl(
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
class _$TimerSettingImpl implements _TimerSetting {
  const _$TimerSettingImpl(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});

  factory _$TimerSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerSettingImplFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  @override
  String toString() {
    return 'TimerSetting(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerSettingImpl &&
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
  _$$TimerSettingImplCopyWith<_$TimerSettingImpl> get copyWith =>
      __$$TimerSettingImplCopyWithImpl<_$TimerSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerSettingImplToJson(
      this,
    );
  }
}

abstract class _TimerSetting implements TimerSetting {
  const factory _TimerSetting(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$TimerSettingImpl;

  factory _TimerSetting.fromJson(Map<String, dynamic> json) =
      _$TimerSettingImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$TimerSettingImplCopyWith<_$TimerSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncidenceFilter _$IncidenceFilterFromJson(Map<String, dynamic> json) {
  return _IncidenceFilter.fromJson(json);
}

/// @nodoc
mixin _$IncidenceFilter {
  @RfControl<bool>()
  bool get isMobilityEnabled => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get isFurcationEnabled => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get isBleedingEnabled => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get isSuppurationEnabled => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get isCalculusEnabled => throw _privateConstructorUsedError;
  @RfControl<bool>()
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
      {@RfControl<bool>() bool isMobilityEnabled,
      @RfControl<bool>() bool isFurcationEnabled,
      @RfControl<bool>() bool isBleedingEnabled,
      @RfControl<bool>() bool isSuppurationEnabled,
      @RfControl<bool>() bool isCalculusEnabled,
      @RfControl<bool>() bool isPlaqueEnabled});
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
abstract class _$$IncidenceFilterImplCopyWith<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  factory _$$IncidenceFilterImplCopyWith(_$IncidenceFilterImpl value,
          $Res Function(_$IncidenceFilterImpl) then) =
      __$$IncidenceFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl<bool>() bool isMobilityEnabled,
      @RfControl<bool>() bool isFurcationEnabled,
      @RfControl<bool>() bool isBleedingEnabled,
      @RfControl<bool>() bool isSuppurationEnabled,
      @RfControl<bool>() bool isCalculusEnabled,
      @RfControl<bool>() bool isPlaqueEnabled});
}

/// @nodoc
class __$$IncidenceFilterImplCopyWithImpl<$Res>
    extends _$IncidenceFilterCopyWithImpl<$Res, _$IncidenceFilterImpl>
    implements _$$IncidenceFilterImplCopyWith<$Res> {
  __$$IncidenceFilterImplCopyWithImpl(
      _$IncidenceFilterImpl _value, $Res Function(_$IncidenceFilterImpl) _then)
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
    return _then(_$IncidenceFilterImpl(
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
class _$IncidenceFilterImpl implements _IncidenceFilter {
  const _$IncidenceFilterImpl(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});

  factory _$IncidenceFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidenceFilterImplFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isMobilityEnabled;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isFurcationEnabled;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isBleedingEnabled;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isSuppurationEnabled;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isCalculusEnabled;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isPlaqueEnabled;

  @override
  String toString() {
    return 'IncidenceFilter(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidenceFilterImpl &&
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
  _$$IncidenceFilterImplCopyWith<_$IncidenceFilterImpl> get copyWith =>
      __$$IncidenceFilterImplCopyWithImpl<_$IncidenceFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncidenceFilterImplToJson(
      this,
    );
  }
}

abstract class _IncidenceFilter implements IncidenceFilter {
  const factory _IncidenceFilter(
      {@RfControl<bool>() final bool isMobilityEnabled,
      @RfControl<bool>() final bool isFurcationEnabled,
      @RfControl<bool>() final bool isBleedingEnabled,
      @RfControl<bool>() final bool isSuppurationEnabled,
      @RfControl<bool>() final bool isCalculusEnabled,
      @RfControl<bool>() final bool isPlaqueEnabled}) = _$IncidenceFilterImpl;

  factory _IncidenceFilter.fromJson(Map<String, dynamic> json) =
      _$IncidenceFilterImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isMobilityEnabled;
  @override
  @RfControl<bool>()
  bool get isFurcationEnabled;
  @override
  @RfControl<bool>()
  bool get isBleedingEnabled;
  @override
  @RfControl<bool>()
  bool get isSuppurationEnabled;
  @override
  @RfControl<bool>()
  bool get isCalculusEnabled;
  @override
  @RfControl<bool>()
  bool get isPlaqueEnabled;
  @override
  @JsonKey(ignore: true)
  _$$IncidenceFilterImplCopyWith<_$IncidenceFilterImpl> get copyWith =>
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
abstract class _$$ArchScanOrderImplCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory _$$ArchScanOrderImplCopyWith(
          _$ArchScanOrderImpl value, $Res Function(_$ArchScanOrderImpl) then) =
      __$$ArchScanOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Jaw jaw, Direction direction, ToothSide toothSide});
}

/// @nodoc
class __$$ArchScanOrderImplCopyWithImpl<$Res>
    extends _$ScanOrderCopyWithImpl<$Res, _$ArchScanOrderImpl>
    implements _$$ArchScanOrderImplCopyWith<$Res> {
  __$$ArchScanOrderImplCopyWithImpl(
      _$ArchScanOrderImpl _value, $Res Function(_$ArchScanOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jaw = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_$ArchScanOrderImpl(
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
class _$ArchScanOrderImpl implements ArchScanOrder {
  const _$ArchScanOrderImpl(this.jaw,
      {required this.direction, required this.toothSide, final String? $type})
      : $type = $type ?? 'arch';

  factory _$ArchScanOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArchScanOrderImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArchScanOrderImpl &&
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
  _$$ArchScanOrderImplCopyWith<_$ArchScanOrderImpl> get copyWith =>
      __$$ArchScanOrderImplCopyWithImpl<_$ArchScanOrderImpl>(this, _$identity);

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
    return _$$ArchScanOrderImplToJson(
      this,
    );
  }
}

abstract class ArchScanOrder implements ScanOrder {
  const factory ArchScanOrder(final Jaw jaw,
      {required final Direction direction,
      required final ToothSide toothSide}) = _$ArchScanOrderImpl;

  factory ArchScanOrder.fromJson(Map<String, dynamic> json) =
      _$ArchScanOrderImpl.fromJson;

  Jaw get jaw;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  _$$ArchScanOrderImplCopyWith<_$ArchScanOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuadrantScanOrderImplCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory _$$QuadrantScanOrderImplCopyWith(_$QuadrantScanOrderImpl value,
          $Res Function(_$QuadrantScanOrderImpl) then) =
      __$$QuadrantScanOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Quadrant quadrant, Direction direction, ToothSide toothSide});
}

/// @nodoc
class __$$QuadrantScanOrderImplCopyWithImpl<$Res>
    extends _$ScanOrderCopyWithImpl<$Res, _$QuadrantScanOrderImpl>
    implements _$$QuadrantScanOrderImplCopyWith<$Res> {
  __$$QuadrantScanOrderImplCopyWithImpl(_$QuadrantScanOrderImpl _value,
      $Res Function(_$QuadrantScanOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quadrant = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_$QuadrantScanOrderImpl(
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
class _$QuadrantScanOrderImpl implements QuadrantScanOrder {
  const _$QuadrantScanOrderImpl(this.quadrant,
      {required this.direction, required this.toothSide, final String? $type})
      : $type = $type ?? 'quadrant';

  factory _$QuadrantScanOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuadrantScanOrderImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuadrantScanOrderImpl &&
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
  _$$QuadrantScanOrderImplCopyWith<_$QuadrantScanOrderImpl> get copyWith =>
      __$$QuadrantScanOrderImplCopyWithImpl<_$QuadrantScanOrderImpl>(
          this, _$identity);

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
    return _$$QuadrantScanOrderImplToJson(
      this,
    );
  }
}

abstract class QuadrantScanOrder implements ScanOrder {
  const factory QuadrantScanOrder(final Quadrant quadrant,
      {required final Direction direction,
      required final ToothSide toothSide}) = _$QuadrantScanOrderImpl;

  factory QuadrantScanOrder.fromJson(Map<String, dynamic> json) =
      _$QuadrantScanOrderImpl.fromJson;

  Quadrant get quadrant;
  @override
  Direction get direction;
  @override
  ToothSide get toothSide;
  @override
  @JsonKey(ignore: true)
  _$$QuadrantScanOrderImplCopyWith<_$QuadrantScanOrderImpl> get copyWith =>
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
abstract class _$$ChartingOrderValueImplCopyWith<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  factory _$$ChartingOrderValueImplCopyWith(_$ChartingOrderValueImpl value,
          $Res Function(_$ChartingOrderValueImpl) then) =
      __$$ChartingOrderValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class __$$ChartingOrderValueImplCopyWithImpl<$Res>
    extends _$ChartingOrderValueCopyWithImpl<$Res, _$ChartingOrderValueImpl>
    implements _$$ChartingOrderValueImplCopyWith<$Res> {
  __$$ChartingOrderValueImplCopyWithImpl(_$ChartingOrderValueImpl _value,
      $Res Function(_$ChartingOrderValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartingOrder = null,
    Object? selectedOption = null,
    Object? order = null,
  }) {
    return _then(_$ChartingOrderValueImpl(
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
class _$ChartingOrderValueImpl implements _ChartingOrderValue {
  const _$ChartingOrderValueImpl(
      {this.chartingOrder = ChartingOrderType.arch,
      this.selectedOption = 0,
      required final List<List<ScanOrder>> order})
      : _order = order;

  factory _$ChartingOrderValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartingOrderValueImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartingOrderValueImpl &&
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
  _$$ChartingOrderValueImplCopyWith<_$ChartingOrderValueImpl> get copyWith =>
      __$$ChartingOrderValueImplCopyWithImpl<_$ChartingOrderValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartingOrderValueImplToJson(
      this,
    );
  }
}

abstract class _ChartingOrderValue implements ChartingOrderValue {
  const factory _ChartingOrderValue(
      {final ChartingOrderType chartingOrder,
      final int selectedOption,
      required final List<List<ScanOrder>> order}) = _$ChartingOrderValueImpl;

  factory _ChartingOrderValue.fromJson(Map<String, dynamic> json) =
      _$ChartingOrderValueImpl.fromJson;

  @override
  ChartingOrderType get chartingOrder;
  @override
  int get selectedOption;
  @override
  List<List<ScanOrder>> get order;
  @override
  @JsonKey(ignore: true)
  _$$ChartingOrderValueImplCopyWith<_$ChartingOrderValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
