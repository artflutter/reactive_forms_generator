import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'mailing_list.gform.dart';

@Rf(output: false)
class MailingList {
  final List<String?> emailList;

  MailingList({
    @RfArray(
      validators: [MailingListValidator()],
      itemValidators: [EmailValidator()],
    )
    this.emailList = const [],
  });
}
