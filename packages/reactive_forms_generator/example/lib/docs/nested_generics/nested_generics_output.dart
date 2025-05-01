import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'nested_generics_output.freezed.dart';

part 'nested_generics_output.gform.dart';

@freezed
@Rf(output: true)
abstract class ProductDetailsO<P extends Product, C extends Cart>
    with _$ProductDetailsO<P, C> {
  factory ProductDetailsO({
    @RfControl() String? description,
    @Rf(output: false) IdO<P, C>? id,
  }) = _ProductDetailsO;

  ProductDetailsO._();
}

@freezed
@Rf(output: false)
@RfGroup()
abstract class IdO<P extends Product, C extends Cart> with _$IdO<P, C> {
  factory IdO({
    @RfControl() String? companyName,
    @RfControl() String? name,
  }) = _IdO;

  IdO._();
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    String? companyName,
    String? name,
  }) = _Product;

  const Product._();
}

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    Product? product,
    String? description,
  }) = _Cart;

  const Cart._();
}
