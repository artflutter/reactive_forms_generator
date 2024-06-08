import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_array_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_consumer.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_extension.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_group_array_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_model_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_inherited_streamer.dart';

const stringRef = Reference('String');
const formGroupRef = Reference('FormGroup');

List<Spec> generateLibrary(ClassElement element) {
  final formGenerator = FormGenerator(element, element, null);
  final reactiveInheritedStreamer = ReactiveInheritedStreamer(formGenerator);
  final reactiveForm = ReactiveForm(reactiveInheritedStreamer);
  final reactiveFormExtension =
      ReactiveFormExtension(reactiveInheritedStreamer);
  final reactiveFormConsumer = ReactiveFormConsumer(reactiveForm);
  final reactiveFormBuilder = ReactiveFormBuilder(reactiveForm);
  final reactiveFormModelBuilder = ReactiveFormModelBuilder(reactiveForm);
  final reactiveFormArrayBuilder = ReactiveFormArrayBuilder(formGenerator);
  final reactiveFormGroupArrayBuilder =
      ReactiveFormGroupArrayBuilder(formGenerator);

  return [
    reactiveFormConsumer.generate,
    reactiveInheritedStreamer.generate,
    reactiveForm.generate,
    reactiveFormExtension.generate,
    ...reactiveFormBuilder.generate,
    ...reactiveFormModelBuilder.generate,
    ...formGenerator.generate,
    reactiveFormArrayBuilder.generate,
    reactiveFormGroupArrayBuilder.generate,
  ];
}
