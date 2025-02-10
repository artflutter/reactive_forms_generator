import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'product_output.freezed.dart';

part 'product_output.gform.dart';

@freezed
@Rf(output: true)
class ProductDetailsO<P extends Product, C extends Cart>
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
class IdO<P extends Product, C extends Cart> with _$IdO<P, C> {
  factory IdO({
    @RfControl() String? companyName,
    @RfControl() String? name,
  }) = _IdO;

  IdO._();
}

@freezed
class Product with _$Product {
  const factory Product({
    String? companyName,
    String? name,
  }) = _Product;

  const Product._();
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    Product? product,
    String? description,
  }) = _Cart;

  const Cart._();
}
