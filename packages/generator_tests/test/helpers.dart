import 'dart:io';

import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms_generator/builder.dart';

Future testGenerator({
  required String generatedFile,
  required String model,
  String fileName = 'gen',
}) async {
  Logger.root.level = Level.INFO;

  final readerWriter = TestReaderWriter(
    rootPackage: 'reactive_forms_generator',
  );
  await readerWriter.testing.loadIsolateSources();

  final anotherBuilder = reactiveFormsGenerator(
    const BuilderOptions(<String, dynamic>{}),
  );

  return await testBuilder(
    anotherBuilder,
    {'a|lib/$fileName.dart': model},
    outputs: {'a|lib/$fileName.gform.dart': generatedFile},
    onLog: (message) => stdout.writeln(message),
    readerWriter: readerWriter,
  );
}
