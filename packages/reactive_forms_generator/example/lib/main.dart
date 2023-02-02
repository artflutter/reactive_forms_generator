import 'package:example/docs/animated_url_list/url_list_form.dart';
import 'package:example/docs/array_nullable/array_nullable_form.dart';
import 'package:example/docs/delivery_list/delivery_point_route_form.dart';
import 'package:example/docs/delivery_list/delivery_route_form.dart';
import 'package:example/docs/freezed/freezed_form.dart';
import 'package:example/docs/generic/generic_form.dart';
import 'package:example/docs/group/group_form.dart';
import 'package:example/docs/login/login_form.dart';
import 'package:example/docs/login_extended/login_extended_form.dart';
import 'package:example/docs/login_extended_nullable/login_extended_nullable_form.dart';
import 'package:example/docs/mailing_list/mailing_list_form.dart';
import 'package:example/docs/user_profile/user_profile_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        Routes.loginExtended: (_) => const LoginExtendedFormWidget(),
        Routes.login: (_) => const LoginFormWidget(),
        Routes.mailingList: (_) => const MailingListFormWidget(),
        Routes.userProfile: (_) => const UserProfileFormWidget(),
        Routes.loginExtendedNullable: (_) =>
            const LoginExtendedNullableFormWidget(),
        Routes.arrayNullable: (_) => ArrayNullableFormWidget(),
        Routes.group: (_) => const GroupFormWidget(),
        Routes.deliveryList: (_) => const DeliveryListFormWidget(),
        Routes.deliveryPoint: (_) => const DeliveryPointWidget(),
        Routes.freezed: (_) => const FreezedFormWidget(),
        Routes.generic: (_) => const GenericFormWidget(),
        Routes.animatedUrlList: (_) => const UrlListForm(),
      },
      home: const UrlListForm(),
    );
  }
}

class Routes {
  static const loginExtended = '/login-extended';

  static const login = '/login';

  static const mailingList = '/mailing-list';

  static const userProfile = '/user-profile';

  static const group = '/group';

  static const deliveryList = '/delivery-list';

  static const deliveryPoint = '/delivery-point';

  static const loginExtendedNullable = '/login-extended-nullable';

  static const arrayNullable = '/array-nullable';

  static const freezed = '/freezed';

  static const generic = '/generic';

  static const animatedUrlList = '/animated-url-list';
}
