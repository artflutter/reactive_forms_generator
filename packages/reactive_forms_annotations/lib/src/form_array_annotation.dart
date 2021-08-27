import 'package:reactive_forms/reactive_forms.dart';

enum ValidatorsApplyMode {
  merge,
  override,
}

class FormArrayAnnotation {
  final List<ValidatorFunction> validators;

  final List<AsyncValidatorFunction> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool disabled;

  final List<ValidatorFunction> itemValidators;

  final List<AsyncValidatorFunction> itemAsyncValidators;

  final int itemAsyncValidatorsDebounceTime;

  final bool itemDisabled;

  const FormArrayAnnotation({
    this.validators = const [],
    this.asyncValidators = const [],
    this.asyncValidatorsDebounceTime = 250,
    this.disabled = false,
    this.itemValidators = const [],
    this.itemAsyncValidators = const [],
    this.itemAsyncValidatorsDebounceTime = 250,
    this.itemDisabled = false,
  });
}
