// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileO {
  String get id;
  String get anotherId;
  @RfControl<String>()
  String get name;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard;
  IncidenceFilterO get incidenceFilter;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  ThresholdSettingO get threshold;
  TimerSettingO get timer;
  @RfControl<bool>()
  bool get audioGuidance;

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileOCopyWith<ProfileO> get copyWith =>
      _$ProfileOCopyWithImpl<ProfileO>(this as ProfileO, _$identity);

  /// Serializes this ProfileO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileO &&
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
    return 'ProfileO(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class $ProfileOCopyWith<$Res> {
  factory $ProfileOCopyWith(ProfileO value, $Res Function(ProfileO) _then) =
      _$ProfileOCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilterO incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSettingO threshold,
      TimerSettingO timer,
      @RfControl<bool>() bool audioGuidance});

  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  $IncidenceFilterOCopyWith<$Res> get incidenceFilter;
  $ThresholdSettingOCopyWith<$Res> get threshold;
  $TimerSettingOCopyWith<$Res> get timer;
}

/// @nodoc
class _$ProfileOCopyWithImpl<$Res> implements $ProfileOCopyWith<$Res> {
  _$ProfileOCopyWithImpl(this._self, this._then);

  final ProfileO _self;
  final $Res Function(ProfileO) _then;

  /// Create a copy of ProfileO
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
              as IncidenceFilterO,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingO,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingO,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOCopyWith<$Res>(_self.incidenceFilter, (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOCopyWith<$Res> get threshold {
    return $ThresholdSettingOCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOCopyWith<$Res> get timer {
    return $TimerSettingOCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileO extends ProfileO {
  _ProfileO(this.id,
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
  factory _ProfileO.fromJson(Map<String, dynamic> json) =>
      _$ProfileOFromJson(json);

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
  final IncidenceFilterO incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  final MeasurementType measurementType;
  @override
  final ThresholdSettingO threshold;
  @override
  final TimerSettingO timer;
  @override
  @RfControl<bool>()
  final bool audioGuidance;

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileOCopyWith<_ProfileO> get copyWith =>
      __$ProfileOCopyWithImpl<_ProfileO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileO &&
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
    return 'ProfileO(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class _$ProfileOCopyWith<$Res>
    implements $ProfileOCopyWith<$Res> {
  factory _$ProfileOCopyWith(_ProfileO value, $Res Function(_ProfileO) _then) =
      __$ProfileOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilterO incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSettingO threshold,
      TimerSettingO timer,
      @RfControl<bool>() bool audioGuidance});

  @override
  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  @override
  $IncidenceFilterOCopyWith<$Res> get incidenceFilter;
  @override
  $ThresholdSettingOCopyWith<$Res> get threshold;
  @override
  $TimerSettingOCopyWith<$Res> get timer;
}

/// @nodoc
class __$ProfileOCopyWithImpl<$Res> implements _$ProfileOCopyWith<$Res> {
  __$ProfileOCopyWithImpl(this._self, this._then);

  final _ProfileO _self;
  final $Res Function(_ProfileO) _then;

  /// Create a copy of ProfileO
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
    return _then(_ProfileO(
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
              as IncidenceFilterO,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingO,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingO,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOCopyWith<$Res>(_self.incidenceFilter, (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOCopyWith<$Res> get threshold {
    return $ThresholdSettingOCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOCopyWith<$Res> get timer {
    return $TimerSettingOCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
mixin _$ThresholdSettingO {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThresholdSettingOCopyWith<ThresholdSettingO> get copyWith =>
      _$ThresholdSettingOCopyWithImpl<ThresholdSettingO>(
          this as ThresholdSettingO, _$identity);

  /// Serializes this ThresholdSettingO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThresholdSettingO &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSettingO(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ThresholdSettingOCopyWith<$Res> {
  factory $ThresholdSettingOCopyWith(
          ThresholdSettingO value, $Res Function(ThresholdSettingO) _then) =
      _$ThresholdSettingOCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$ThresholdSettingOCopyWithImpl<$Res>
    implements $ThresholdSettingOCopyWith<$Res> {
  _$ThresholdSettingOCopyWithImpl(this._self, this._then);

  final ThresholdSettingO _self;
  final $Res Function(ThresholdSettingO) _then;

  /// Create a copy of ThresholdSettingO
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
class _ThresholdSettingO implements ThresholdSettingO {
  const _ThresholdSettingO(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});
  factory _ThresholdSettingO.fromJson(Map<String, dynamic> json) =>
      _$ThresholdSettingOFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThresholdSettingOCopyWith<_ThresholdSettingO> get copyWith =>
      __$ThresholdSettingOCopyWithImpl<_ThresholdSettingO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThresholdSettingOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThresholdSettingO &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSettingO(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ThresholdSettingOCopyWith<$Res>
    implements $ThresholdSettingOCopyWith<$Res> {
  factory _$ThresholdSettingOCopyWith(
          _ThresholdSettingO value, $Res Function(_ThresholdSettingO) _then) =
      __$ThresholdSettingOCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$ThresholdSettingOCopyWithImpl<$Res>
    implements _$ThresholdSettingOCopyWith<$Res> {
  __$ThresholdSettingOCopyWithImpl(this._self, this._then);

  final _ThresholdSettingO _self;
  final $Res Function(_ThresholdSettingO) _then;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_ThresholdSettingO(
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
mixin _$TimerSettingO {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimerSettingOCopyWith<TimerSettingO> get copyWith =>
      _$TimerSettingOCopyWithImpl<TimerSettingO>(
          this as TimerSettingO, _$identity);

  /// Serializes this TimerSettingO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimerSettingO &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSettingO(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $TimerSettingOCopyWith<$Res> {
  factory $TimerSettingOCopyWith(
          TimerSettingO value, $Res Function(TimerSettingO) _then) =
      _$TimerSettingOCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$TimerSettingOCopyWithImpl<$Res>
    implements $TimerSettingOCopyWith<$Res> {
  _$TimerSettingOCopyWithImpl(this._self, this._then);

  final TimerSettingO _self;
  final $Res Function(TimerSettingO) _then;

  /// Create a copy of TimerSettingO
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
class _TimerSettingO implements TimerSettingO {
  const _TimerSettingO(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});
  factory _TimerSettingO.fromJson(Map<String, dynamic> json) =>
      _$TimerSettingOFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimerSettingOCopyWith<_TimerSettingO> get copyWith =>
      __$TimerSettingOCopyWithImpl<_TimerSettingO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimerSettingOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerSettingO &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSettingO(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$TimerSettingOCopyWith<$Res>
    implements $TimerSettingOCopyWith<$Res> {
  factory _$TimerSettingOCopyWith(
          _TimerSettingO value, $Res Function(_TimerSettingO) _then) =
      __$TimerSettingOCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$TimerSettingOCopyWithImpl<$Res>
    implements _$TimerSettingOCopyWith<$Res> {
  __$TimerSettingOCopyWithImpl(this._self, this._then);

  final _TimerSettingO _self;
  final $Res Function(_TimerSettingO) _then;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_TimerSettingO(
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
mixin _$IncidenceFilterO {
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

  /// Create a copy of IncidenceFilterO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IncidenceFilterOCopyWith<IncidenceFilterO> get copyWith =>
      _$IncidenceFilterOCopyWithImpl<IncidenceFilterO>(
          this as IncidenceFilterO, _$identity);

  /// Serializes this IncidenceFilterO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncidenceFilterO &&
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
    return 'IncidenceFilterO(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class $IncidenceFilterOCopyWith<$Res> {
  factory $IncidenceFilterOCopyWith(
          IncidenceFilterO value, $Res Function(IncidenceFilterO) _then) =
      _$IncidenceFilterOCopyWithImpl;
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
class _$IncidenceFilterOCopyWithImpl<$Res>
    implements $IncidenceFilterOCopyWith<$Res> {
  _$IncidenceFilterOCopyWithImpl(this._self, this._then);

  final IncidenceFilterO _self;
  final $Res Function(IncidenceFilterO) _then;

  /// Create a copy of IncidenceFilterO
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
class _IncidenceFilterO implements IncidenceFilterO {
  const _IncidenceFilterO(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});
  factory _IncidenceFilterO.fromJson(Map<String, dynamic> json) =>
      _$IncidenceFilterOFromJson(json);

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

  /// Create a copy of IncidenceFilterO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IncidenceFilterOCopyWith<_IncidenceFilterO> get copyWith =>
      __$IncidenceFilterOCopyWithImpl<_IncidenceFilterO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IncidenceFilterOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncidenceFilterO &&
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
    return 'IncidenceFilterO(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class _$IncidenceFilterOCopyWith<$Res>
    implements $IncidenceFilterOCopyWith<$Res> {
  factory _$IncidenceFilterOCopyWith(
          _IncidenceFilterO value, $Res Function(_IncidenceFilterO) _then) =
      __$IncidenceFilterOCopyWithImpl;
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
class __$IncidenceFilterOCopyWithImpl<$Res>
    implements _$IncidenceFilterOCopyWith<$Res> {
  __$IncidenceFilterOCopyWithImpl(this._self, this._then);

  final _IncidenceFilterO _self;
  final $Res Function(_IncidenceFilterO) _then;

  /// Create a copy of IncidenceFilterO
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
    return _then(_IncidenceFilterO(
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

/// @nodoc
mixin _$ProfileOOutput {
  String get id;
  String get anotherId;
  @RfControl<String>()
  String get name;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard;
  IncidenceFilterOOutput get incidenceFilter;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  ThresholdSettingOOutput get threshold;
  TimerSettingOOutput get timer;
  @RfControl<bool>()
  bool get audioGuidance;

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileOOutputCopyWith<ProfileOOutput> get copyWith =>
      _$ProfileOOutputCopyWithImpl<ProfileOOutput>(
          this as ProfileOOutput, _$identity);

  /// Serializes this ProfileOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileOOutput &&
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
    return 'ProfileOOutput(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class $ProfileOOutputCopyWith<$Res> {
  factory $ProfileOOutputCopyWith(
          ProfileOOutput value, $Res Function(ProfileOOutput) _then) =
      _$ProfileOOutputCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilterOOutput incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSettingOOutput threshold,
      TimerSettingOOutput timer,
      @RfControl<bool>() bool audioGuidance});

  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  $IncidenceFilterOOutputCopyWith<$Res> get incidenceFilter;
  $ThresholdSettingOOutputCopyWith<$Res> get threshold;
  $TimerSettingOOutputCopyWith<$Res> get timer;
}

/// @nodoc
class _$ProfileOOutputCopyWithImpl<$Res>
    implements $ProfileOOutputCopyWith<$Res> {
  _$ProfileOOutputCopyWithImpl(this._self, this._then);

  final ProfileOOutput _self;
  final $Res Function(ProfileOOutput) _then;

  /// Create a copy of ProfileOOutput
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
              as IncidenceFilterOOutput,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingOOutput,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingOOutput,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOOutputCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOOutputCopyWith<$Res>(_self.incidenceFilter,
        (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOOutputCopyWith<$Res> get threshold {
    return $ThresholdSettingOOutputCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOOutputCopyWith<$Res> get timer {
    return $TimerSettingOOutputCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ProfileOOutput extends ProfileOOutput {
  _ProfileOOutput(this.id,
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
  factory _ProfileOOutput.fromJson(Map<String, dynamic> json) =>
      _$ProfileOOutputFromJson(json);

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
  final IncidenceFilterOOutput incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  final MeasurementType measurementType;
  @override
  final ThresholdSettingOOutput threshold;
  @override
  final TimerSettingOOutput timer;
  @override
  @RfControl<bool>()
  final bool audioGuidance;

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileOOutputCopyWith<_ProfileOOutput> get copyWith =>
      __$ProfileOOutputCopyWithImpl<_ProfileOOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileOOutput &&
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
    return 'ProfileOOutput(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }
}

/// @nodoc
abstract mixin class _$ProfileOOutputCopyWith<$Res>
    implements $ProfileOOutputCopyWith<$Res> {
  factory _$ProfileOOutputCopyWith(
          _ProfileOOutput value, $Res Function(_ProfileOOutput) _then) =
      __$ProfileOOutputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String anotherId,
      @RfControl<String>() String name,
      @RfControl<ChartingOrderValue>() ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>() NumberingStandard numberingStandard,
      IncidenceFilterOOutput incidenceFilter,
      @RfControl<MeasurementType>() MeasurementType measurementType,
      ThresholdSettingOOutput threshold,
      TimerSettingOOutput timer,
      @RfControl<bool>() bool audioGuidance});

  @override
  $ChartingOrderValueCopyWith<$Res> get chartingOrder;
  @override
  $IncidenceFilterOOutputCopyWith<$Res> get incidenceFilter;
  @override
  $ThresholdSettingOOutputCopyWith<$Res> get threshold;
  @override
  $TimerSettingOOutputCopyWith<$Res> get timer;
}

/// @nodoc
class __$ProfileOOutputCopyWithImpl<$Res>
    implements _$ProfileOOutputCopyWith<$Res> {
  __$ProfileOOutputCopyWithImpl(this._self, this._then);

  final _ProfileOOutput _self;
  final $Res Function(_ProfileOOutput) _then;

  /// Create a copy of ProfileOOutput
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
    return _then(_ProfileOOutput(
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
              as IncidenceFilterOOutput,
      measurementType: null == measurementType
          ? _self.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _self.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingOOutput,
      timer: null == timer
          ? _self.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingOOutput,
      audioGuidance: null == audioGuidance
          ? _self.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_self.chartingOrder, (value) {
      return _then(_self.copyWith(chartingOrder: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOOutputCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOOutputCopyWith<$Res>(_self.incidenceFilter,
        (value) {
      return _then(_self.copyWith(incidenceFilter: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOOutputCopyWith<$Res> get threshold {
    return $ThresholdSettingOOutputCopyWith<$Res>(_self.threshold, (value) {
      return _then(_self.copyWith(threshold: value));
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOOutputCopyWith<$Res> get timer {
    return $TimerSettingOOutputCopyWith<$Res>(_self.timer, (value) {
      return _then(_self.copyWith(timer: value));
    });
  }
}

/// @nodoc
mixin _$ThresholdSettingOOutput {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThresholdSettingOOutputCopyWith<ThresholdSettingOOutput> get copyWith =>
      _$ThresholdSettingOOutputCopyWithImpl<ThresholdSettingOOutput>(
          this as ThresholdSettingOOutput, _$identity);

  /// Serializes this ThresholdSettingOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThresholdSettingOOutput &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ThresholdSettingOOutputCopyWith<$Res> {
  factory $ThresholdSettingOOutputCopyWith(ThresholdSettingOOutput value,
          $Res Function(ThresholdSettingOOutput) _then) =
      _$ThresholdSettingOOutputCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$ThresholdSettingOOutputCopyWithImpl<$Res>
    implements $ThresholdSettingOOutputCopyWith<$Res> {
  _$ThresholdSettingOOutputCopyWithImpl(this._self, this._then);

  final ThresholdSettingOOutput _self;
  final $Res Function(ThresholdSettingOOutput) _then;

  /// Create a copy of ThresholdSettingOOutput
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
class _ThresholdSettingOOutput implements ThresholdSettingOOutput {
  const _ThresholdSettingOOutput(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});
  factory _ThresholdSettingOOutput.fromJson(Map<String, dynamic> json) =>
      _$ThresholdSettingOOutputFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ThresholdSettingOOutputCopyWith<_ThresholdSettingOOutput> get copyWith =>
      __$ThresholdSettingOOutputCopyWithImpl<_ThresholdSettingOOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ThresholdSettingOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ThresholdSettingOOutput &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'ThresholdSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ThresholdSettingOOutputCopyWith<$Res>
    implements $ThresholdSettingOOutputCopyWith<$Res> {
  factory _$ThresholdSettingOOutputCopyWith(_ThresholdSettingOOutput value,
          $Res Function(_ThresholdSettingOOutput) _then) =
      __$ThresholdSettingOOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$ThresholdSettingOOutputCopyWithImpl<$Res>
    implements _$ThresholdSettingOOutputCopyWith<$Res> {
  __$ThresholdSettingOOutputCopyWithImpl(this._self, this._then);

  final _ThresholdSettingOOutput _self;
  final $Res Function(_ThresholdSettingOOutput) _then;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_ThresholdSettingOOutput(
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
mixin _$TimerSettingOOutput {
  @RfControl<bool>()
  bool get isEnabled;
  @RfControl<int>()
  int get value;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimerSettingOOutputCopyWith<TimerSettingOOutput> get copyWith =>
      _$TimerSettingOOutputCopyWithImpl<TimerSettingOOutput>(
          this as TimerSettingOOutput, _$identity);

  /// Serializes this TimerSettingOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimerSettingOOutput &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class $TimerSettingOOutputCopyWith<$Res> {
  factory $TimerSettingOOutputCopyWith(
          TimerSettingOOutput value, $Res Function(TimerSettingOOutput) _then) =
      _$TimerSettingOOutputCopyWithImpl;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$TimerSettingOOutputCopyWithImpl<$Res>
    implements $TimerSettingOOutputCopyWith<$Res> {
  _$TimerSettingOOutputCopyWithImpl(this._self, this._then);

  final TimerSettingOOutput _self;
  final $Res Function(TimerSettingOOutput) _then;

  /// Create a copy of TimerSettingOOutput
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
class _TimerSettingOOutput implements TimerSettingOOutput {
  const _TimerSettingOOutput(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});
  factory _TimerSettingOOutput.fromJson(Map<String, dynamic> json) =>
      _$TimerSettingOOutputFromJson(json);

  @override
  @JsonKey()
  @RfControl<bool>()
  final bool isEnabled;
  @override
  @JsonKey()
  @RfControl<int>()
  final int value;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimerSettingOOutputCopyWith<_TimerSettingOOutput> get copyWith =>
      __$TimerSettingOOutputCopyWithImpl<_TimerSettingOOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimerSettingOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimerSettingOOutput &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  @override
  String toString() {
    return 'TimerSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$TimerSettingOOutputCopyWith<$Res>
    implements $TimerSettingOOutputCopyWith<$Res> {
  factory _$TimerSettingOOutputCopyWith(_TimerSettingOOutput value,
          $Res Function(_TimerSettingOOutput) _then) =
      __$TimerSettingOOutputCopyWithImpl;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$TimerSettingOOutputCopyWithImpl<$Res>
    implements _$TimerSettingOOutputCopyWith<$Res> {
  __$TimerSettingOOutputCopyWithImpl(this._self, this._then);

  final _TimerSettingOOutput _self;
  final $Res Function(_TimerSettingOOutput) _then;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_TimerSettingOOutput(
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
mixin _$IncidenceFilterOOutput {
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

  /// Create a copy of IncidenceFilterOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IncidenceFilterOOutputCopyWith<IncidenceFilterOOutput> get copyWith =>
      _$IncidenceFilterOOutputCopyWithImpl<IncidenceFilterOOutput>(
          this as IncidenceFilterOOutput, _$identity);

  /// Serializes this IncidenceFilterOOutput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncidenceFilterOOutput &&
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
    return 'IncidenceFilterOOutput(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class $IncidenceFilterOOutputCopyWith<$Res> {
  factory $IncidenceFilterOOutputCopyWith(IncidenceFilterOOutput value,
          $Res Function(IncidenceFilterOOutput) _then) =
      _$IncidenceFilterOOutputCopyWithImpl;
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
class _$IncidenceFilterOOutputCopyWithImpl<$Res>
    implements $IncidenceFilterOOutputCopyWith<$Res> {
  _$IncidenceFilterOOutputCopyWithImpl(this._self, this._then);

  final IncidenceFilterOOutput _self;
  final $Res Function(IncidenceFilterOOutput) _then;

  /// Create a copy of IncidenceFilterOOutput
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
class _IncidenceFilterOOutput implements IncidenceFilterOOutput {
  const _IncidenceFilterOOutput(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});
  factory _IncidenceFilterOOutput.fromJson(Map<String, dynamic> json) =>
      _$IncidenceFilterOOutputFromJson(json);

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

  /// Create a copy of IncidenceFilterOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IncidenceFilterOOutputCopyWith<_IncidenceFilterOOutput> get copyWith =>
      __$IncidenceFilterOOutputCopyWithImpl<_IncidenceFilterOOutput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IncidenceFilterOOutputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IncidenceFilterOOutput &&
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
    return 'IncidenceFilterOOutput(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }
}

/// @nodoc
abstract mixin class _$IncidenceFilterOOutputCopyWith<$Res>
    implements $IncidenceFilterOOutputCopyWith<$Res> {
  factory _$IncidenceFilterOOutputCopyWith(_IncidenceFilterOOutput value,
          $Res Function(_IncidenceFilterOOutput) _then) =
      __$IncidenceFilterOOutputCopyWithImpl;
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
class __$IncidenceFilterOOutputCopyWithImpl<$Res>
    implements _$IncidenceFilterOOutputCopyWith<$Res> {
  __$IncidenceFilterOOutputCopyWithImpl(this._self, this._then);

  final _IncidenceFilterOOutput _self;
  final $Res Function(_IncidenceFilterOOutput) _then;

  /// Create a copy of IncidenceFilterOOutput
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
    return _then(_IncidenceFilterOOutput(
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

// dart format on
