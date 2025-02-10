import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'animated_url_list_output.gform.dart';

@Rf(output: true)
class AnimatedUrlLisO {
  final List<UrlEntityO> urlList;

  AnimatedUrlLisO({@RfArray() this.urlList = const []});
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
