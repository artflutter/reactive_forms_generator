import 'package:flutter/material.dart';

class Naming {
  final String name;

  const Naming(this.name);

  String get item => name;

  Key get itemKey => Key(name);

  String itemIndex(int i) => '$name $i';

  String itemError(int i, String message) => '${itemIndex(i)} $message';

  Key itemIndexKey(int i) => Key('$name $i');
}
