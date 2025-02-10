import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ExtendedControlMethod extends ReactiveFormGeneratorMethod {
  ExtendedControlMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? formGroupArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    final typeReference =
        'ExtendedControl<List<Map<String, Object?>?>, List<${type}Form>>';

    final body = '''
      ExtendedControl<List<Map<String, Object?>?>, List<${type}Form>>(
          form.control(${field.fieldControlPath}())
              as FormArray<Map<String, Object?>>,
          () => ${field.name}${field.className})
    ''';

    return Method(
      (b) => b
        ..name = field.fieldExtendedControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(typeReference)
        ..body = Code(body),
    );
  }
}
