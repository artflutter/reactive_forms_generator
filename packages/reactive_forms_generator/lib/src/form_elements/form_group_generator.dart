import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_control_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';

class FormGroupGenerator extends FormElementGenerator {
  // FormGroupGenerator(super.root, super.field, super.type);

  final ClassElement2 formGroupField;

  FormGroupGenerator({
    required super.root,
    required this.formGroupField,
    super.type,
  }) : super(field: formGroupField);

  @override
  String get value {
    final enclosingElement = constructorElement?.enclosingElement2;

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        ? ''
        : '?';

    return '${enclosingElement?.name3?.camelCase}$optionalChaining';
  }

  @override
  ConstructorElement2? get constructorElement {
    return formGroupField.constructors2.firstOrNull;
  }

  @override
  Element2 get fieldElement => formGroupField.thisType.element3;

  ClassElement2 get classElement =>
      formGroupField.thisType.element3 as ClassElement2;

  List<FormalParameterElement> get formElements => classElement.constructors2
      .where((e) => e.hasReactiveFormAnnotatedParameters)
      .first
      .formalParameters
      .where(
        (e) => (e.isFormControl || e.isFormArray || e.isFormGroupArray),
      )
      .toList();

  List<FormalParameterElement> get nestedFormElements =>
      classElement.constructors2
          .where((e) => e.hasReactiveFormAnnotatedParameters)
          .first
          .formalParameters
          .where((e) => e.isFormGroup)
          .toList();

  // String get validators => syncValidators(formControlChecker);

  // String get asyncValidators => asyncValidatorList(formGroupChecker);

  @override
  String element() {
    final formElementsList = formElements
        .map(
          (f) {
            FormElementGenerator? formElementGenerator;

            if (f.isFormControl) {
              formElementGenerator = FormControlGenerator(
                root: root,
                formControlField: f,
                type: type,
              );
            }

            if (f.isFormArray || f.isFormGroupArray) {
              formElementGenerator = FormArrayGenerator(
                root: root,
                formArrayField: f,
                type: type,
              );
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
          return '${f.fieldControlNameName}: ${f.className}.formElements($value.${f.name3})';
        },
      ),
    );

    final props = [
      '{${formElementsList.join(',')}}',
      'validators: $validators',
      'asyncValidators: $asyncValidators',
      'asyncValidatorsDebounceTime: $asyncValidatorsDebounceTime',
      'disabled: $disabled',
    ].join(',');

    return 'FormGroup($props)';
  }

  @override
  TypeChecker get typeChecker => formGroupChecker;
}
