import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_control_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:recase/recase.dart';

class FormGroupGenerator extends FormElementGenerator {
  FormGroupGenerator(ClassElement root, ParameterElement field, DartType? type)
      : super(root, field, type);

  @override
  String get value {
    final enclosingElement = constructorElement.enclosingElement;

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        ? ''
        : '?';

    return '${enclosingElement.name.camelCase}$optionalChaining';
  }

  @override
  ConstructorElement get constructorElement =>
      field.enclosingElement as ConstructorElement;

  @override
  Element get fieldElement => field.type.element!;

  ClassElement get classElement => field.type.element as ClassElement;

  List<ParameterElement> get formElements => classElement.constructors
      .where((e) => e.hasReactiveFormAnnotatedParameters)
      .first
      .parameters
      .where(
        (e) => (e.isFormControl || e.isFormArray || e.isFormGroupArray),
      )
      .toList();

  List<ParameterElement> get nestedFormElements => classElement.constructors
      .where((e) => e.hasReactiveFormAnnotatedParameters)
      .first
      .parameters
      .where((e) => e.isFormGroup)
      .toList();

  List<String> get validators {
    List<String> formGroupValidators = syncValidatorList(formGroupChecker);
    List<String> formGroupValidatorsTyped =
        syncValidatorTypedList(formGroupChecker);

    formGroupValidatorsTyped = formGroupValidatorsTyped
        .map(
          (e) =>
              '(control) => $e(${field.className}(control as FormGroup, null))',
        )
        .toList();

    return [...formGroupValidators, ...formGroupValidatorsTyped];
  }

  List<String> get asyncValidators {
    List<String> formGroupAsyncValidators =
        asyncValidatorList(formGroupChecker);
    List<String> formGroupAsyncValidatorsTyped =
        asyncValidatorTypedList(formGroupChecker);

    formGroupAsyncValidators = formGroupAsyncValidators
        .map(
          (e) => '(control) => $e(this)',
        )
        .toList();

    return [...formGroupAsyncValidators, ...formGroupAsyncValidatorsTyped];
  }

  @override
  String element() {
    final formElementsList = formElements
        .map(
          (f) {
            FormElementGenerator? formElementGenerator;

            if (f.isFormControl) {
              formElementGenerator = FormControlGenerator(root, f, type);
            }

            if (f.isFormArray || f.isFormGroupArray) {
              formElementGenerator = FormArrayGenerator(root, f, type);
            }

            if (formElementGenerator != null) {
              return '${f.fieldControlNameName}: ${formElementGenerator.element()}';
            }

            return null;
          },
        )
        .whereType<String>()
        .toList();

    formElementsList.addAll(
      nestedFormElements.map(
        (f) {
          return '${f.fieldControlNameName}: ${f.className}.formElements($value.${f.name})';
        },
      ),
    );

    final props = [
      '{${formElementsList.join(',')}}',
      'validators: [${validators.join(',')}]',
      'asyncValidators: [${asyncValidators.join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formGroupChecker)}',
      'disabled: ${disabled(formGroupChecker)}',
    ].join(',');

    return 'FormGroup($props)';
  }
}
