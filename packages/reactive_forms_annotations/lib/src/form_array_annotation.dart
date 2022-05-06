import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

enum ValidatorsApplyMode {
  merge,
  override,
}

typedef FormArrayValidatorFunctionTyped<T> = Map<String, dynamic>? Function(
    FormArray<T> control);

typedef FormArrayAsyncValidatorFunctionTyped<T> = Future<Map<String, dynamic>?>
    Function(FormArray<T> control);

class FormArrayAnnotation<T> {
  final List<FormArrayValidatorFunctionTyped<T>> validators;

  final List<FormArrayAsyncValidatorFunctionTyped<T>> asyncValidators;

  final int asyncValidatorsDebounceTime;

  final bool disabled;

  final List<FormControlValidatorFunctionTyped<T>> itemValidators;

  final List<FormControlAsyncValidatorFunctionTyped<T>> itemAsyncValidators;

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
