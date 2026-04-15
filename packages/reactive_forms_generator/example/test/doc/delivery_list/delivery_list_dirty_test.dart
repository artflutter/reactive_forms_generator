import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:flutter_test/flutter_test.dart';

DeliveryListForm buildForm(DeliveryList model) => DeliveryListForm(
  DeliveryListForm.formElements(model),
  null,
  null,
  initialModel: model,
);

const seed = DeliveryList(
  deliveryList: [
    DeliveryPoint(name: 'n1', address: Address(street: 's1', city: 'c1')),
    DeliveryPoint(name: 'n2', address: Address(street: 's2', city: 'c2')),
  ],
  clientList: [],
);

void main() {
  group('DeliveryList hasChanged semantics', () {
    test('fresh form is clean at every level', () {
      final f = buildForm(seed);

      expect(f.hasChanged, isFalse);
      expect(f.deliveryListDeliveryPointForm[0].hasChanged, isFalse);
      expect(
        f.deliveryListDeliveryPointForm[0].addressForm.hasChanged,
        isFalse,
      );
      expect(f.deliveryListDeliveryPointForm[1].hasChanged, isFalse);
    });

    test('editing a nested street flips root + item + address', () {
      final f = buildForm(seed);

      f.deliveryListDeliveryPointForm[0].addressForm.streetControl.updateValue(
        'EDITED',
      );

      expect(f.hasChanged, isTrue);
      expect(f.deliveryListDeliveryPointForm[0].hasChanged, isTrue);
      expect(
        f.deliveryListDeliveryPointForm[0].addressForm.hasChanged,
        isTrue,
      );
      expect(f.deliveryListDeliveryPointForm[1].hasChanged, isFalse);
      expect(
        f.deliveryListDeliveryPointForm[1].addressForm.hasChanged,
        isFalse,
      );
    });

    test('restoring the edited value returns to clean', () {
      final f = buildForm(seed);
      final address = f.deliveryListDeliveryPointForm[0].addressForm;

      address.streetControl.updateValue('EDITED');
      expect(f.hasChanged, isTrue);

      address.streetControl.updateValue('s1');
      expect(f.hasChanged, isFalse);
      expect(address.hasChanged, isFalse);
    });

    test('clearing a nullable String control (null seed) returns to clean', () {
      final f = buildForm(
        const DeliveryList(
          deliveryList: [DeliveryPoint(name: 'x')], // address null
        ),
      );
      final address = f.deliveryListDeliveryPointForm[0].addressForm;

      expect(f.hasChanged, isFalse);

      address.streetControl.updateValue('X');
      expect(f.hasChanged, isTrue);

      address.streetControl.updateValue(null);
      expect(
        f.hasChanged,
        isFalse,
        reason:
            'restoring a nullable String to its seeded null must flip back '
            'to clean',
      );
    });

    test('toggling disabled is not a value change', () {
      final f = buildForm(seed);

      f.deliveryListDeliveryPointForm[0].toggleDisabled();
      expect(f.hasChanged, isFalse);

      f.deliveryListDeliveryPointForm[0].toggleDisabled();
      expect(f.hasChanged, isFalse);
    });

    test('adding an item flips root dirty (structural change)', () {
      final f = buildForm(seed);

      f.addDeliveryListItem(
        const DeliveryPoint(
          name: 'n3',
          address: Address(street: 's3', city: 'c3'),
        ),
      );

      expect(f.hasChanged, isTrue);
      // The two pre-existing items must stay clean.
      expect(f.deliveryListDeliveryPointForm[0].hasChanged, isFalse);
      expect(f.deliveryListDeliveryPointForm[1].hasChanged, isFalse);
      // The new item has no baseline slice, so it is dirty.
      expect(f.deliveryListDeliveryPointForm[2].hasChanged, isTrue);
    });

    test('adding 3 empty items flips root dirty', () {
      final f = buildForm(seed);

      for (var i = 0; i < 3; i++) {
        f.addDeliveryListItem(const DeliveryPoint());
      }

      expect(f.hasChanged, isTrue);
    });

    test('removing the last item flips root dirty', () {
      final f = buildForm(seed);

      f.removeDeliveryListItemAtIndex(1);

      expect(f.hasChanged, isTrue);
      expect(f.deliveryListDeliveryPointForm[0].hasChanged, isFalse);
    });

    test('commitInitial after edit returns everything to clean', () {
      final f = buildForm(seed);

      f.deliveryListDeliveryPointForm[0].nameControl.updateValue('edited');
      f.addDeliveryListItem(
        const DeliveryPoint(name: 'n3', address: Address(street: 's3')),
      );

      expect(f.hasChanged, isTrue);

      f.commitInitial();

      expect(f.hasChanged, isFalse);
      expect(f.deliveryListDeliveryPointForm[0].hasChanged, isFalse);
      expect(f.deliveryListDeliveryPointForm[1].hasChanged, isFalse);
      expect(f.deliveryListDeliveryPointForm[2].hasChanged, isFalse);
    });

    test('equalsTo at root compares against arbitrary model', () {
      final f = buildForm(seed);

      expect(f.equalsTo(seed), isTrue);
      expect(
        f.equalsTo(
          const DeliveryList(
            deliveryList: [DeliveryPoint(name: 'other')],
            clientList: [],
          ),
        ),
        isFalse,
      );
    });

    test('equalsTo on a nested item compares only its slice', () {
      final f = buildForm(seed);
      final i0 = f.deliveryListDeliveryPointForm[0];

      expect(
        i0.equalsTo(
          const DeliveryPoint(
            name: 'n1',
            address: Address(street: 's1', city: 'c1'),
          ),
        ),
        isTrue,
      );

      f.deliveryListDeliveryPointForm[0].nameControl.updateValue('mutated');
      // Re-read nested form after mutation.
      final i0After = f.deliveryListDeliveryPointForm[0];
      expect(
        i0After.equalsTo(
          const DeliveryPoint(
            name: 'n1',
            address: Address(street: 's1', city: 'c1'),
          ),
        ),
        isFalse,
      );
    });

    test('initialModel getter exposes the typed baseline on the root', () {
      final f = buildForm(seed);
      expect(f.initialModel, equals(seed));

      f.deliveryListDeliveryPointForm[0].nameControl.updateValue('mutated');
      expect(
        f.initialModel,
        equals(seed),
        reason: 'initialModel must stay frozen across edits',
      );

      f.commitInitial();
      expect(
        f.initialModel?.deliveryList.first.name,
        equals('mutated'),
        reason: 'commitInitial must adopt the current rawModel',
      );
    });
  });
}
