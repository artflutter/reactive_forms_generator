import 'package:example/docs/nested/nested.dart';
import 'package:example/docs/nested/nested_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const model = Nested(
  groupList: [
    Group(
      id: 'id_1',
      subGroupList: [
        SubGroup(
          id: 'sub_id_1',
        ),
      ],
    ),
  ],
);

void main() {
  group('NestedForm Tests', () {
    testWidgets(
      'Add item independently',
      (WidgetTester tester) async {
        late Nested testModel;

        await tester.pumpWidget(
          MaterialApp(
            home: NestedFormWidget(
              onChange: (model) => testModel = model,
            ),
          ),
        );
        await tester.pumpAndSettle();

        await tester.tap(find.text('Add item independently'));
        await tester.pumpAndSettle();

        expect(testModel, equals(model));
      },
    );

    testWidgets(
      'Add item',
      (WidgetTester tester) async {
        late Nested testModel;

        await tester.pumpWidget(
          MaterialApp(
            home: NestedFormWidget(
              onChange: (model) => testModel = model,
            ),
          ),
        );
        await tester.pumpAndSettle();

        await tester.tap(find.text('Add item'));
        await tester.pumpAndSettle();

        expect(testModel, equals(model));
      },
    );
  });
}
