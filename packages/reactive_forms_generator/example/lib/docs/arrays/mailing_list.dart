import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class MailingList {
  @FormArrayAnnotation(
    validators: const [
      mailingListValidator,
    ],
    itemValidators: [
      emailValidator,
    ],
  )
  final List<String?> emailList;

  MailingList({
    this.emailList = const [],
  });
}
