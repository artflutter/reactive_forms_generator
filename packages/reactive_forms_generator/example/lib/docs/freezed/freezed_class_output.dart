// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'freezed_class_output.g.dart';

part 'freezed_class_output.freezed.dart';

part 'freezed_class_output.gform.dart';

@freezed
@Rf(output: true)
class FreezedClassO with _$FreezedClassO {
  FreezedClassO._();

  factory FreezedClassO(
    @RfControl<String>() String? gender,
    @RfControl(validators: [RequiredValidator()]) String? genderR, {
    @RfControl() String? id,
    @RfControl(validators: [RequiredValidator()]) String? idR,
    @RfControl<String>() String? name,
    @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
    @RfControl<double>() double? year,
  }) = _FreezedClassO;

  factory FreezedClassO.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassOFromJson(json);

  bool method() => false;
}
