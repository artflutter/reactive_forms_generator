import 'package:example/docs/delivery_list/delivery_list.dart';

const patchedDeliveryPoint = DeliveryPoint(
  name: 'patched',
  address: Address(
    city: 'patchedCity',
    street: 'patchedStreet',
  ),
);

const emptyDeliveryPoint = DeliveryPoint();

const updatedDeliveryPoint1 = DeliveryPoint(
  name: 'updated1',
  address: Address(
    city: 'updatedCity1',
    street: 'updatedStreet1',
  ),
);

const updatedDeliveryPoint2 = DeliveryPoint(
  name: 'updated2',
  address: Address(
    city: 'updatedCity2',
    street: 'updatedStreet2',
  ),
);

const insertedDeliveryPoint = DeliveryPoint(
  name: 'inserted',
  address: Address(
    city: 'insertedCity',
    street: 'insertedStreet',
  ),
);

const updatePointList = [
  updatedDeliveryPoint1,
  updatedDeliveryPoint2,
];

const patchPointList = [
  patchedDeliveryPoint,
];
