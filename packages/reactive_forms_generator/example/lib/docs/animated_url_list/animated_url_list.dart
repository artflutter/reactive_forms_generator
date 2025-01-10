import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'animated_url_list.gform.dart';

@Rf(output: false)
class AnimatedUrlList {
  final List<UrlEntity> urlList;

  AnimatedUrlList({@RfArray() this.urlList = const []});
}

@RfGroup()
class UrlEntity {
  final String label;
  final String url;

  UrlEntity({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.label = "",
    @RfControl(validators: [
      RequiredValidator(),
    ])
    this.url = "",
  });
}
