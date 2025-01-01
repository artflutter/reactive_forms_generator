import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_array_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_consumer.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_extension.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_group_array_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_inherited_streamer.dart';

const stringRef = Reference('String');
const formGroupRef = Reference('FormGroup');

List<Spec> generateLibrary(
  ClassElement element,
  AstNode ast,
) {
  final formGenerator = FormGenerator(element, element, null, ast);
  final reactiveInheritedStreamer = ReactiveInheritedStreamer(formGenerator);
  final reactiveForm = ReactiveForm(reactiveInheritedStreamer);
  final reactiveFormExtension =
      ReactiveFormExtension(reactiveInheritedStreamer);
  final reactiveFormConsumer = ReactiveFormConsumer(reactiveForm);
  final reactiveFormBuilder = ReactiveFormBuilder(reactiveForm);
  final reactiveFormArrayBuilder = ReactiveFormArrayBuilder(formGenerator);
  final reactiveFormGroupArrayBuilder =
      ReactiveFormGroupArrayBuilder(formGenerator);

  final p = formGenerator.generate2;
  // print(p);

  return [
    reactiveFormConsumer.generate,
    reactiveInheritedStreamer.generate,
    reactiveForm.generate,
    reactiveFormExtension.generate,
    ...reactiveFormBuilder.generate,
    ...formGenerator.generate,
    ...p,
    reactiveFormArrayBuilder.generate,
    reactiveFormGroupArrayBuilder.generate,
  ];
}
