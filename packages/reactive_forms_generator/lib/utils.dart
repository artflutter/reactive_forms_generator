import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

void throwIf(bool condition, String message, {Element? element}) {
  if (condition) {
    throwError(message, element: element);
  }
}

void throwError(String message, {Element? element}) {
  throw InvalidGenerationSourceError(
    message,
    element: element,
  );
}
