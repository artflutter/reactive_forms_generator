// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'freezed_class.g.dart';

part 'freezed_class.freezed.dart';

part 'freezed_class.gform.dart';

@freezed
@Rf(output: false)
class FreezedClass with _$FreezedClass {
  FreezedClass._();

  factory FreezedClass(
    @RfControl<String>() String? gender, {
    @RfControl(validators: [RequiredValidator()]) String? id,
    @RfControl<String>() String? name,
    @JsonKey(name: 'logo_image') @RfControl<String>() String? logoImage,
    @RfControl<double>() double? year,
    @Default([]) List<String> selectedSpaces,
  }) = _FreezedClass;

  factory FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassFromJson(json);

  bool method() => false;
}
