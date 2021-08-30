import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';

class FormArrayGenerator extends FormElementGenerator {
  FormArrayGenerator(ParameterElement field, DartType? type)
      : super(field, type);

  @override
  String element() {
    final partialProps = [
      'validators: [${syncValidatorList(formArrayChecker).join(',')}]',
      'asyncValidators: [${asyncValidatorList(formArrayChecker).join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formArrayChecker)}',
      'disabled: ${disabled(formArrayChecker)}',
    ];

    final typeParameter = (field.type as ParameterizedType).typeArguments.first;
    String displayType = typeParameter.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (typeParameter.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    final optionalChaining =
        field.type.nullabilitySuffix == NullabilitySuffix.question ? '?' : '';

    final defaultValue =
        field.type.nullabilitySuffix == NullabilitySuffix.question
            ? '?? []'
            : '';

    if (field.isFormGroupArray) {
      final formGenerator = FormGenerator(
        typeParameter.element! as ClassElement,
        field.type,
      );

      final props = [
        '${field.name}${formGenerator.className}.map((e) => e.formElements()).toList()',
        ...partialProps
      ].join(', ');

      return 'FormArray($props)';
    } else {
      final props = [
        '''$value${optionalChaining}.map((e) => FormControl<${displayType}>(
              value: e,
              validators: ${itemSyncValidatorList(formArrayChecker)},
              asyncValidators: ${itemAsyncValidatorList(formArrayChecker)},
              asyncValidatorsDebounceTime: ${itemAsyncValidatorsDebounceTime(formArrayChecker)},
              disabled: ${itemDisabled(formArrayChecker)},
            )).toList() ${defaultValue}''',
        ...partialProps
      ].join(', ');

      return 'FormArray<$displayType>($props)';
    }
  }
}
