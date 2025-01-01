import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'mailing_list_output.gform.dart';

@Rf(output: true)
class MailingListO {
  final List<String?> emailList;

  MailingListO({
    @RfArray(
      validators: [MailingListValidator()],
      itemValidators: [EmailValidator()],
    )
    this.emailList = const [],
  });
}
