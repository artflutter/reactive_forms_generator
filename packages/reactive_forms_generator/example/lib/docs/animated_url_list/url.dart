import 'package:example/helpers.dart';
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
    @FormControlAnnotation<String>(validators: [requiredValidator])
        this.label = '',
    @FormControlAnnotation<String>(validators: [requiredValidator])
        this.url = '',
  });
}
