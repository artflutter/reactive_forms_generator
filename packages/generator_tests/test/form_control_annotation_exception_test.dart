// throwsA(predicate((e) =>
// e is MissingFragmentException &&
// e.fragmentName == 'NonExistentFragmentMixin' &&
// e.className == r'SomeQuery$Query')),

@Timeout(Duration(seconds: 145))
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
  group('doc', () {
    test(
      'Basic',
      () async {
        final readerWriter = TestReaderWriter(rootPackage: 'test_package');
        await readerWriter.testing.loadIsolateSources();

        final anotherBuilder = reactiveFormsGenerator(
          const BuilderOptions(<String, dynamic>{}),
        );

        // This should complete without throwing an unhandled exception
        // The generator will log the error but testBuilder should handle it gracefully
        final result = await testBuilder(
          anotherBuilder,
          {
            'a|lib/$fileName.dart': model,
          },
          onLog: print,
          readerWriter: readerWriter,
        );

        // Verify that the build failed (no outputs generated)
        expect(result.buildResult.outputs, isEmpty);
      },
    );
  });
}
