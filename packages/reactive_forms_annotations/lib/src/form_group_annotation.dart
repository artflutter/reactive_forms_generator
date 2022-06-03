import 'package:reactive_forms/reactive_forms.dart';

typedef ValidatorFunctionTyped<T> = Map<String, dynamic>? Function(T form);

typedef AsyncValidatorFunctionTyped<T> = Future<Map<String, dynamic>?> Function(
  T form,
);

class FormGroupAnnotation<T> {
  final List<ValidatorFunction> validators;

  final List<ValidatorFunctionTyped<T>> validatorsTyped;

  final List<AsyncValidatorFunction> asyncValidators;

  final List<AsyncValidatorFunctionTyped<T>> asyncValidatorsTyped;

  final int asyncValidatorsDebounceTime;

  final bool disabled;

  const FormGroupAnnotation({
    this.validators = const [],
    this.validatorsTyped = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsTyped = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.disabled = false,
  });
}
