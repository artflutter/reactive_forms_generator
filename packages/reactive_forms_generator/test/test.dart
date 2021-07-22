// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'login.dart';
//
// // **************************************************************************
// // ReactiveFormsGenerator
// // **************************************************************************
//
// class LoginFormBuilder extends StatefulWidget {
//   LoginFormBuilder(
//       {Key? key, required this.model, this.child, required this.builder})
//       : super(key: key);
//
//   final Login model;
//
//   final Widget? child;
//
//   final Widget Function(
//       BuildContext context, LoginForm formModel, Widget? child) builder;
//
//   @override
//   _LoginFormBuilderState createState() => _LoginFormBuilderState();
// }
//
// class _LoginFormBuilderState extends State<LoginFormBuilder> {
//   late LoginForm _form;
//
//   @override
//   void initState() {
//     _form = LoginForm(widget.model);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReactiveFormBuilder(
//       child: widget.child,
//       form: () => _form.form,
//       builder: (context, form, child) {
//         return widget.builder(context, _form, widget.child);
//       },
//     );
//   }
// }
//
// class LoginForm {
//   LoginForm(Login login) {
//     form = fb.group(_formElements(login));
//   }
//
//   static String email = "email";
//
//   static String password = "password";
//
//   static String categories = "categories";
//
//   late FormGroup form;
//
//   String get emailValue => form.value[LoginForm.email] as String;
//   String get passwordValue => form.value[LoginForm.password] as String;
//   List<String> get categoriesValue =>
//       form.value[LoginForm.categories] as List<String>;
//   bool get containsEmail => form.contains(LoginForm.email);
//   bool get containsPassword => form.contains(LoginForm.password);
//   bool get containsCategories => form.contains(LoginForm.categories);
//   Map<String, Object> _formElements(Login login) => {
//         LoginForm.email: FormControl<String>(
//             value: login.email, validators: [], asyncValidators: []),
//         LoginForm.password: FormControl<String>(
//             value: login.password, validators: [], asyncValidators: []),
//         LoginForm.categories: FormArray<String>(login.categories,
//             validators: [], asyncValidators: [])
//       };
// }
