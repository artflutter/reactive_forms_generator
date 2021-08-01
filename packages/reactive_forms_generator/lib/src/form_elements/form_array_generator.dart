import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:source_gen/source_gen.dart';
import 'package:recase/recase.dart';

class FormArrayGenerator extends FormElementGenerator {
  FormArrayGenerator(FieldElement field) : super(field);

  @override
  String element() {
    final partialProps = [
      'validators: [${syncValidatorList(formArrayChecker).join(',')}]',
      'asyncValidators: [${asyncValidatorList(formArrayChecker).join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formControlChecker)}',
      'disabled: ${disabled(formControlChecker)}',
    ];

    final typeParameter = (field.type as ParameterizedType).typeArguments.first;

    if (field.isFormGroupArray) {
      final formGenerator = FormGenerator(
        typeParameter.element! as ClassElement,
      );

      final props = [
        '${field.name}${formGenerator.className}.map((e) => e.formElements()).toList()',
        ...partialProps
      ].join(', ');

      return 'FormArray($props)';
    } else {
      final props = [
        '$value.map((e) => FormControl<$typeParameter>(value: e)).toList()',
        ...partialProps
      ].join(', ');

      return 'FormArray<$typeParameter>($props)';
    }
  }
}
