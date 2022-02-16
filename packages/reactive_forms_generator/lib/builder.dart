import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'reactive_forms_generator.dart';

Builder reactiveFormsGenerator(BuilderOptions options) {
  return PartBuilder(
    [const ReactiveFormsGenerator()],
    '.gform.dart',
    header: '''
      // coverage:ignore-file
      // GENERATED CODE - DO NOT MODIFY BY HAND
      // ignore_for_file: type=lint
      // ignore_for_file: 
    ''',
  );
}
