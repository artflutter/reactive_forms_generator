import 'package:example/docs/login/labels.dart';
import 'package:example/docs/login/login.dart';
import 'package:example/docs/login/login_form.dart';
import 'package:example/docs/login/mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginForm Tests', () {
    testWidgets('Initial state', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginFormWidget()));
      await tester.pumpAndSettle();

      expect(find.text(email.name), findsOneWidget);
      expect(find.text(password.name), findsOneWidget);

      expect(find.text(submitRaw.name), findsOneWidget);
      expect(find.text(submit.name), findsOneWidget);
      expect(find.text(updateModel.name), findsOneWidget);
      expect(find.text(reset.name), findsOneWidget);
    });

    testWidgets('Submit raw and reset', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginFormWidget()));
      await tester.pumpAndSettle();

      final submitRawButton = find.text(submitRaw.name);
      final resetButton = find.text(reset.name);

      await tester.tap(submitRawButton);
      await tester.pumpAndSettle();

      expect(find.text(errorRequired), findsNWidgets(2));

      await tester.tap(resetButton);
      await tester.pumpAndSettle();

      expect(find.text(errorRequired), findsNothing);
    });

    testWidgets('Input email and password', (WidgetTester tester) async {
      late Login testModel;

      await tester.pumpWidget(
        MaterialApp(
          home: LoginFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byKey(email.itemKey), mockedLogin.email);

      await tester.enterText(
        find.byKey(password.itemKey),
        mockedLogin.password,
      );

      final submitRawButton = find.text(submitRaw.name);
      final resetButton = find.text(reset.name);

      await tester.tap(submitRawButton);
      await tester.pumpAndSettle();

      expect(testModel, equals(mockedLogin));

      expect(find.text(errorMustMatch), findsOneWidget);

      await tester.tap(resetButton);
      await tester.pumpAndSettle();

      await tester.tap(submitRawButton);
      await tester.pumpAndSettle();

      expect(testModel, equals(mockedLoginEmpty));
    });
  });
}
