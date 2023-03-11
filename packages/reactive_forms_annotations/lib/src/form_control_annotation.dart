import 'package:reactive_forms/reactive_forms.dart';

typedef FormControlValidatorFunctionTyped<T> = Map<String, dynamic>? Function(
    FormControl<T> control);

typedef FormControlAsyncValidatorFunctionTyped<T>
    = Future<Map<String, dynamic>?> Function(FormControl<T> control);

class FormControlAnnotation<T> {
  final List<FormControlValidatorFunctionTyped<T>> validators;

  final List<Validator<T>> validatorsTest;

  final List<FormControlAsyncValidatorFunctionTyped<T>> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool touched;

  final bool disabled;

  const FormControlAnnotation({
    this.validators = const [],
    this.validatorsTest = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.touched = false,
    this.disabled = false,
  });
}
