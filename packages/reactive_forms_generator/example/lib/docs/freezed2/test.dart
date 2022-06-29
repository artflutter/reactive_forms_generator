import 'package:reactive_forms/reactive_forms.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'test.freezed.dart';

part 'test.gform.dart';

@freezed
@ReactiveFormAnnotation()
class Test with _$Test {
  const Test._();

  const factory Test({
    @FormControlAnnotation<String>() required String title,
    @FormControlAnnotation<String>() String? description,
  }) = _Test;

  factory Test.empty() => const Test(
        title: '',
        description: '',
      );

  // The error occurs with this grrr
  dartz.Option<String> get failureOption {
    if (title.isEmpty) {
      return dartz.some('Cannot be empty');
    } else {
      return dartz.none();
    }
  }
}
