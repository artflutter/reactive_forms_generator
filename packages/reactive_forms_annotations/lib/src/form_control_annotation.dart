import 'package:reactive_forms/reactive_forms.dart';

class FormControlAnnotation<T> {
  final List<AsyncValidator<T>> asyncValidators;

  final List<Validator<T>> validators;

  final int asyncValidatorsDebounceTime;

  final bool touched;

  final bool disabled;

  const FormControlAnnotation({
    this.asyncValidators = const [],
    this.validators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.touched = false,
    this.disabled = false,
  });
}

typedef RfControl<T> = FormControlAnnotation<T>;
