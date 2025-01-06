// ignore_for_file: implementation_imports
import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/src/dart/element/element.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/src/dart/constant/value.dart';

const _formChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/reactive_form_annotation.dart#ReactiveFormAnnotation',
);

const formControlChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_control_annotation.dart#FormControlAnnotation',
);

const formArrayChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_array_annotation.dart#FormArrayAnnotation',
);

const formGroupChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_group_annotation.dart#FormGroupAnnotation',
);

extension LibraryReaderExt on LibraryReader {
  Iterable<AnnotatedElement> get rfAnnotated {
    return annotatedWith(_formChecker);
  }
}

extension MapExt on Map<String, String> {
  bool hasRequiredValidator(List<String> requiredValidators) {
    final p = requiredValidators.fold(false, (acc, e) {
      final v = this[FormElementGenerator.validatorKey];
      return acc || v?.contains(e) == true;
    });

    return p;
    // return containsKey(FormElementGenerator.validatorKey) &&
    //     this[FormElementGenerator.validatorKey]
    //             ?.contains('RequiredValidator()') ==
    //         true;
  }
}

extension ClassDeclarationImplExt on ClassDeclarationImpl {
  bool get hasRfGroupAnnotation {
    return metadata.any((e) => e.name.toString() == 'RfGroup');
  }

  bool get hasRfAnnotation {
    return metadata.any((e) => e.name.toString() == 'Rf');
  }
}

extension ListElementAnnotationImplExt on List<ElementAnnotationImpl> {
  bool get hasRfGroupAnnotation {
    return any((e) => e.annotationAst.name.toString() == 'RfGroup');
  }

// bool get hasRfAnnotation {
//   return metadata.any((e) => e.name.toString() == 'Rf');
// }
}

extension NodeListImplAnnotationImplExt on NodeListImpl<AnnotationImpl> {
  bool get hasRfGroupAnnotation {
    return any((e) => e.name.toString() == 'RfGroup');
  }

  bool get hasRfArrayAnnotation {
    return any((e) => e.name.toString() == 'RfArray');
  }

  bool get hasRfAnnotation {
    return any((e) => e.name.toString() == 'Rf');
  }
}

extension ElementRfExt on Element {
  bool get hasRfGroupAnnotation {
    return formGroupChecker.hasAnnotationOfExact(this);
  }

  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this);
  }

  bool get hasRfControlAnnotation {
    return formControlChecker.hasAnnotationOfExact(this);
  }

  Map<String, String> annotationParams(TypeChecker? typeChecker) {
    final result = <String, String>{};
    final annotation = typeChecker?.firstAnnotationOf(this);
    try {
      if (annotation != null) {
        for (final meta in metadata) {
          final obj = meta.computeConstantValue()!;

          if (typeChecker?.isExactlyType(obj.type!) == true) {
            final argumentList = (meta as ElementAnnotationImpl)
                .annotationAst
                .arguments as ArgumentListImpl;
            for (var argument in argumentList.arguments) {
              final argumentNamedExpression = argument as NamedExpressionImpl;
              result.addEntries(
                [
                  MapEntry(
                    argumentNamedExpression.name.label.toSource(),
                    argumentNamedExpression.expression.toSource(),
                  ),
                ],
              );
            }
          }
        }
      }

      return result;
    } catch (e) {
      return result;
    }
  }
}

extension ParameterElementAnnotationExt on ParameterElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this);
  }

  bool get hasRfArrayAnnotation {
    return formArrayChecker.hasAnnotationOfExact(
      this,
      throwOnUnresolved: false,
    );
  }
}

extension FieldElementAnnotationExt on FieldElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this);
  }
}

extension ClassElementAnnotationExt on ClassElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this);
  }

  DartObject? get rfAnnotation {
    return _formChecker.firstAnnotationOfExact(this);
  }

  bool get output {
    try {
      if (hasRfAnnotation) {
        final annotation = rfAnnotation;

        return annotation?.getField('output')?.toBoolValue() ?? false;
      }

      return false;
    } catch (e) {
      return false;
    }
  }

  List<String> get requiredValidators {
    try {
      if (hasRfAnnotation) {
        final annotation = rfAnnotation;

        final x = annotation
                ?.getField('requiredValidators')
                ?.toListValue()
                ?.map((e) {
                  if (e is DartObjectImpl) {
                    final s = e.state.toString();
                    return s.substring(1, s.length - 1);
                  }

                  return null;
                })
                .whereType<String>()
                .toList() ??
            [];

        return x;
      }

      return [];
    } catch (e) {
      return [];
    }
  }
}

// extension AnnotationExt on Annotation {
//   bool get required {
//     if (name.toString().startsWith('Rf')) {
//       return arguments?.arguments.fold(false, (acc, e) {
//             if (e is NamedExpression &&
//                 e.name.label.name == 'validators' &&
//                 e.expression
//                     .toSource()
//                     .toString()
//                     .contains('RequiredValidator()')) {
//               return true;
//             }
//
//             return acc;
//           }) ??
//           false;
//     }
//
//     return false;
//   }
// }
//
// extension NodeListAnnotationExt on NodeList<Annotation> {
//   bool get required => fold(
//         false,
//         (acc, e) => acc || e.required,
//       );
// }
