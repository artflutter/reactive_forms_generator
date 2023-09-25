import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';

const _formChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/reactive_form_annotation.dart#ReactiveFormAnnotation',
);

const _formCheckerRf = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/reactive_form_annotation.dart#Rf',
);

const formControlChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_control_annotation.dart#FormControlAnnotation',
);

const formControlCheckerRf = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_control_annotation.dart#RfControl',
);

const formArrayChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_array_annotation.dart#FormArrayAnnotation',
);

const formArrayCheckerRf = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_array_annotation.dart#RfArray',
);

const formGroupChecker = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_group_annotation.dart#FormGroupAnnotation',
);

const formGroupCheckerRf = TypeChecker.fromUrl(
  'package:reactive_forms_annotations/src/form_group_annotation.dart#RfGroup',
);

extension LibraryReaderExt on LibraryReader {
  Iterable<AnnotatedElement> get rfAnnotated {
    return annotatedWith(_formChecker);
  }
}

extension ElementRfExt on Element {
  bool get hasRfGroupAnnotation {
    return formGroupChecker.hasAnnotationOfExact(this) ||
        formGroupCheckerRf.hasAnnotationOfExact(this);
  }
}

extension ParameterElementAnnotationExt on ParameterElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this) ||
        _formCheckerRf.hasAnnotationOfExact(this);
  }

  bool get hasRfArrayAnnotation {
    return formArrayChecker.hasAnnotationOfExact(
          this,
          throwOnUnresolved: false,
        ) ||
        formArrayCheckerRf.hasAnnotationOfExact(
          this,
          throwOnUnresolved: false,
        );
  }
}

extension FieldElementAnnotationExt on FieldElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this) ||
        _formCheckerRf.hasAnnotationOfExact(this);
  }
}

extension ClassElementAnnotationExt on ClassElement {
  bool get hasRfAnnotation {
    return _formChecker.hasAnnotationOfExact(this) ||
        _formCheckerRf.hasAnnotationOfExact(this);
  }

  DartObject? get rfAnnotation {
    return _formChecker.firstAnnotationOfExact(this) ??
        _formCheckerRf.firstAnnotationOfExact(this);
  }
}
