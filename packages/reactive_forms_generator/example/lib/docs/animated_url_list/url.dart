import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'url.gform.dart';

@Rf(output: false)
class Url {
  final List<UrlEntity> urlList;

  Url({@RfArray() this.urlList = const []});
}

@RfGroup()
class UrlEntity {
  final String label;
  final String url;

  UrlEntity({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.label = '',
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.url = '',
  });
}
