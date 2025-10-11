// throwsA(predicate((e) =>
// e is MissingFragmentException &&
// e.fragmentName == 'NonExistentFragmentMixin' &&
// e.className == r'SomeQuery$Query')),

@Timeout(Duration(seconds: 145))
import 'dart:io';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:reactive_forms_generator/builder.dart';
import 'package:test/test.dart';

const fileName = 'basic';
const model = r'''
  import 'package:flutter/material.dart';
  import 'package:reactive_forms/reactive_forms.dart';
  import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
  
  part 'basic.gform.dart';
  
  Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
    return Validators.required(control);
  }
  
  @Rf(output: false)
  class Basic {
    final String email;
  
    final String password;
  
    Basic({
      @RfControl<double>(
        validators: const [requiredValidator],
      )
          this.email = "",
      @RfControl(
        validators: const [requiredValidator],
      )
          this.password = "",
    });
  }
''';

void main() {
  group(skip: true, 'doc', () {
    test('Basic', () async {
      final anotherBuilder = reactiveFormsGenerator(
        const BuilderOptions(<String, dynamic>{}),
      );

      expect(
        () async {
          final readerWriter = TestReaderWriter(
            rootPackage: 'reactive_forms_generator',
          );
          await readerWriter.testing.loadIsolateSources();

          return await testBuilder(
            anotherBuilder,
            {'a|lib/$fileName.dart': model},
            outputs: {'a|lib/$fileName.gform.dart': ''},
            onLog: (message) => stdout.writeln(message),
            readerWriter: readerWriter,
          );
        },
        throwsA(
          predicate((e) {
            return e is Exception &&
                e.toString() ==
                    'Exception: Annotation and field type mismatch. Annotation is typed as `double` and field(`email`) as `String`.';
          }),
        ),
      );
    });
  });
}
