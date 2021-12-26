library reactive_forms_generator;

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
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
    final values = <String>{};

    for (var annotatedElement in library.annotatedWith(formChecker)) {
      final generatedValue = generateForAnnotatedElement(
          annotatedElement.element, annotatedElement.annotation, buildStep);
      await for (var value in normalizeGeneratorOutput(generatedValue)) {
        assert(value.length == value.trim().length);
        values.add(value);
      }
    }

    return values.join('\n\n');
  }

  String generateForAnnotatedElement(
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
