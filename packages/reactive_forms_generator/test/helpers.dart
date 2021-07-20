import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms_generator/builder.dart';

Future testGenerator({
  required String generatedFile,
  required String model,
}) async {
  Logger.root.level = Level.INFO;

  final anotherBuilder = reactiveFormsGenerator(BuilderOptions({}));

  return await testBuilder(
    anotherBuilder,
    {
      'a|lib/login.dart': model,
    },
    outputs: {
      'a|lib/login.gform.dart': generatedFile,
    },
    onLog: print,
    reader: await PackageAssetReader.currentIsolate(),
  );
}
