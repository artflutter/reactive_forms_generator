import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'nested_output.freezed.dart';

part 'nested_output.g.dart';

part 'nested_output.gform.dart';

@Rf(output: true)
@RfGroup()
@freezed
class SubGroupO with _$SubGroupO {
  const factory SubGroupO({
    @RfControl() required String id,
  }) = _SubGroupO;

  factory SubGroupO.fromJson(Map<String, dynamic> json) =>
      _$SubGroupOFromJson(json);
}

@Rf(output: true)
@RfGroup()
@freezed
class GroupO with _$GroupO {
  const factory GroupO({
    @RfControl() required String id,
    @RfArray<dynamic>() required List<SubGroupO> subGroupList,
  }) = _GroupO;

  factory GroupO.fromJson(Map<String, dynamic> json) => _$GroupOFromJson(json);
}

@Rf(output: true)
@RfGroup()
@freezed
class NestedO with _$NestedO {
  const factory NestedO({
    @RfArray<dynamic>() required List<GroupO> groupList,
  }) = _NestedO;

  factory NestedO.fromJson(Map<String, dynamic> json) =>
      _$NestedOFromJson(json);
}
