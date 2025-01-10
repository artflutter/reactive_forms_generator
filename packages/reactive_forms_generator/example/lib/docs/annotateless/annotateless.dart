import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'annotateless.gform.dart';

@Rf(output: false)
class Annotateless extends Equatable {
  final String email;

  final String password;

  const Annotateless({
    @RfControl() this.email = "",
    this.password = "",
  });

  @override
  List<Object?> get props => [email, password];
}
