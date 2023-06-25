// ignore_for_file: implementation_imports
import 'package:reactive_forms/src/validators/email_validator.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'mailing_list.gform.dart';

@ReactiveFormAnnotation()
class MailingList {
  final List<String?> emailList;

  MailingList({
    @FormArrayAnnotation(
      validators: [MailingListValidator()],
      itemValidators: [EmailValidator()],
    )
    this.emailList = const [],
  });
}
