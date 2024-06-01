import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'url_output.gform.dart';

@Rf()
class UrlO {
  final List<UrlEntityO> urlList;

  UrlO({@RfArray() this.urlList = const []});
}

@RfGroup()
class UrlEntityO {
  final String? label;
  final String? url;

  UrlEntityO({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.label,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.url,
  });
}
