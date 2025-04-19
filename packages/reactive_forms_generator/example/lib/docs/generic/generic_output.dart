import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'generic_output.freezed.dart';

part 'generic_output.gform.dart';

@freezed
@Rf(output: true)
abstract class TagsO<T> with _$TagsO<T> {
  factory TagsO({
    @RfControl() required List<T>? tags,
  }) = _TagsO;

  const TagsO._();
}
