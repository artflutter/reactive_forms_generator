import 'package:analyzer/dart/element/element.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/library_builder.dart';
import 'utils.dart';

class ReactiveFormsGenerator
    extends GeneratorForAnnotation<ReactiveFormAnnotation> {
  @override
  dynamic generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // throw if annotation is used for a none class element
    throwIf(
      element is! ClassElement,
      '${element.name} is not a class element',
      element: element,
    );

    var libs = await buildStep.resolver.libraries.toList();

    Uri? targetFileUri;
    if (annotation.peek('preferRelativeImports')?.boolValue != false) {
      targetFileUri = element.source?.uri;
    }
    // var importResolver = TypeResolver(libs, targetFileUri);

    // var routerResolver = RouterConfigResolver(importResolver);
    // final routerConfig =
    //     routerResolver.resolve(annotation, element as ClassElement);

    return generateLibrary(element as ClassElement);
  }
}
