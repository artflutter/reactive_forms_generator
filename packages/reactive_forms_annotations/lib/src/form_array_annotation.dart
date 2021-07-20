import 'package:reactive_forms_annotations/src/typedefs.dart';

class FormArray {
  final List<ValidatorFunction> validators;
  final List<AsyncValidatorFunction> asyncValidators;

  const FormArray({
    this.validators = const [],
    this.asyncValidators = const [],
  });
}
