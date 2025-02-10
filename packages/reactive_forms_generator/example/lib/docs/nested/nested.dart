import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'nested.freezed.dart';

part 'nested.g.dart';

part 'nested.gform.dart';

@Rf(output: false)
@RfGroup()
@freezed
class SubGroup with _$SubGroup {
  const factory SubGroup({
    @RfControl() required String id,
  }) = _SubGroup;

  factory SubGroup.fromJson(Map<String, dynamic> json) =>
      _$SubGroupFromJson(json);
}

@Rf(output: false)
@RfGroup()
@freezed
class Group with _$Group {
  const factory Group({
    @RfControl() required String id,
    @RfArray<dynamic>() required List<SubGroup> subGroupList,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@Rf(output: false)
@RfGroup()
@freezed
class Nested with _$Nested {
  const factory Nested({
    @RfArray<dynamic>() required List<Group> groupList,
  }) = _Nested;

  factory Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);
}
