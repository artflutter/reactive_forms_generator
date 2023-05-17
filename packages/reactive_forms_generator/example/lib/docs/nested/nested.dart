import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'nested.freezed.dart';

part 'nested.g.dart';

part 'nested.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation()
@freezed
class SubGroup with _$SubGroup {
  const factory SubGroup({
    @FormControlAnnotation() required String id,
  }) = _SubGroup;

  factory SubGroup.fromJson(Map<String, dynamic> json) =>
      _$SubGroupFromJson(json);
}

@ReactiveFormAnnotation()
@FormGroupAnnotation()
@freezed
class Group with _$Group {
  const factory Group({
    @FormControlAnnotation() required String id,
    @FormArrayAnnotation<dynamic>() required List<SubGroup> subGroupList,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@ReactiveFormAnnotation()
@FormGroupAnnotation()
@freezed
class Nested with _$Nested {
  const factory Nested({
    @FormArrayAnnotation<dynamic>() required List<Group> groupList,
  }) = _Nested;

  factory Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);
}
