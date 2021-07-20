// class LoginFormBuilder extends StatefulWidget {
//   LoginFormBuilder(
//       {Key? key,
//       required Login model,
//       Widget? child,
//       required Widget Function(
//               BuildContext context, LoginForm formModel, Widget? child)
//           builder});
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
//     ReactiveFormBuilder(
//       child: widget.child,
//       form: () => _form.form,
//       builder: (context, form, child) {
//         return widget.builder(context, _form, widget.child);
//       },
//     );
//   }
// }
