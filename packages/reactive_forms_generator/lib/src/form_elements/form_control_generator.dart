import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:source_gen/source_gen.dart';

class FormControlGenerator extends FormElementGenerator {
  FormControlGenerator(super.root, super.field, super.type);

  @override
  String element() {
    String displayType = field.type.getName(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    if (annotationTyped && annotationType != displayType) {
      throw Exception(
        'Annotation and field type mismatch. Annotation is typed as `$annotationType` and field(`${field.name}`) as `$displayType`.',
      );
    }

    final props = [
      'value: $value',
      'validators: $validators',
      'asyncValidators: $asyncValidators',
      'asyncValidatorsDebounceTime: $asyncValidatorsDebounceTime',
      'disabled: $disabled',
      'touched: $touched',
    ];

    return 'FormControl<$displayType>(${props.join(',')})';
  }

  @override
  TypeChecker get typeChecker => formControlChecker;
}
