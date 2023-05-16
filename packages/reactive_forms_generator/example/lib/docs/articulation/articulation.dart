import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'articulation.gform.dart';

@ReactiveFormAnnotation()
class Articulation {
  Articulation({
    required this.createdDate,
    @FormControlAnnotation() required this.patientName,
    @FormControlAnnotation() this.id,
    // @FormArrayAnnotation() required this.events,
    @FormArrayAnnotation() required this.test,
  });

  DateTime createdDate;
  int? id;
  String patientName;
  List<Test<dynamic, dynamic, dynamic>> test;
}

@FormGroupAnnotation()
class Test<A, B, C> {
  Test({
    @FormControlAnnotation() required this.id,
    required this.test,
  });

  int id;
  A test;
}

@ReactiveFormAnnotation()
@FormGroupAnnotation()
class Some {
  Some({
    @FormControlAnnotation() required this.some,
  });

  String some;
}
