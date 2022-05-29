// import 'package:reflectable/reflectable.dart';
//
// class Reflector extends Reflectable {
//   const Reflector()
//       : super(invokingCapability); // Request the capability to invoke methods.
// }
//
// const reflector = const Reflector();
//
// @reflector // This annotation enables reflection on A.
// abstract class Validator<T> {
//   final String? message;
//
//   const Validator(this.message);
//
//   String get messageKey;
//
//   String get messageValue => message ?? messageKey;
// }

import 'package:reflectable/reflectable.dart';
import 'main.reflectable.dart'; // Import generated code.

// Annotate with this class to enable reflection.
class Reflector extends Reflectable {
  const Reflector()
      : super(invokingCapability); // Request the capability to invoke methods.
}

const reflector = const Reflector();

@reflector // This annotation enables reflection on A.
class A {
  final int a;

  A(this.a);

  greater(int x) => x > a;

  lessEqual(int x) => x <= a;
}
