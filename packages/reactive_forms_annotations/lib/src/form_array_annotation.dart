import 'package:reactive_forms/reactive_forms.dart';

class FormArrayAnnotation {
  final List<ValidatorFunction> validators;
  final List<AsyncValidatorFunction> asyncValidators;

  const FormArrayAnnotation({
    this.validators = const [],
    this.asyncValidators = const [],
  });
}
