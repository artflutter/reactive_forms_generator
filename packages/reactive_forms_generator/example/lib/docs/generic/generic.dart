import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'generic.freezed.dart';

part 'generic.gform.dart';

@freezed
@Rf(output: false)
class Tags<T> with _$Tags<T> {
  factory Tags({
    @RfControl() required List<T>? tags,
  }) = _Tags;

  const Tags._();
}
