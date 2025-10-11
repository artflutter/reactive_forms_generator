import 'package:analyzer/dart/element/element2.dart';
import 'package:source_gen/source_gen.dart';

void throwIf(bool condition, String message, {Element2? element}) {
  if (condition) {
    throwError(message, element: element);
  }
}

void throwError(String message, {Element2? element}) {
  throw InvalidGenerationSourceError(
    message,
    element: element,
  );
}
