import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'freezed.g.dart';
part 'freezed.freezed.dart';

@freezed
@ReactiveFormAnnotation()
class Test with _$Test {
  const factory Test(
    @FormControlAnnotation() String? gender, {
    @FormControlAnnotation() String? id,
    @FormControlAnnotation() String? name,
    @FormControlAnnotation() double? year,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
