// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_generics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetails<P extends Product, C extends Cart> {
  @RfControl()
  String? get description;

  @Rf(output: false)
  Id<P, C>? get id;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDetailsCopyWith<P, C, ProductDetails<P, C>> get copyWith =>
      _$ProductDetailsCopyWithImpl<P, C, ProductDetails<P, C>>(
          this as ProductDetails<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDetails<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetails<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ProductDetailsCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $ProductDetailsCopyWith(ProductDetails<P, C> value,
      $Res Function(ProductDetails<P, C>) _then) = _$ProductDetailsCopyWithImpl;

  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) Id<P, C>? id});

  $IdCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements $ProductDetailsCopyWith<P, C, $Res> {
  _$ProductDetailsCopyWithImpl(this._self, this._then);

  final ProductDetails<P, C> _self;
  final $Res Function(ProductDetails<P, C>) _then;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id<P, C>?,
    ));
  }

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc

class _ProductDetails<P extends Product, C extends Cart>
    extends ProductDetails<P, C> {
  _ProductDetails({@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final Id<P, C>? id;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDetailsCopyWith<P, C, _ProductDetails<P, C>> get copyWith =>
      __$ProductDetailsCopyWithImpl<P, C, _ProductDetails<P, C>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetails<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetails<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ProductDetailsCopyWith<P extends Product, C extends Cart,
    $Res> implements $ProductDetailsCopyWith<P, C, $Res> {
  factory _$ProductDetailsCopyWith(_ProductDetails<P, C> value,
          $Res Function(_ProductDetails<P, C>) _then) =
      __$ProductDetailsCopyWithImpl;

  @override
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) Id<P, C>? id});

  @override
  $IdCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$ProductDetailsCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements _$ProductDetailsCopyWith<P, C, $Res> {
  __$ProductDetailsCopyWithImpl(this._self, this._then);

  final _ProductDetails<P, C> _self;
  final $Res Function(_ProductDetails<P, C>) _then;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_ProductDetails<P, C>(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id<P, C>?,
    ));
  }

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc
mixin _$Id<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName;

  @RfControl()
  String? get name;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IdCopyWith<P, C, Id<P, C>> get copyWith =>
      _$IdCopyWithImpl<P, C, Id<P, C>>(this as Id<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Id<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'Id<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class $IdCopyWith<P extends Product, C extends Cart, $Res> {
  factory $IdCopyWith(Id<P, C> value, $Res Function(Id<P, C>) _then) =
      _$IdCopyWithImpl;

  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements $IdCopyWith<P, C, $Res> {
  _$IdCopyWithImpl(this._self, this._then);

  final Id<P, C> _self;
  final $Res Function(Id<P, C>) _then;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Id<P extends Product, C extends Cart> extends Id<P, C> {
  _Id({@RfControl() this.companyName, @RfControl() this.name}) : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IdCopyWith<P, C, _Id<P, C>> get copyWith =>
      __$IdCopyWithImpl<P, C, _Id<P, C>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Id<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'Id<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$IdCopyWith<P extends Product, C extends Cart, $Res>
    implements $IdCopyWith<P, C, $Res> {
  factory _$IdCopyWith(_Id<P, C> value, $Res Function(_Id<P, C>) _then) =
      __$IdCopyWithImpl;

  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$IdCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements _$IdCopyWith<P, C, $Res> {
  __$IdCopyWithImpl(this._self, this._then);

  final _Id<P, C> _self;
  final $Res Function(_Id<P, C>) _then;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_Id<P, C>(
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Product {
  String? get companyName;

  String? get name;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCopyWith<Product> get copyWith =>
      _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Product &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'Product(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) =
      _$ProductCopyWithImpl;

  @useResult
  $Res call({String? companyName, String? name});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Product extends Product {
  const _Product({this.companyName, this.name}) : super._();

  @override
  final String? companyName;
  @override
  final String? name;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'Product(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) =
      __$ProductCopyWithImpl;

  @override
  @useResult
  $Res call({String? companyName, String? name});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_Product(
      companyName: freezed == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Cart {
  Product? get product;

  String? get description;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartCopyWith<Cart> get copyWith =>
      _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cart &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, description);

  @override
  String toString() {
    return 'Cart(product: $product, description: $description)';
  }
}

/// @nodoc
abstract mixin class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) =
      _$CartCopyWithImpl;

  @useResult
  $Res call({Product? product, String? description});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      product: freezed == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_self.product!, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

/// @nodoc

class _Cart extends Cart {
  const _Cart({this.product, this.description}) : super._();

  @override
  final Product? product;
  @override
  final String? description;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CartCopyWith<_Cart> get copyWith =>
      __$CartCopyWithImpl<_Cart>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cart &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, description);

  @override
  String toString() {
    return 'Cart(product: $product, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) =
      __$CartCopyWithImpl;

  @override
  @useResult
  $Res call({Product? product, String? description});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$CartCopyWithImpl<$Res> implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? product = freezed,
    Object? description = freezed,
  }) {
    return _then(_Cart(
      product: freezed == product
          ? _self.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_self.product!, (value) {
      return _then(_self.copyWith(product: value));
    });
  }
}

// dart format on
