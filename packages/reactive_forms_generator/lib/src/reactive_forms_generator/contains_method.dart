import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ContainsMethod extends ReactiveFormGeneratorMethod {
  ContainsMethod(ParameterElement field) : super(field);

  @override
  Method? defaultMethod() => Method(
        (b) => b
          ..name = field.containsMethodName
          ..type = MethodType.getter
          ..returns = const Reference('bool')
          ..body = Code(
            '''try {
                form.control(${field.fieldControlPath}());
                return true;
              } catch (e) {
                return false;
              }''',
          ),
      );
}
