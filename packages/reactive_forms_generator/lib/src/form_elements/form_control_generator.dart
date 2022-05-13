import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';

class FormControlGenerator extends FormElementGenerator {
  FormControlGenerator(
      ClassElement root, ParameterElement field, DartType? type)
      : super(root, field, type);

  @override
  String element() {
    String displayType = field.type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    final _annotationType = annotationType(formControlChecker);
    final _annotationTyped = annotationTyped(formControlChecker);

    if (_annotationTyped && _annotationType != displayType) {
      throw Exception(
        'Annotation and field type mismatch. Annotation is typed as `$_annotationType` and field(`${field.name}`) as `$displayType`.',
      );
    }

    List<String> validators = syncValidatorList(formControlChecker);
    List<String> asyncValidators = asyncValidatorList(formControlChecker);

    if (_annotationTyped) {
      validators = validators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
      asyncValidators = asyncValidators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
    }

    final props = [
      'value: $value',
      'validators: [${validators.join(',')}]',
      'asyncValidators: [${asyncValidators.join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formControlChecker)}',
      'disabled: ${disabled(formControlChecker)}',
      'touched: ${touched(formControlChecker)}',
    ].join(',');

    return 'FormControl<$displayType>($props)';
  }
}
