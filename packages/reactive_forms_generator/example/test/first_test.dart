import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/docs/delivery_list/delivery_route_form.dart';
import 'package:example/docs/delivery_list/labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const model = DeliveryList(
  deliveryList: [
    DeliveryPoint(name: 'hi', address: Address(street: 'fi')),
  ],
  clientList: [],
);

void main() {
  group('DeliveryListForm Tests', () {
    testWidgets(
      'Initial state',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: DeliveryListFormWidget(),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text(submit.name), findsOneWidget);
        final addButton = find.text(add.name);

        expect(addButton, findsOneWidget);
      },
    );

    testWidgets(
      'Add one item',
      (WidgetTester tester) async {
        late DeliveryList testModel;
        await tester.pumpWidget(
          MaterialApp(
            home: DeliveryListFormWidget(
              onChange: (model) => testModel = model,
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text(submit.name), findsOneWidget);
        final addButton = find.text(add.name);

        expect(addButton, findsOneWidget);
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

        await tester.tap(find.text(submit.name));
        await tester.pump();

        expect(testModel, equals(model));
      },
    );
  });
}
