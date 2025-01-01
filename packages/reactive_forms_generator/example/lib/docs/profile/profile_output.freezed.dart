// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileO _$ProfileOFromJson(Map<String, dynamic> json) {
  return _ProfileO.fromJson(json);
}

/// @nodoc
mixin _$ProfileO {
  String get id => throw _privateConstructorUsedError;
  String get anotherId => throw _privateConstructorUsedError;
  @RfControl<String>()
  String get name => throw _privateConstructorUsedError;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder => throw _privateConstructorUsedError;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard => throw _privateConstructorUsedError;
  IncidenceFilterO get incidenceFilter => throw _privateConstructorUsedError;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  ThresholdSettingO get threshold => throw _privateConstructorUsedError;
  TimerSettingO get timer => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get audioGuidance => throw _privateConstructorUsedError;

  /// Serializes this ProfileO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileOCopyWith<ProfileO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileOCopyWith<$Res> {
  factory $ProfileOCopyWith(ProfileO value, $Res Function(ProfileO) then) =
      _$ProfileOCopyWithImpl<$Res, ProfileO>;
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
class _$ProfileOCopyWithImpl<$Res, $Val extends ProfileO>
    implements $ProfileOCopyWith<$Res> {
  _$ProfileOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as IncidenceFilterO,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingO,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingO,
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_value.chartingOrder, (value) {
      return _then(_value.copyWith(chartingOrder: value) as $Val);
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOCopyWith<$Res>(_value.incidenceFilter, (value) {
      return _then(_value.copyWith(incidenceFilter: value) as $Val);
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOCopyWith<$Res> get threshold {
    return $ThresholdSettingOCopyWith<$Res>(_value.threshold, (value) {
      return _then(_value.copyWith(threshold: value) as $Val);
    });
  }

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOCopyWith<$Res> get timer {
    return $TimerSettingOCopyWith<$Res>(_value.timer, (value) {
      return _then(_value.copyWith(timer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileOImplCopyWith<$Res>
    implements $ProfileOCopyWith<$Res> {
  factory _$$ProfileOImplCopyWith(
          _$ProfileOImpl value, $Res Function(_$ProfileOImpl) then) =
      __$$ProfileOImplCopyWithImpl<$Res>;
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
class __$$ProfileOImplCopyWithImpl<$Res>
    extends _$ProfileOCopyWithImpl<$Res, _$ProfileOImpl>
    implements _$$ProfileOImplCopyWith<$Res> {
  __$$ProfileOImplCopyWithImpl(
      _$ProfileOImpl _value, $Res Function(_$ProfileOImpl) _then)
      : super(_value, _then);

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
    return _then(_$ProfileOImpl(
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
              as IncidenceFilterO,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingO,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingO,
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileOImpl extends _ProfileO {
  _$ProfileOImpl(this.id,
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

  factory _$ProfileOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileOImplFromJson(json);

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

  @override
  String toString() {
    return 'ProfileO(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOImpl &&
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

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOImplCopyWith<_$ProfileOImpl> get copyWith =>
      __$$ProfileOImplCopyWithImpl<_$ProfileOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileOImplToJson(
      this,
    );
  }
}

abstract class _ProfileO extends ProfileO {
  factory _ProfileO(final String id,
      {required final String anotherId,
      @RfControl<String>() required final String name,
      @RfControl<ChartingOrderValue>()
      required final ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>()
      required final NumberingStandard numberingStandard,
      required final IncidenceFilterO incidenceFilter,
      @RfControl<MeasurementType>()
      required final MeasurementType measurementType,
      required final ThresholdSettingO threshold,
      required final TimerSettingO timer,
      @RfControl<bool>() required final bool audioGuidance}) = _$ProfileOImpl;
  _ProfileO._() : super._();

  factory _ProfileO.fromJson(Map<String, dynamic> json) =
      _$ProfileOImpl.fromJson;

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
  IncidenceFilterO get incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  @override
  ThresholdSettingO get threshold;
  @override
  TimerSettingO get timer;
  @override
  @RfControl<bool>()
  bool get audioGuidance;

  /// Create a copy of ProfileO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileOImplCopyWith<_$ProfileOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThresholdSettingO _$ThresholdSettingOFromJson(Map<String, dynamic> json) {
  return _ThresholdSettingO.fromJson(json);
}

/// @nodoc
mixin _$ThresholdSettingO {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
  int get value => throw _privateConstructorUsedError;

  /// Serializes this ThresholdSettingO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThresholdSettingOCopyWith<ThresholdSettingO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThresholdSettingOCopyWith<$Res> {
  factory $ThresholdSettingOCopyWith(
          ThresholdSettingO value, $Res Function(ThresholdSettingO) then) =
      _$ThresholdSettingOCopyWithImpl<$Res, ThresholdSettingO>;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$ThresholdSettingOCopyWithImpl<$Res, $Val extends ThresholdSettingO>
    implements $ThresholdSettingOCopyWith<$Res> {
  _$ThresholdSettingOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ThresholdSettingOImplCopyWith<$Res>
    implements $ThresholdSettingOCopyWith<$Res> {
  factory _$$ThresholdSettingOImplCopyWith(_$ThresholdSettingOImpl value,
          $Res Function(_$ThresholdSettingOImpl) then) =
      __$$ThresholdSettingOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$ThresholdSettingOImplCopyWithImpl<$Res>
    extends _$ThresholdSettingOCopyWithImpl<$Res, _$ThresholdSettingOImpl>
    implements _$$ThresholdSettingOImplCopyWith<$Res> {
  __$$ThresholdSettingOImplCopyWithImpl(_$ThresholdSettingOImpl _value,
      $Res Function(_$ThresholdSettingOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$ThresholdSettingOImpl(
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
class _$ThresholdSettingOImpl implements _ThresholdSettingO {
  const _$ThresholdSettingOImpl(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});

  factory _$ThresholdSettingOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThresholdSettingOImplFromJson(json);

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
    return 'ThresholdSettingO(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThresholdSettingOImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThresholdSettingOImplCopyWith<_$ThresholdSettingOImpl> get copyWith =>
      __$$ThresholdSettingOImplCopyWithImpl<_$ThresholdSettingOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThresholdSettingOImplToJson(
      this,
    );
  }
}

abstract class _ThresholdSettingO implements ThresholdSettingO {
  const factory _ThresholdSettingO(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$ThresholdSettingOImpl;

  factory _ThresholdSettingO.fromJson(Map<String, dynamic> json) =
      _$ThresholdSettingOImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;

  /// Create a copy of ThresholdSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThresholdSettingOImplCopyWith<_$ThresholdSettingOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimerSettingO _$TimerSettingOFromJson(Map<String, dynamic> json) {
  return _TimerSettingO.fromJson(json);
}

/// @nodoc
mixin _$TimerSettingO {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
  int get value => throw _privateConstructorUsedError;

  /// Serializes this TimerSettingO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerSettingOCopyWith<TimerSettingO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSettingOCopyWith<$Res> {
  factory $TimerSettingOCopyWith(
          TimerSettingO value, $Res Function(TimerSettingO) then) =
      _$TimerSettingOCopyWithImpl<$Res, TimerSettingO>;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$TimerSettingOCopyWithImpl<$Res, $Val extends TimerSettingO>
    implements $TimerSettingOCopyWith<$Res> {
  _$TimerSettingOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$TimerSettingOImplCopyWith<$Res>
    implements $TimerSettingOCopyWith<$Res> {
  factory _$$TimerSettingOImplCopyWith(
          _$TimerSettingOImpl value, $Res Function(_$TimerSettingOImpl) then) =
      __$$TimerSettingOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$TimerSettingOImplCopyWithImpl<$Res>
    extends _$TimerSettingOCopyWithImpl<$Res, _$TimerSettingOImpl>
    implements _$$TimerSettingOImplCopyWith<$Res> {
  __$$TimerSettingOImplCopyWithImpl(
      _$TimerSettingOImpl _value, $Res Function(_$TimerSettingOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$TimerSettingOImpl(
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
class _$TimerSettingOImpl implements _TimerSettingO {
  const _$TimerSettingOImpl(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});

  factory _$TimerSettingOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerSettingOImplFromJson(json);

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
    return 'TimerSettingO(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerSettingOImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerSettingOImplCopyWith<_$TimerSettingOImpl> get copyWith =>
      __$$TimerSettingOImplCopyWithImpl<_$TimerSettingOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerSettingOImplToJson(
      this,
    );
  }
}

abstract class _TimerSettingO implements TimerSettingO {
  const factory _TimerSettingO(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$TimerSettingOImpl;

  factory _TimerSettingO.fromJson(Map<String, dynamic> json) =
      _$TimerSettingOImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;

  /// Create a copy of TimerSettingO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerSettingOImplCopyWith<_$TimerSettingOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncidenceFilterO _$IncidenceFilterOFromJson(Map<String, dynamic> json) {
  return _IncidenceFilterO.fromJson(json);
}

/// @nodoc
mixin _$IncidenceFilterO {
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

  /// Serializes this IncidenceFilterO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IncidenceFilterO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncidenceFilterOCopyWith<IncidenceFilterO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidenceFilterOCopyWith<$Res> {
  factory $IncidenceFilterOCopyWith(
          IncidenceFilterO value, $Res Function(IncidenceFilterO) then) =
      _$IncidenceFilterOCopyWithImpl<$Res, IncidenceFilterO>;
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
class _$IncidenceFilterOCopyWithImpl<$Res, $Val extends IncidenceFilterO>
    implements $IncidenceFilterOCopyWith<$Res> {
  _$IncidenceFilterOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$IncidenceFilterOImplCopyWith<$Res>
    implements $IncidenceFilterOCopyWith<$Res> {
  factory _$$IncidenceFilterOImplCopyWith(_$IncidenceFilterOImpl value,
          $Res Function(_$IncidenceFilterOImpl) then) =
      __$$IncidenceFilterOImplCopyWithImpl<$Res>;
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
class __$$IncidenceFilterOImplCopyWithImpl<$Res>
    extends _$IncidenceFilterOCopyWithImpl<$Res, _$IncidenceFilterOImpl>
    implements _$$IncidenceFilterOImplCopyWith<$Res> {
  __$$IncidenceFilterOImplCopyWithImpl(_$IncidenceFilterOImpl _value,
      $Res Function(_$IncidenceFilterOImpl) _then)
      : super(_value, _then);

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
    return _then(_$IncidenceFilterOImpl(
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
class _$IncidenceFilterOImpl implements _IncidenceFilterO {
  const _$IncidenceFilterOImpl(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});

  factory _$IncidenceFilterOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidenceFilterOImplFromJson(json);

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
    return 'IncidenceFilterO(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidenceFilterOImpl &&
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

  /// Create a copy of IncidenceFilterO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidenceFilterOImplCopyWith<_$IncidenceFilterOImpl> get copyWith =>
      __$$IncidenceFilterOImplCopyWithImpl<_$IncidenceFilterOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncidenceFilterOImplToJson(
      this,
    );
  }
}

abstract class _IncidenceFilterO implements IncidenceFilterO {
  const factory _IncidenceFilterO(
      {@RfControl<bool>() final bool isMobilityEnabled,
      @RfControl<bool>() final bool isFurcationEnabled,
      @RfControl<bool>() final bool isBleedingEnabled,
      @RfControl<bool>() final bool isSuppurationEnabled,
      @RfControl<bool>() final bool isCalculusEnabled,
      @RfControl<bool>() final bool isPlaqueEnabled}) = _$IncidenceFilterOImpl;

  factory _IncidenceFilterO.fromJson(Map<String, dynamic> json) =
      _$IncidenceFilterOImpl.fromJson;

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

  /// Create a copy of IncidenceFilterO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidenceFilterOImplCopyWith<_$IncidenceFilterOImpl> get copyWith =>
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

  /// Serializes this ScanOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jaw, direction, toothSide);

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quadrant, direction, toothSide);

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ScanOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this ChartingOrderValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chartingOrder, selectedOption,
      const DeepCollectionEquality().hash(_order));

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ChartingOrderValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartingOrderValueImplCopyWith<_$ChartingOrderValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileOOutput _$ProfileOOutputFromJson(Map<String, dynamic> json) {
  return _ProfileOOutput.fromJson(json);
}

/// @nodoc
mixin _$ProfileOOutput {
  String get id => throw _privateConstructorUsedError;
  String get anotherId => throw _privateConstructorUsedError;
  @RfControl<String>()
  String get name => throw _privateConstructorUsedError;
  @RfControl<ChartingOrderValue>()
  ChartingOrderValue get chartingOrder => throw _privateConstructorUsedError;
  @RfControl<NumberingStandard>()
  NumberingStandard get numberingStandard => throw _privateConstructorUsedError;
  IncidenceFilterOOutput get incidenceFilter =>
      throw _privateConstructorUsedError;
  @RfControl<MeasurementType>()
  MeasurementType get measurementType => throw _privateConstructorUsedError;
  ThresholdSettingOOutput get threshold => throw _privateConstructorUsedError;
  TimerSettingOOutput get timer => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get audioGuidance => throw _privateConstructorUsedError;

  /// Serializes this ProfileOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileOOutputCopyWith<ProfileOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileOOutputCopyWith<$Res> {
  factory $ProfileOOutputCopyWith(
          ProfileOOutput value, $Res Function(ProfileOOutput) then) =
      _$ProfileOOutputCopyWithImpl<$Res, ProfileOOutput>;
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
class _$ProfileOOutputCopyWithImpl<$Res, $Val extends ProfileOOutput>
    implements $ProfileOOutputCopyWith<$Res> {
  _$ProfileOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as IncidenceFilterOOutput,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingOOutput,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingOOutput,
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartingOrderValueCopyWith<$Res> get chartingOrder {
    return $ChartingOrderValueCopyWith<$Res>(_value.chartingOrder, (value) {
      return _then(_value.copyWith(chartingOrder: value) as $Val);
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IncidenceFilterOOutputCopyWith<$Res> get incidenceFilter {
    return $IncidenceFilterOOutputCopyWith<$Res>(_value.incidenceFilter,
        (value) {
      return _then(_value.copyWith(incidenceFilter: value) as $Val);
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThresholdSettingOOutputCopyWith<$Res> get threshold {
    return $ThresholdSettingOOutputCopyWith<$Res>(_value.threshold, (value) {
      return _then(_value.copyWith(threshold: value) as $Val);
    });
  }

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimerSettingOOutputCopyWith<$Res> get timer {
    return $TimerSettingOOutputCopyWith<$Res>(_value.timer, (value) {
      return _then(_value.copyWith(timer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileOOutputImplCopyWith<$Res>
    implements $ProfileOOutputCopyWith<$Res> {
  factory _$$ProfileOOutputImplCopyWith(_$ProfileOOutputImpl value,
          $Res Function(_$ProfileOOutputImpl) then) =
      __$$ProfileOOutputImplCopyWithImpl<$Res>;
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
class __$$ProfileOOutputImplCopyWithImpl<$Res>
    extends _$ProfileOOutputCopyWithImpl<$Res, _$ProfileOOutputImpl>
    implements _$$ProfileOOutputImplCopyWith<$Res> {
  __$$ProfileOOutputImplCopyWithImpl(
      _$ProfileOOutputImpl _value, $Res Function(_$ProfileOOutputImpl) _then)
      : super(_value, _then);

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
    return _then(_$ProfileOOutputImpl(
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
              as IncidenceFilterOOutput,
      measurementType: null == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as MeasurementType,
      threshold: null == threshold
          ? _value.threshold
          : threshold // ignore: cast_nullable_to_non_nullable
              as ThresholdSettingOOutput,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as TimerSettingOOutput,
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileOOutputImpl extends _ProfileOOutput {
  _$ProfileOOutputImpl(this.id,
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

  factory _$ProfileOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileOOutputImplFromJson(json);

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

  @override
  String toString() {
    return 'ProfileOOutput(id: $id, anotherId: $anotherId, name: $name, chartingOrder: $chartingOrder, numberingStandard: $numberingStandard, incidenceFilter: $incidenceFilter, measurementType: $measurementType, threshold: $threshold, timer: $timer, audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileOOutputImpl &&
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

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileOOutputImplCopyWith<_$ProfileOOutputImpl> get copyWith =>
      __$$ProfileOOutputImplCopyWithImpl<_$ProfileOOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileOOutputImplToJson(
      this,
    );
  }
}

abstract class _ProfileOOutput extends ProfileOOutput {
  factory _ProfileOOutput(final String id,
          {required final String anotherId,
          @RfControl<String>() required final String name,
          @RfControl<ChartingOrderValue>()
          required final ChartingOrderValue chartingOrder,
          @RfControl<NumberingStandard>()
          required final NumberingStandard numberingStandard,
          required final IncidenceFilterOOutput incidenceFilter,
          @RfControl<MeasurementType>()
          required final MeasurementType measurementType,
          required final ThresholdSettingOOutput threshold,
          required final TimerSettingOOutput timer,
          @RfControl<bool>() required final bool audioGuidance}) =
      _$ProfileOOutputImpl;
  _ProfileOOutput._() : super._();

  factory _ProfileOOutput.fromJson(Map<String, dynamic> json) =
      _$ProfileOOutputImpl.fromJson;

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
  IncidenceFilterOOutput get incidenceFilter;
  @override
  @RfControl<MeasurementType>()
  MeasurementType get measurementType;
  @override
  ThresholdSettingOOutput get threshold;
  @override
  TimerSettingOOutput get timer;
  @override
  @RfControl<bool>()
  bool get audioGuidance;

  /// Create a copy of ProfileOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileOOutputImplCopyWith<_$ProfileOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThresholdSettingOOutput _$ThresholdSettingOOutputFromJson(
    Map<String, dynamic> json) {
  return _ThresholdSettingOOutput.fromJson(json);
}

/// @nodoc
mixin _$ThresholdSettingOOutput {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
  int get value => throw _privateConstructorUsedError;

  /// Serializes this ThresholdSettingOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThresholdSettingOOutputCopyWith<ThresholdSettingOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThresholdSettingOOutputCopyWith<$Res> {
  factory $ThresholdSettingOOutputCopyWith(ThresholdSettingOOutput value,
          $Res Function(ThresholdSettingOOutput) then) =
      _$ThresholdSettingOOutputCopyWithImpl<$Res, ThresholdSettingOOutput>;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$ThresholdSettingOOutputCopyWithImpl<$Res,
        $Val extends ThresholdSettingOOutput>
    implements $ThresholdSettingOOutputCopyWith<$Res> {
  _$ThresholdSettingOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ThresholdSettingOOutputImplCopyWith<$Res>
    implements $ThresholdSettingOOutputCopyWith<$Res> {
  factory _$$ThresholdSettingOOutputImplCopyWith(
          _$ThresholdSettingOOutputImpl value,
          $Res Function(_$ThresholdSettingOOutputImpl) then) =
      __$$ThresholdSettingOOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$ThresholdSettingOOutputImplCopyWithImpl<$Res>
    extends _$ThresholdSettingOOutputCopyWithImpl<$Res,
        _$ThresholdSettingOOutputImpl>
    implements _$$ThresholdSettingOOutputImplCopyWith<$Res> {
  __$$ThresholdSettingOOutputImplCopyWithImpl(
      _$ThresholdSettingOOutputImpl _value,
      $Res Function(_$ThresholdSettingOOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$ThresholdSettingOOutputImpl(
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
class _$ThresholdSettingOOutputImpl implements _ThresholdSettingOOutput {
  const _$ThresholdSettingOOutputImpl(
      {@RfControl<bool>() this.isEnabled = true,
      @RfControl<int>() this.value = 2});

  factory _$ThresholdSettingOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThresholdSettingOOutputImplFromJson(json);

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
    return 'ThresholdSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThresholdSettingOOutputImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThresholdSettingOOutputImplCopyWith<_$ThresholdSettingOOutputImpl>
      get copyWith => __$$ThresholdSettingOOutputImplCopyWithImpl<
          _$ThresholdSettingOOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThresholdSettingOOutputImplToJson(
      this,
    );
  }
}

abstract class _ThresholdSettingOOutput implements ThresholdSettingOOutput {
  const factory _ThresholdSettingOOutput(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$ThresholdSettingOOutputImpl;

  factory _ThresholdSettingOOutput.fromJson(Map<String, dynamic> json) =
      _$ThresholdSettingOOutputImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;

  /// Create a copy of ThresholdSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThresholdSettingOOutputImplCopyWith<_$ThresholdSettingOOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TimerSettingOOutput _$TimerSettingOOutputFromJson(Map<String, dynamic> json) {
  return _TimerSettingOOutput.fromJson(json);
}

/// @nodoc
mixin _$TimerSettingOOutput {
  @RfControl<bool>()
  bool get isEnabled => throw _privateConstructorUsedError;
  @RfControl<int>()
  int get value => throw _privateConstructorUsedError;

  /// Serializes this TimerSettingOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerSettingOOutputCopyWith<TimerSettingOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSettingOOutputCopyWith<$Res> {
  factory $TimerSettingOOutputCopyWith(
          TimerSettingOOutput value, $Res Function(TimerSettingOOutput) then) =
      _$TimerSettingOOutputCopyWithImpl<$Res, TimerSettingOOutput>;
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class _$TimerSettingOOutputCopyWithImpl<$Res, $Val extends TimerSettingOOutput>
    implements $TimerSettingOOutputCopyWith<$Res> {
  _$TimerSettingOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$TimerSettingOOutputImplCopyWith<$Res>
    implements $TimerSettingOOutputCopyWith<$Res> {
  factory _$$TimerSettingOOutputImplCopyWith(_$TimerSettingOOutputImpl value,
          $Res Function(_$TimerSettingOOutputImpl) then) =
      __$$TimerSettingOOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@RfControl<bool>() bool isEnabled, @RfControl<int>() int value});
}

/// @nodoc
class __$$TimerSettingOOutputImplCopyWithImpl<$Res>
    extends _$TimerSettingOOutputCopyWithImpl<$Res, _$TimerSettingOOutputImpl>
    implements _$$TimerSettingOOutputImplCopyWith<$Res> {
  __$$TimerSettingOOutputImplCopyWithImpl(_$TimerSettingOOutputImpl _value,
      $Res Function(_$TimerSettingOOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = null,
    Object? value = null,
  }) {
    return _then(_$TimerSettingOOutputImpl(
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
class _$TimerSettingOOutputImpl implements _TimerSettingOOutput {
  const _$TimerSettingOOutputImpl(
      {@RfControl<bool>() this.isEnabled = false,
      @RfControl<int>() this.value = 5});

  factory _$TimerSettingOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerSettingOOutputImplFromJson(json);

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
    return 'TimerSettingOOutput(isEnabled: $isEnabled, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerSettingOOutputImpl &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, value);

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerSettingOOutputImplCopyWith<_$TimerSettingOOutputImpl> get copyWith =>
      __$$TimerSettingOOutputImplCopyWithImpl<_$TimerSettingOOutputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerSettingOOutputImplToJson(
      this,
    );
  }
}

abstract class _TimerSettingOOutput implements TimerSettingOOutput {
  const factory _TimerSettingOOutput(
      {@RfControl<bool>() final bool isEnabled,
      @RfControl<int>() final int value}) = _$TimerSettingOOutputImpl;

  factory _TimerSettingOOutput.fromJson(Map<String, dynamic> json) =
      _$TimerSettingOOutputImpl.fromJson;

  @override
  @RfControl<bool>()
  bool get isEnabled;
  @override
  @RfControl<int>()
  int get value;

  /// Create a copy of TimerSettingOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerSettingOOutputImplCopyWith<_$TimerSettingOOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncidenceFilterOOutput _$IncidenceFilterOOutputFromJson(
    Map<String, dynamic> json) {
  return _IncidenceFilterOOutput.fromJson(json);
}

/// @nodoc
mixin _$IncidenceFilterOOutput {
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

  /// Serializes this IncidenceFilterOOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IncidenceFilterOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IncidenceFilterOOutputCopyWith<IncidenceFilterOOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncidenceFilterOOutputCopyWith<$Res> {
  factory $IncidenceFilterOOutputCopyWith(IncidenceFilterOOutput value,
          $Res Function(IncidenceFilterOOutput) then) =
      _$IncidenceFilterOOutputCopyWithImpl<$Res, IncidenceFilterOOutput>;
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
class _$IncidenceFilterOOutputCopyWithImpl<$Res,
        $Val extends IncidenceFilterOOutput>
    implements $IncidenceFilterOOutputCopyWith<$Res> {
  _$IncidenceFilterOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$IncidenceFilterOOutputImplCopyWith<$Res>
    implements $IncidenceFilterOOutputCopyWith<$Res> {
  factory _$$IncidenceFilterOOutputImplCopyWith(
          _$IncidenceFilterOOutputImpl value,
          $Res Function(_$IncidenceFilterOOutputImpl) then) =
      __$$IncidenceFilterOOutputImplCopyWithImpl<$Res>;
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
class __$$IncidenceFilterOOutputImplCopyWithImpl<$Res>
    extends _$IncidenceFilterOOutputCopyWithImpl<$Res,
        _$IncidenceFilterOOutputImpl>
    implements _$$IncidenceFilterOOutputImplCopyWith<$Res> {
  __$$IncidenceFilterOOutputImplCopyWithImpl(
      _$IncidenceFilterOOutputImpl _value,
      $Res Function(_$IncidenceFilterOOutputImpl) _then)
      : super(_value, _then);

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
    return _then(_$IncidenceFilterOOutputImpl(
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
class _$IncidenceFilterOOutputImpl implements _IncidenceFilterOOutput {
  const _$IncidenceFilterOOutputImpl(
      {@RfControl<bool>() this.isMobilityEnabled = true,
      @RfControl<bool>() this.isFurcationEnabled = true,
      @RfControl<bool>() this.isBleedingEnabled = true,
      @RfControl<bool>() this.isSuppurationEnabled = true,
      @RfControl<bool>() this.isCalculusEnabled = true,
      @RfControl<bool>() this.isPlaqueEnabled = true});

  factory _$IncidenceFilterOOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncidenceFilterOOutputImplFromJson(json);

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
    return 'IncidenceFilterOOutput(isMobilityEnabled: $isMobilityEnabled, isFurcationEnabled: $isFurcationEnabled, isBleedingEnabled: $isBleedingEnabled, isSuppurationEnabled: $isSuppurationEnabled, isCalculusEnabled: $isCalculusEnabled, isPlaqueEnabled: $isPlaqueEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncidenceFilterOOutputImpl &&
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

  /// Create a copy of IncidenceFilterOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IncidenceFilterOOutputImplCopyWith<_$IncidenceFilterOOutputImpl>
      get copyWith => __$$IncidenceFilterOOutputImplCopyWithImpl<
          _$IncidenceFilterOOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncidenceFilterOOutputImplToJson(
      this,
    );
  }
}

abstract class _IncidenceFilterOOutput implements IncidenceFilterOOutput {
  const factory _IncidenceFilterOOutput(
          {@RfControl<bool>() final bool isMobilityEnabled,
          @RfControl<bool>() final bool isFurcationEnabled,
          @RfControl<bool>() final bool isBleedingEnabled,
          @RfControl<bool>() final bool isSuppurationEnabled,
          @RfControl<bool>() final bool isCalculusEnabled,
          @RfControl<bool>() final bool isPlaqueEnabled}) =
      _$IncidenceFilterOOutputImpl;

  factory _IncidenceFilterOOutput.fromJson(Map<String, dynamic> json) =
      _$IncidenceFilterOOutputImpl.fromJson;

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

  /// Create a copy of IncidenceFilterOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IncidenceFilterOOutputImplCopyWith<_$IncidenceFilterOOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
