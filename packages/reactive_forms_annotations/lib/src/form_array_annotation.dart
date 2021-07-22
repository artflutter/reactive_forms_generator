import 'package:reactive_forms_core/reactive_forms_core.dart';

class FormArrayAnnotation {
  final List<ValidatorFunction> validators;
  final List<AsyncValidatorFunction> asyncValidators;

  const FormArrayAnnotation({
    this.validators = const [],
    this.asyncValidators = const [],
  });
}
