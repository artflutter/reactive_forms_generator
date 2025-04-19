// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Profile {
  String get id;
  String get anotherId;
  @RfControl<String>()
  String get name;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard;
  IncidenceFilter get incidenceFilter;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  ThresholdSetting get threshold;
  TimerSetting get timer;
  @RfControl<bool>()
  bool get audioGuidance;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<Profile> get copyWith =>
      _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Profile &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Profile(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) =
      _$ProfileCopyWithImpl;
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
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      anotherId: null == anotherId
          ? _self.anotherId
          : anotherId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: null == chartingOrder
          ? _self.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: null == numberingStandard
          ? _self.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: null == incidenceFilter
          ? _self.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterCopyWith<$Res>(_self.incidenceFilter, (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingCopyWith<$Res> get threshold {
    return $ThresholdSettingCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingCopyWith<$Res> get timer {
    return $TimerSettingCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Profile extends Profile {
  _Profile(this.id,
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
  factory _Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

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

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'Profile(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) =
      __$ProfileCopyWithImpl;
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
class __$ProfileCopyWithImpl<$Res> implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Profile(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      anotherId: null == anotherId
          ? _self.anotherId
          : anotherId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chartingOrder: null == chartingOrder
          ? _self.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderValue,
      numberingStandard: null == numberingStandard
          ? _self.numberingStandard
          : numberingStandard // ignore: cast_nullable_to_non_nullable
              as NumberingStandard,
      incidenceFilter: null == incidenceFilter
          ? _self.incidenceFilter
          : incidenceFilter // ignore: cast_nullable_to_non_nullable
              as IncidenceFilter,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSetting,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSetting,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterCopyWith<$Res>(_self.incidenceFilter, (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingCopyWith<$Res> get threshold {
    return $ThresholdSettingCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingCopyWith<$Res> get timer {
    return $TimerSettingCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
mixin _$ThresholdSetting {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of ThresholdSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThresholdSettingCopyWith<ThresholdSetting> get copyWith =>
      _$ThresholdSettingCopyWithImpl<ThresholdSetting>(
          this as ThresholdSetting, _$identity);

  /// Serializes this ThresholdSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThresholdSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSetting(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ThresholdSettingCopyWith<$Res> {
  factory $ThresholdSettingCopyWith(
          ThresholdSetting value, $Res Function(ThresholdSetting) _then) =
      _$ThresholdSettingCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$ThresholdSettingCopyWithImpl<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  _$ThresholdSettingCopyWithImpl(this._self, this._then);

  final ThresholdSetting _self;
  final $Res Function(ThresholdSetting) _then;

  /// Create a copy of ThresholdSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ThresholdSetting implements ThresholdSetting {
  const _ThresholdSetting(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});
  factory _ThresholdSetting.fromJson(Map<String, dynamic> json) =>
      _$ThresholdSettingFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of ThresholdSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThresholdSettingCopyWith<_ThresholdSetting> get copyWith =>
      __$ThresholdSettingCopyWithImpl<_ThresholdSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThresholdSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThresholdSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSetting(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ThresholdSettingCopyWith<$Res>
    implements $ThresholdSettingCopyWith<$Res> {
  factory _$ThresholdSettingCopyWith(
          _ThresholdSetting value, $Res Function(_ThresholdSetting) _then) =
      __$ThresholdSettingCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$ThresholdSettingCopyWithImpl<$Res>
    implements _$ThresholdSettingCopyWith<$Res> {
  __$ThresholdSettingCopyWithImpl(this._self, this._then);

  final _ThresholdSetting _self;
  final $Res Function(_ThresholdSetting) _then;

  /// Create a copy of ThresholdSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_ThresholdSetting(
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$TimerSetting {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of TimerSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimerSettingCopyWith<TimerSetting> get copyWith =>
      _$TimerSettingCopyWithImpl<TimerSetting>(
          this as TimerSetting, _$identity);

  /// Serializes this TimerSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimerSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSetting(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $TimerSettingCopyWith<$Res> {
  factory $TimerSettingCopyWith(
          TimerSetting value, $Res Function(TimerSetting) _then) =
      _$TimerSettingCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$TimerSettingCopyWithImpl<$Res> implements $TimerSettingCopyWith<$Res> {
  _$TimerSettingCopyWithImpl(this._self, this._then);

  final TimerSetting _self;
  final $Res Function(TimerSetting) _then;

  /// Create a copy of TimerSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TimerSetting implements TimerSetting {
  const _TimerSetting(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});
  factory _TimerSetting.fromJson(Map<String, dynamic> json) =>
      _$TimerSettingFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of TimerSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimerSettingCopyWith<_TimerSetting> get copyWith =>
      __$TimerSettingCopyWithImpl<_TimerSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimerSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSetting(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$TimerSettingCopyWith<$Res>
    implements $TimerSettingCopyWith<$Res> {
  factory _$TimerSettingCopyWith(
          _TimerSetting value, $Res Function(_TimerSetting) _then) =
      __$TimerSettingCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$TimerSettingCopyWithImpl<$Res>
    implements _$TimerSettingCopyWith<$Res> {
  __$TimerSettingCopyWithImpl(this._self, this._then);

  final _TimerSetting _self;
  final $Res Function(_TimerSetting) _then;

  /// Create a copy of TimerSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_TimerSetting(
      isEnabled: null == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$IncidenceFilter {
  @RfControl<bool>()
  bool get isMobilityEnabled;
  @RfControl<bool>()
  bool get isFurcationEnabled;
  @RfControl<bool>()
  bool get isBleedingEnabled;
  @RfControl<bool>()
  bool get isSuppurationEnabled;
  @RfControl<bool>()
  bool get isCalculusEnabled;
  @RfControl<bool>()
  bool get isPlaqueEnabled;

  /// Create a copy of IncidenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IncidenceFilterCopyWith<IncidenceFilter> get copyWith =>
      _$IncidenceFilterCopyWithImpl<IncidenceFilter>(
          this as IncidenceFilter, _$identity);

  /// Serializes this IncidenceFilter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncidenceFilter &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMobilityEnabled,
      isFurcationEnabled,
      isBleedingEnabled,
      isSuppurationEnabled,
      isCalculusEnabled,
      isPlaqueEnabled);

  @override
  String toString() {
    return 'IncidenceFilter(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class $IncidenceFilterCopyWith<$Res> {
  factory $IncidenceFilterCopyWith(
          IncidenceFilter value, $Res Function(IncidenceFilter) _then) =
      _$IncidenceFilterCopyWithImpl;
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
class _$IncidenceFilterCopyWithImpl<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  _$IncidenceFilterCopyWithImpl(this._self, this._then);

  final IncidenceFilter _self;
  final $Res Function(IncidenceFilter) _then;

  /// Create a copy of IncidenceFilter
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      isMobilityEnabled: null == isMobilityEnabled
          ? _self.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: null == isFurcationEnabled
          ? _self.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: null == isBleedingEnabled
          ? _self.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: null == isSuppurationEnabled
          ? _self.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: null == isCalculusEnabled
          ? _self.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: null == isPlaqueEnabled
          ? _self.isPlaqueEnabled
          : isPlaqueEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _IncidenceFilter implements IncidenceFilter {
  const _IncidenceFilter(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});
  factory _IncidenceFilter.fromJson(Map<String, dynamic> json) =>
      _$IncidenceFilterFromJson(json);

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

  /// Create a copy of IncidenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IncidenceFilterCopyWith<_IncidenceFilter> get copyWith =>
      __$IncidenceFilterCopyWithImpl<_IncidenceFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IncidenceFilterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncidenceFilter &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMobilityEnabled,
      isFurcationEnabled,
      isBleedingEnabled,
      isSuppurationEnabled,
      isCalculusEnabled,
      isPlaqueEnabled);

  @override
  String toString() {
    return 'IncidenceFilter(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class _$IncidenceFilterCopyWith<$Res>
    implements $IncidenceFilterCopyWith<$Res> {
  factory _$IncidenceFilterCopyWith(
          _IncidenceFilter value, $Res Function(_IncidenceFilter) _then) =
      __$IncidenceFilterCopyWithImpl;
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
class __$IncidenceFilterCopyWithImpl<$Res>
    implements _$IncidenceFilterCopyWith<$Res> {
  __$IncidenceFilterCopyWithImpl(this._self, this._then);

  final _IncidenceFilter _self;
  final $Res Function(_IncidenceFilter) _then;

  /// Create a copy of IncidenceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isMobilityEnabled = null,
    Object? isFurcationEnabled = null,
    Object? isBleedingEnabled = null,
    Object? isSuppurationEnabled = null,
    Object? isCalculusEnabled = null,
    Object? isPlaqueEnabled = null,
  }) {
    return _then(_IncidenceFilter(
      isMobilityEnabled: null == isMobilityEnabled
          ? _self.isMobilityEnabled
          : isMobilityEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isFurcationEnabled: null == isFurcationEnabled
          ? _self.isFurcationEnabled
          : isFurcationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBleedingEnabled: null == isBleedingEnabled
          ? _self.isBleedingEnabled
          : isBleedingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuppurationEnabled: null == isSuppurationEnabled
          ? _self.isSuppurationEnabled
          : isSuppurationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isCalculusEnabled: null == isCalculusEnabled
          ? _self.isCalculusEnabled
          : isCalculusEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlaqueEnabled: null == isPlaqueEnabled
          ? _self.isPlaqueEnabled
          : isPlaqueEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
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
  Direction get direction;
  ToothSide get toothSide;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScanOrderCopyWith<ScanOrder> get copyWith =>
      _$ScanOrderCopyWithImpl<ScanOrder>(this as ScanOrder, _$identity);

  /// Serializes this ScanOrder to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScanOrder &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.toothSide, toothSide) ||
                other.toothSide == toothSide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction, toothSide);

  @override
  String toString() {
    return 'ScanOrder(direction: $direction, toothSide: $toothSide)';
  }
}

/// @nodoc
abstract mixin class $ScanOrderCopyWith<$Res> {
  factory $ScanOrderCopyWith(ScanOrder value, $Res Function(ScanOrder) _then) =
      _$ScanOrderCopyWithImpl;
  @useResult
  $Res call({Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$ScanOrderCopyWithImpl<$Res> implements $ScanOrderCopyWith<$Res> {
  _$ScanOrderCopyWithImpl(this._self, this._then);

  final ScanOrder _self;
  final $Res Function(ScanOrder) _then;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(_self.copyWith(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
          ? _self.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ArchScanOrder implements ScanOrder {
  const ArchScanOrder(this.jaw,
      {required this.direction, required this.toothSide, final String? $type})
      : $type = $type ?? 'arch';
  factory ArchScanOrder.fromJson(Map<String, dynamic> json) =>
      _$ArchScanOrderFromJson(json);

  final Jaw jaw;
  @override
  final Direction direction;
  @override
  final ToothSide toothSide;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArchScanOrderCopyWith<ArchScanOrder> get copyWith =>
      _$ArchScanOrderCopyWithImpl<ArchScanOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArchScanOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArchScanOrder &&
            (identical(other.jaw, jaw) || other.jaw == jaw) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.toothSide, toothSide) ||
                other.toothSide == toothSide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jaw, direction, toothSide);

  @override
  String toString() {
    return 'ScanOrder.arch(jaw: $jaw, direction: $direction, toothSide: $toothSide)';
  }
}

/// @nodoc
abstract mixin class $ArchScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory $ArchScanOrderCopyWith(
          ArchScanOrder value, $Res Function(ArchScanOrder) _then) =
      _$ArchScanOrderCopyWithImpl;
  @override
  @useResult
  $Res call({Jaw jaw, Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$ArchScanOrderCopyWithImpl<$Res>
    implements $ArchScanOrderCopyWith<$Res> {
  _$ArchScanOrderCopyWithImpl(this._self, this._then);

  final ArchScanOrder _self;
  final $Res Function(ArchScanOrder) _then;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jaw = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(ArchScanOrder(
      null == jaw
          ? _self.jaw
          : jaw // ignore: cast_nullable_to_non_nullable
              as Jaw,
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
          ? _self.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class QuadrantScanOrder implements ScanOrder {
  const QuadrantScanOrder(this.quadrant,
      {required this.direction, required this.toothSide, final String? $type})
      : $type = $type ?? 'quadrant';
  factory QuadrantScanOrder.fromJson(Map<String, dynamic> json) =>
      _$QuadrantScanOrderFromJson(json);

  final Quadrant quadrant;
  @override
  final Direction direction;
  @override
  final ToothSide toothSide;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuadrantScanOrderCopyWith<QuadrantScanOrder> get copyWith =>
      _$QuadrantScanOrderCopyWithImpl<QuadrantScanOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuadrantScanOrderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuadrantScanOrder &&
            (identical(other.quadrant, quadrant) ||
                other.quadrant == quadrant) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.toothSide, toothSide) ||
                other.toothSide == toothSide));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quadrant, direction, toothSide);

  @override
  String toString() {
    return 'ScanOrder.quadrant(quadrant: $quadrant, direction: $direction, toothSide: $toothSide)';
  }
}

/// @nodoc
abstract mixin class $QuadrantScanOrderCopyWith<$Res>
    implements $ScanOrderCopyWith<$Res> {
  factory $QuadrantScanOrderCopyWith(
          QuadrantScanOrder value, $Res Function(QuadrantScanOrder) _then) =
      _$QuadrantScanOrderCopyWithImpl;
  @override
  @useResult
  $Res call({Quadrant quadrant, Direction direction, ToothSide toothSide});
}

/// @nodoc
class _$QuadrantScanOrderCopyWithImpl<$Res>
    implements $QuadrantScanOrderCopyWith<$Res> {
  _$QuadrantScanOrderCopyWithImpl(this._self, this._then);

  final QuadrantScanOrder _self;
  final $Res Function(QuadrantScanOrder) _then;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quadrant = null,
    Object? direction = null,
    Object? toothSide = null,
  }) {
    return _then(QuadrantScanOrder(
      null == quadrant
          ? _self.quadrant
          : quadrant // ignore: cast_nullable_to_non_nullable
              as Quadrant,
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
      toothSide: null == toothSide
          ? _self.toothSide
          : toothSide // ignore: cast_nullable_to_non_nullable
              as ToothSide,
    ));
  }
}

/// @nodoc
mixin _$ChartingOrderValue {
  ChartingOrderType get chartingOrder;
  int get selectedOption;
  List<List<ScanOrder>> get order;

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<ChartingOrderValue> get copyWith =>
      _$ChartingOrderValueCopyWithImpl<ChartingOrderValue>(
          this as ChartingOrderValue, _$identity);

  /// Serializes this ChartingOrderValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChartingOrderValue &&
            (identical(other.chartingOrder, chartingOrder) ||
                other.chartingOrder == chartingOrder) &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chartingOrder, selectedOption,
      const DeepCollectionEquality().hash(order));

  @override
  String toString() {
    return 'ChartingOrderValue(chartingOrder: $chartingOrder, selectedOption: $selectedOption, order: $order)';
  }
}

/// @nodoc
abstract mixin class $ChartingOrderValueCopyWith<$Res> {
  factory $ChartingOrderValueCopyWith(
          ChartingOrderValue value, $Res Function(ChartingOrderValue) _then) =
      _$ChartingOrderValueCopyWithImpl;
  @useResult
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class _$ChartingOrderValueCopyWithImpl<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  _$ChartingOrderValueCopyWithImpl(this._self, this._then);

  final ChartingOrderValue _self;
  final $Res Function(ChartingOrderValue) _then;

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chartingOrder = null,
    Object? selectedOption = null,
    Object? order = null,
  }) {
    return _then(_self.copyWith(
      chartingOrder: null == chartingOrder
          ? _self.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: null == selectedOption
          ? _self.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<List<ScanOrder>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChartingOrderValue implements ChartingOrderValue {
  const _ChartingOrderValue(
      {this.chartingOrder = ChartingOrderType.arch,
      this.selectedOption = 0,
      required final List<List<ScanOrder>> order})
      : _order = order;
  factory _ChartingOrderValue.fromJson(Map<String, dynamic> json) =>
      _$ChartingOrderValueFromJson(json);

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

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChartingOrderValueCopyWith<_ChartingOrderValue> get copyWith =>
      __$ChartingOrderValueCopyWithImpl<_ChartingOrderValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChartingOrderValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChartingOrderValue &&
            (identical(other.chartingOrder, chartingOrder) ||
                other.chartingOrder == chartingOrder) &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption) &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chartingOrder, selectedOption,
      const DeepCollectionEquality().hash(_order));

  @override
  String toString() {
    return 'ChartingOrderValue(chartingOrder: $chartingOrder, selectedOption: $selectedOption, order: $order)';
  }
}

/// @nodoc
abstract mixin class _$ChartingOrderValueCopyWith<$Res>
    implements $ChartingOrderValueCopyWith<$Res> {
  factory _$ChartingOrderValueCopyWith(
          _ChartingOrderValue value, $Res Function(_ChartingOrderValue) _then) =
      __$ChartingOrderValueCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ChartingOrderType chartingOrder,
      int selectedOption,
      List<List<ScanOrder>> order});
}

/// @nodoc
class __$ChartingOrderValueCopyWithImpl<$Res>
    implements _$ChartingOrderValueCopyWith<$Res> {
  __$ChartingOrderValueCopyWithImpl(this._self, this._then);

  final _ChartingOrderValue _self;
  final $Res Function(_ChartingOrderValue) _then;

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chartingOrder = null,
    Object? selectedOption = null,
    Object? order = null,
  }) {
    return _then(_ChartingOrderValue(
      chartingOrder: null == chartingOrder
          ? _self.chartingOrder
          : chartingOrder // ignore: cast_nullable_to_non_nullable
              as ChartingOrderType,
      selectedOption: null == selectedOption
          ? _self.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _self._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<List<ScanOrder>>,
    ));
  }
}

// dart format on
