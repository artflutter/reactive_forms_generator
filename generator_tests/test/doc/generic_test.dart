@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'generic';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Freezed support',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:freezed_annotation/freezed_annotation.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.freezed.dart';
            part '$fileName.gform.dart';
            
            @freezed
            @ReactiveFormAnnotation()
            class Tags<T> with _$Tags<T> {
              factory Tags({
                @FormControlAnnotation() required List<T>? tags,
              }) = _Tags;
            
              const Tags._();
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''
''';
