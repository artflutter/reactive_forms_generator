// ignore_for_file: implementation_imports
import 'package:reactive_forms/src/validators/required_validator.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'url.gform.dart';

@ReactiveFormAnnotation()
class Url {
  final List<UrlEntity> urlList;

  Url({@FormArrayAnnotation() this.urlList = const []});
}

@FormGroupAnnotation()
class UrlEntity {
  final String label;
  final String url;

  UrlEntity({
    @FormControlAnnotation(validators: [
      RequiredValidator(),
    ])
    this.label = '',
    @FormControlAnnotation(validators: [
      RequiredValidator(),
    ])
    this.url = '',
  });
}
