import 'package:reactive_forms/reactive_forms.dart';

class FormArrayAnnotation {
  final List<ValidatorFunction> validators;

  final List<AsyncValidatorFunction> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool disabled;

  const FormArrayAnnotation({
    this.validators = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.disabled = false,
  });
}
