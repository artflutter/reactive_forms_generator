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
const model = '''
  import 'package:flutter/material.dart';
  import 'package:reactive_forms/reactive_forms.dart';
  import 'package:example/helpers.dart';
  import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
  
  part '$fileName.gform.dart';
  
  @Rf(output: false)
  class ArrayNullable {
    final List<String> emailList;
  
    ArrayNullable({
      @RfArray<double>(
        validators: [
          requiredValidator,
        ],
      )
          required this.emailList,
    });
  }
''';

void main() {
  group('doc', () {
    test(
      'Form array annotation exception',
      () async {
        final anotherBuilder = reactiveFormsGenerator(
          const BuilderOptions(<String, dynamic>{}),
        );

        expect(
          () async {
            return await testBuilder(
              anotherBuilder,
              {
                'a|lib/$fileName.dart': model,
              },
              outputs: {
                'a|lib/$fileName.gform.dart': '',
              },
              onLog: print,
              reader: await PackageAssetReader.currentIsolate(),
            );
          },
          throwsA(
            predicate(
              (e) {
                return e is Exception &&
                    e.toString() ==
                        'Exception: Annotation and field type mismatch. Annotation is typed as `double` and field(`emailList`) as `String`.';
              },
            ),
          ),
        );
      },
    );
  });
}
