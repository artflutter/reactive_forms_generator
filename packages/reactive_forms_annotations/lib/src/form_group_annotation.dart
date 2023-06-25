import 'package:reactive_forms/reactive_forms.dart';

class FormGroupAnnotation<T> {
  final List<Validator<T>> validators;

  final List<AsyncValidator<T>> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool disabled;

  const FormGroupAnnotation({
    this.validators = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.disabled = false,
  });
}
