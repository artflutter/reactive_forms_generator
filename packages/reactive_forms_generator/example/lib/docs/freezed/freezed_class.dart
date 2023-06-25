// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'freezed_class.g.dart';

part 'freezed_class.freezed.dart';

part 'freezed_class.gform.dart';

@freezed
@ReactiveFormAnnotation()
class FreezedClass with _$FreezedClass {
  FreezedClass._();

  factory FreezedClass(
    @FormControlAnnotation<String>() String? gender, {
    @FormControlAnnotation(validators: [RequiredValidator()]) String? id,
    @FormControlAnnotation<String>() String? name,
    @JsonKey(name: 'logo_image')
    @FormControlAnnotation<String>()
    String? logoImage,
    @FormControlAnnotation<double>() double? year,
  }) = _FreezedClass;

  factory FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassFromJson(json);

  bool method() => false;
}
