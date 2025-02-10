import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'annotateless_output.gform.dart';

@Rf(output: true)
class AnnotatelessO extends Equatable {
  final String email;

  final String password;

  const AnnotatelessO({
    @RfControl() this.email = "",
    this.password = "",
  });

  @override
  List<Object?> get props => [email, password];
}
