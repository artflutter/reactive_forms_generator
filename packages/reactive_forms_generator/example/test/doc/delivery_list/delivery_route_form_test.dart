import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/docs/delivery_list/delivery_route_form.dart';
import 'package:example/docs/delivery_list/labels.dart';
import 'package:example/docs/delivery_list/mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const model = DeliveryList(
  deliveryList: [mockedDeliveryPoint1],
  clientList: [],
);

const modelDouble = DeliveryList(
  deliveryList: [mockedDeliveryPoint1, mockedDeliveryPoint2],
  clientList: [],
);

const patchedModel = DeliveryList(
  deliveryList: [patchedDeliveryPoint],
  clientList: [],
);

const insertedModel = DeliveryList(
  deliveryList: [
    updatedDeliveryPoint1,
    insertedDeliveryPoint,
    updatedDeliveryPoint2,
  ],
  clientList: [],
);

const updatedModel = DeliveryList(
  deliveryList: [updatedDeliveryPoint1, updatedDeliveryPoint2],
  clientList: [],
);

const emptyModel = DeliveryList(deliveryList: [], clientList: []);

void main() {
  group('DeliveryListForm Tests', () {
    testWidgets('Initial state', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: DeliveryListFormWidget()),
      );
      await tester.pumpAndSettle();

      expect(find.text(submit.name), findsOneWidget);
      expect(find.text(patch.name), findsOneWidget);
      expect(find.text(update.name), findsOneWidget);
      expect(find.text(empty.name), findsOneWidget);
      expect(find.text(clear.name), findsOneWidget);
      expect(find.text(insertAt.itemIndex(1)), findsOneWidget);
      final addButton = find.text(add.name);

      expect(addButton, findsOneWidget);
    });

    testWidgets('Add/remove one item', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);
      final addButton = find.text(add.name);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final removeItemButton = find.text(remove.itemIndex(0));
      expect(removeItemButton, findsOneWidget);

      await tester.enterText(
        find.byKey(name.itemIndexKey(0)),
        model.deliveryList.first.name,
      );

      await tester.enterText(
        find.byKey(street.itemIndexKey(0)),
        model.deliveryList.first.address?.street ?? '',
      );
      expect(
        find.text(model.deliveryList.first.address?.street ?? ''),
        findsOneWidget,
      );

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(model));

      await tester.tap(removeItemButton);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));
    });

    testWidgets('Add one item and empty', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);
      final addButton = find.text(add.name);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final emptyDeliveryListButton = find.text(empty.name);
      expect(emptyDeliveryListButton, findsOneWidget);

      await tester.enterText(
        find.byKey(name.itemIndexKey(0)),
        model.deliveryList.first.name,
      );

      await tester.enterText(
        find.byKey(street.itemIndexKey(0)),
        model.deliveryList.first.address?.street ?? '',
      );
      expect(
        find.text(model.deliveryList.first.address?.street ?? ''),
        findsOneWidget,
      );

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(model));

      await tester.tap(emptyDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));
    });

    testWidgets('Add one item and patch values', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);
      final addButton = find.text(add.name);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final patchDeliveryListButton = find.text(patch.name);
      expect(patchDeliveryListButton, findsOneWidget);

      // fill in first item
      await tester.enterText(
        find.byKey(name.itemIndexKey(0)),
        model.deliveryList.first.name,
      );

      await tester.enterText(
        find.byKey(street.itemIndexKey(0)),
        model.deliveryList.first.address?.street ?? '',
      );
      expect(
        find.text(model.deliveryList.first.address?.street ?? ''),
        findsOneWidget,
      );

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(model));

      await tester.tap(patchDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(patchedModel));
    });

    testWidgets('Add two items and update values', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);
      final addButton = find.text(add.name);
      await tester.tap(addButton);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final updateDeliveryListButton = find.text(update.name);
      expect(updateDeliveryListButton, findsOneWidget);

      // fill in first item
      await tester.enterText(
        find.byKey(name.itemIndexKey(0)),
        modelDouble.deliveryList.first.name,
      );

      await tester.enterText(
        find.byKey(street.itemIndexKey(0)),
        modelDouble.deliveryList.first.address?.street ?? '',
      );
      expect(
        find.text(modelDouble.deliveryList.first.address?.street ?? ''),
        findsOneWidget,
      );

      // fill in second item
      await tester.enterText(
        find.byKey(name.itemIndexKey(1)),
        modelDouble.deliveryList[1].name,
      );

      await tester.enterText(
        find.byKey(street.itemIndexKey(1)),
        modelDouble.deliveryList[1].address?.street ?? '',
      );
      expect(
        find.text(modelDouble.deliveryList[1].address?.street ?? ''),
        findsOneWidget,
      );

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(modelDouble));

      await tester.ensureVisible(updateDeliveryListButton);
      await tester.tap(updateDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(updatedModel));
    });

    testWidgets('Update values on empty form', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);

      final updateDeliveryListButton = find.text(update.name);
      expect(updateDeliveryListButton, findsOneWidget);

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));

      await tester.ensureVisible(updateDeliveryListButton);
      await tester.tap(updateDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(updatedModel));
    });

    testWidgets('Patch values on empty form', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);

      final patchDeliveryListButton = find.text(patch.name);
      expect(patchDeliveryListButton, findsOneWidget);

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));

      await tester.ensureVisible(patchDeliveryListButton);
      await tester.tap(patchDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));
    });

    testWidgets('Update values on empty form and insert between them', (
      WidgetTester tester,
    ) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);

      final updateDeliveryListButton = find.text(update.name);
      expect(updateDeliveryListButton, findsOneWidget);

      final insertAtDeliveryListButton = find.text(insertAt.itemIndex(1));
      expect(insertAtDeliveryListButton, findsOneWidget);

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(emptyModel));

      await tester.ensureVisible(updateDeliveryListButton);
      await tester.tap(updateDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(updatedModel));

      await tester.ensureVisible(insertAtDeliveryListButton);
      await tester.tap(insertAtDeliveryListButton);
      await tester.pumpAndSettle();

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(insertedModel));
    });

    testWidgets('Validation', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final addButton = find.text(add.name);
      await tester.ensureVisible(addButton);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);
      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(find.text(name.itemError(0, errorRequired)), findsOneWidget);
      expect(find.text(street.itemError(0, errorRequired)), findsOneWidget);

      await tester.enterText(
        find.byKey(name.itemIndexKey(0)),
        model.deliveryList.first.name,
      );
      await tester.pump();

      expect(find.text(name.itemError(0, errorRequired)), findsNothing);
      expect(find.text(street.itemError(0, errorRequired)), findsOneWidget);

      await tester.enterText(
        find.byKey(street.itemIndexKey(0)),
        model.deliveryList.first.address?.street ?? '',
      );
      await tester.pump();

      expect(find.text(name.itemError(0, errorRequired)), findsNothing);
      expect(find.text(street.itemError(0, errorRequired)), findsNothing);

      await tester.ensureVisible(submitButton);
      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel, equals(model));
    });

    testWidgets('Enable/disable', (WidgetTester tester) async {
      late DeliveryList testModel;
      await tester.pumpWidget(
        MaterialApp(
          home: DeliveryListFormWidget(onChange: (model) => testModel = model),
        ),
      );
      await tester.pumpAndSettle();

      final submitButton = find.text(submit.name);

      final addButton = find.text(add.name);
      await tester.ensureVisible(addButton);
      await tester.tap(addButton);
      await tester.pumpAndSettle();

      final toggleEnableDisableButton = find.byKey(toggleEnableDisable.itemKey);

      final nameTextField = find.byKey(name.itemIndexKey(0));
      final streetTextField = find.byKey(street.itemIndexKey(0));

      await tester.tap(streetTextField);
      await tester.enterText(
        streetTextField,
        model.deliveryList.first.address?.street ?? '',
      );
      FocusManager.instance.primaryFocus?.unfocus();
      await tester.pumpAndSettle();

      await tester.tap(toggleEnableDisableButton);
      await tester.tap(nameTextField);
      await tester.enterText(nameTextField, model.deliveryList.first.name);
      FocusManager.instance.primaryFocus?.unfocus();
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel.deliveryList.isNotEmpty, equals(true));
      expect(testModel.deliveryList.length, equals(1));
      expect(testModel.deliveryList.first.name, '');

      await tester.tap(toggleEnableDisableButton);
      await tester.pumpAndSettle();
      FocusManager.instance.primaryFocus?.unfocus();
      await tester.enterText(nameTextField, model.deliveryList.first.name);
      await tester.pumpAndSettle();

      await tester.tap(submitButton);
      await tester.pump();

      expect(testModel.deliveryList.isNotEmpty, equals(true));
      expect(testModel.deliveryList.length, equals(1));
      expect(testModel.deliveryList.first.name, model.deliveryList.first.name);
    });
  });
}
