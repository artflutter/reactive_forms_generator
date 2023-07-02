library reactive_forms_generator;

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:source_gen/source_gen.dart';

// ignore: implementation_imports
import 'package:source_gen/src/output_helpers.dart';

import 'src/library_builder.dart';
import 'utils.dart';

class ReactiveFormsGenerator extends Generator {
  const ReactiveFormsGenerator();

  @override
  Future<String> generate(LibraryReader library, BuildStep buildStep) async {
    final specList = <Spec>[];

    final emitter = DartEmitter(
      allocator: Allocator.simplePrefixing(),
      orderDirectives: true,
      useNullSafetySyntax: true,
    );

    for (var annotatedElement in library.rfAnnotated) {
      specList.addAll(
        generateForAnnotatedElement(
          annotatedElement.element,
          annotatedElement.annotation,
          buildStep,
        ),
      );
    }

    final lib = Library(
      (b) => b
        ..body.addAll(specList.mergeDuplicatesBy(
          (i) => i is Class ? i.name : i,
          (a, b) => a,
        )),
    );

    final generatedValue =
        DartFormatter().format(lib.accept(emitter).toString());

    final values = <String>[];
    await for (var value in normalizeGeneratorOutput(generatedValue)) {
      assert(value.length == value.trim().length);
      values.add(value);
    }

    return values.join('\n\n');
  }

  List<Spec> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    throwIf(
      element is! ClassElement,
      '${element.name} is not a class element',
      element: element,
    );

    return generateLibrary(element as ClassElement);
  }
}
