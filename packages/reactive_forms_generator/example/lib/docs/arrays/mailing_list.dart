import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class MailingList {
  final List<String?> emailList;

  MailingList({
    @FormArrayAnnotation(
      validators: const [
        mailingListValidator,
      ],
      itemValidators: [
        emailValidator,
      ],
    )
        this.emailList = const [],
  });
}
