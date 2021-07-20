import 'package:reactive_forms_annotations/src/typedefs.dart';

class FormControl {
  final List<ValidatorFunction> validators;

  final List<AsyncValidatorFunction> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool touched;

  final bool disabled;

  const FormControl({
    this.validators = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.touched = false,
    this.disabled = false,
  });
}
