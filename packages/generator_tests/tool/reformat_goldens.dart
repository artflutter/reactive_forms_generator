// One-off: reformat the `generatedFile` golden strings with the workspace's
// dart_style, so goldens track the formatter version the generator uses.
import 'dart:io';

import 'package:dart_style/dart_style.dart';

void main() {
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  const marker = "const generatedFile = r'''";
  const closer = "''';";

  var changed = 0;
  final files = Directory('test')
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('_test.dart'));

  for (final file in files) {
    final source = file.readAsStringSync();
    final start = source.indexOf(marker);
    if (start == -1) continue;

    final contentStart = start + marker.length;
    final end = source.indexOf(closer, contentStart);
    if (end == -1) {
      stderr.writeln('no closing quote in ${file.path}');
      exitCode = 1;
      continue;
    }

    final golden = source.substring(contentStart, end);
    final String formatted;
    try {
      formatted = formatter.format(golden);
    } catch (e) {
      stderr.writeln('failed to format golden in ${file.path}: $e');
      exitCode = 1;
      continue;
    }

    if (formatted != golden) {
      file.writeAsStringSync(
        source.substring(0, contentStart) + formatted + source.substring(end),
      );
      changed++;
      stdout.writeln('updated ${file.path}');
    }
  }
  stdout.writeln('$changed goldens reformatted');
}
