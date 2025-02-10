// ignore_for_file: implementation_imports
import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:source_gen/source_gen.dart';
import 'package:recase/recase.dart';

abstract class FormElementGenerator {
  final ClassElement root;
  final ParameterElement field;
  final DartType? type;

  static const String validatorKey = 'validators';

  FormElementGenerator(this.root, this.field, this.type);

  String get value {
    final enclosingElement = constructorElement.enclosingElement3;

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        ? ''
        : '?';

    return '${enclosingElement.name.camelCase}$optionalChaining.${fieldElement.name}';
  }

  String? validatorName(ExecutableElement? e) {
    var name = e?.name;

    if (e is MethodElement) {
      name = '${e.enclosingElement3.name}.$name';
    }

    return name;
  }

  TypeChecker get typeChecker;

  DartObject? get annotation => typeChecker.firstAnnotationOf(fieldElement);

  String get itemValidators =>
      fieldElement.annotationParams(typeChecker)['itemValidators'] ?? '[]';

  String? get annotationType =>
      (annotation?.type as ParameterizedType?)?.typeArguments.first.toString();

  bool get annotationTyped {
    return annotationType != null &&
        annotationType != 'dynamic' &&
        annotationType != 'Never';
  }

  Element get fieldElement => field;

  ConstructorElement get constructorElement =>
      fieldElement.enclosingElement3 as ConstructorElement;

  // Map<String, String> get annotationParams {
  //   final result = <String, String>{};
  //   try {
  //     if (annotation != null) {
  //       for (final meta in fieldElement.metadata) {
  //         final obj = meta.computeConstantValue()!;
  //
  //         if (typeChecker.isExactlyType(obj.type!) == true) {
  //           final argumentList = (meta as ElementAnnotationImpl)
  //               .annotationAst
  //               .arguments as ArgumentListImpl;
  //           for (var argument in argumentList.arguments) {
  //             final argumentNamedExpression = argument as NamedExpressionImpl;
  //             result.addEntries(
  //               [
  //                 MapEntry(
  //                   argumentNamedExpression.name.label.toSource(),
  //                   argumentNamedExpression.expression.toSource(),
  //                 ),
  //               ],
  //             );
  //           }
  //         }
  //       }
  //     }
  //
  //     return result;
  //   } catch (e) {
  //     return result;
  //   }
  // }

  String get validators =>
      fieldElement
          .annotationParams(typeChecker)[FormElementGenerator.validatorKey] ??
      '[]';

  String get itemAsyncValidators =>
      fieldElement.annotationParams(typeChecker)['itemAsyncValidators'] ?? '[]';

  String get asyncValidators =>
      fieldElement.annotationParams(typeChecker)['asyncValidators'] ?? '[]';

  int get asyncValidatorsDebounceTime =>
      annotation?.getField('asyncValidatorsDebounceTime')?.toIntValue() ?? 250;

  int get itemAsyncValidatorsDebounceTime =>
      annotation?.getField('itemAsyncValidatorsDebounceTime')?.toIntValue() ??
      250;

  bool get itemDisabled =>
      annotation?.getField('itemDisabled')?.toBoolValue() ?? false;

  bool get disabled => annotation?.getField('disabled')?.toBoolValue() ?? false;

  bool get touched => annotation?.getField('touched')?.toBoolValue() ?? false;

  String element();
}
