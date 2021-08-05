import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_consumer.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_inherited_streamer.dart';

const stringRef = Reference('String');
const formGroupRef = Reference('FormGroup');

String generateLibrary(ClassElement element) {
  final emitter = DartEmitter(
    allocator: Allocator.simplePrefixing(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final formGenerator = FormGenerator(element, null);
  final reactiveInheritedStreamer = ReactiveInheritedStreamer(formGenerator);
  final reactiveForm = ReactiveForm(reactiveInheritedStreamer);
  final reactiveFormConsumer = ReactiveFormConsumer(reactiveForm);
  final reactiveFormBuilder = ReactiveFormBuilder(reactiveForm);

  final library = Library(
    (b) => b
      ..body.addAll([
        Directive.import('package:flutter/foundation.dart'),
        Directive.import('package:flutter/material.dart'),
        Directive.import('package:reactive_forms/reactive_forms.dart'),
        Directive.import(
          'package:reactive_forms/src/widgets/inherited_streamer.dart',
        ),
        ...element.enclosingElement.enclosingElement.imports
            .map((e) => e.uri)
            .whereType<String>()
            .map((e) => Directive.import(e)),
        Directive.import(element.librarySource.shortName),
        reactiveFormConsumer.generate,
        reactiveInheritedStreamer.generate,
        reactiveForm.generate,
        ...reactiveFormBuilder.generate,
        ...formGenerator.generate,
      ].mergeDuplicatesBy(
        (i) => i is Class ? i.name : i,
        (a, b) => a,
      )),
  );

  return DartFormatter().format(library.accept(emitter).toString());
}
