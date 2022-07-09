import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'mailing_list.gform.dart';

@ReactiveFormAnnotation()
class MailingList {
  final List<String?> emailList;

  MailingList({
    @FormArrayAnnotation(
      validators: [
        mailingListValidator,
      ],
      itemValidators: [
        emailValidator,
      ],
    )
        this.emailList = const [],
  });
}
