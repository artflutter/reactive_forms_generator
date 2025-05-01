// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_generics_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailsO<P extends Product, C extends Cart> {
  @RfControl()
  String? get description;

  @Rf(output: false)
  IdO<P, C>? get id;

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDetailsOCopyWith<P, C, ProductDetailsO<P, C>> get copyWith =>
      _$ProductDetailsOCopyWithImpl<P, C, ProductDetailsO<P, C>>(
          this as ProductDetailsO<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDetailsO<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetailsO<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ProductDetailsOCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $ProductDetailsOCopyWith(ProductDetailsO<P, C> value,
          $Res Function(ProductDetailsO<P, C>) _then) =
      _$ProductDetailsOCopyWithImpl;

  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) IdO<P, C>? id});

  $IdOCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsOCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements $ProductDetailsOCopyWith<P, C, $Res> {
  _$ProductDetailsOCopyWithImpl(this._self, this._then);

  final ProductDetailsO<P, C> _self;
  final $Res Function(ProductDetailsO<P, C>) _then;

  /// Create a copy of ProductDetailsO
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
              as IdO<P, C>?,
    ));
  }

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdOCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc

class _ProductDetailsO<P extends Product, C extends Cart>
    extends ProductDetailsO<P, C> {
  _ProductDetailsO({@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final IdO<P, C>? id;

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDetailsOCopyWith<P, C, _ProductDetailsO<P, C>> get copyWith =>
      __$ProductDetailsOCopyWithImpl<P, C, _ProductDetailsO<P, C>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsO<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetailsO<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ProductDetailsOCopyWith<P extends Product,
    C extends Cart, $Res> implements $ProductDetailsOCopyWith<P, C, $Res> {
  factory _$ProductDetailsOCopyWith(_ProductDetailsO<P, C> value,
          $Res Function(_ProductDetailsO<P, C>) _then) =
      __$ProductDetailsOCopyWithImpl;

  @override
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) IdO<P, C>? id});

  @override
  $IdOCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$ProductDetailsOCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements _$ProductDetailsOCopyWith<P, C, $Res> {
  __$ProductDetailsOCopyWithImpl(this._self, this._then);

  final _ProductDetailsO<P, C> _self;
  final $Res Function(_ProductDetailsO<P, C>) _then;

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_ProductDetailsO<P, C>(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdO<P, C>?,
    ));
  }

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdOCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc
mixin _$IdO<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName;

  @RfControl()
  String? get name;

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IdOCopyWith<P, C, IdO<P, C>> get copyWith =>
      _$IdOCopyWithImpl<P, C, IdO<P, C>>(this as IdO<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IdO<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'IdO<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class $IdOCopyWith<P extends Product, C extends Cart, $Res> {
  factory $IdOCopyWith(IdO<P, C> value, $Res Function(IdO<P, C>) _then) =
      _$IdOCopyWithImpl;

  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdOCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements $IdOCopyWith<P, C, $Res> {
  _$IdOCopyWithImpl(this._self, this._then);

  final IdO<P, C> _self;
  final $Res Function(IdO<P, C>) _then;

  /// Create a copy of IdO
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

class _IdO<P extends Product, C extends Cart> extends IdO<P, C> {
  _IdO({@RfControl() this.companyName, @RfControl() this.name}) : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IdOCopyWith<P, C, _IdO<P, C>> get copyWith =>
      __$IdOCopyWithImpl<P, C, _IdO<P, C>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IdO<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'IdO<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$IdOCopyWith<P extends Product, C extends Cart, $Res>
    implements $IdOCopyWith<P, C, $Res> {
  factory _$IdOCopyWith(_IdO<P, C> value, $Res Function(_IdO<P, C>) _then) =
      __$IdOCopyWithImpl;

  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$IdOCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements _$IdOCopyWith<P, C, $Res> {
  __$IdOCopyWithImpl(this._self, this._then);

  final _IdO<P, C> _self;
  final $Res Function(_IdO<P, C>) _then;

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_IdO<P, C>(
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

/// @nodoc
mixin _$ProductDetailsOOutput<P extends Product, C extends Cart> {
  @RfControl()
  String? get description;

  @Rf(output: false)
  IdOOutput<P, C>? get id;

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductDetailsOOutputCopyWith<P, C, ProductDetailsOOutput<P, C>>
      get copyWith => _$ProductDetailsOOutputCopyWithImpl<P, C,
              ProductDetailsOOutput<P, C>>(
          this as ProductDetailsOOutput<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProductDetailsOOutput<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetailsOOutput<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ProductDetailsOOutputCopyWith<P extends Product,
    C extends Cart, $Res> {
  factory $ProductDetailsOOutputCopyWith(ProductDetailsOOutput<P, C> value,
          $Res Function(ProductDetailsOOutput<P, C>) _then) =
      _$ProductDetailsOOutputCopyWithImpl;

  @useResult
  $Res call(
      {@RfControl() String? description,
      @Rf(output: false) IdOOutput<P, C>? id});

  $IdOOutputCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsOOutputCopyWithImpl<P extends Product, C extends Cart,
    $Res> implements $ProductDetailsOOutputCopyWith<P, C, $Res> {
  _$ProductDetailsOOutputCopyWithImpl(this._self, this._then);

  final ProductDetailsOOutput<P, C> _self;
  final $Res Function(ProductDetailsOOutput<P, C>) _then;

  /// Create a copy of ProductDetailsOOutput
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
              as IdOOutput<P, C>?,
    ));
  }

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOOutputCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdOOutputCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc

class _ProductDetailsOOutput<P extends Product, C extends Cart>
    extends ProductDetailsOOutput<P, C> {
  _ProductDetailsOOutput(
      {@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final IdOOutput<P, C>? id;

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductDetailsOOutputCopyWith<P, C, _ProductDetailsOOutput<P, C>>
      get copyWith => __$ProductDetailsOOutputCopyWithImpl<P, C,
          _ProductDetailsOOutput<P, C>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsOOutput<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  @override
  String toString() {
    return 'ProductDetailsOOutput<$P, $C>(description: $description, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ProductDetailsOOutputCopyWith<
    P extends Product,
    C extends Cart,
    $Res> implements $ProductDetailsOOutputCopyWith<P, C, $Res> {
  factory _$ProductDetailsOOutputCopyWith(_ProductDetailsOOutput<P, C> value,
          $Res Function(_ProductDetailsOOutput<P, C>) _then) =
      __$ProductDetailsOOutputCopyWithImpl;

  @override
  @useResult
  $Res call(
      {@RfControl() String? description,
      @Rf(output: false) IdOOutput<P, C>? id});

  @override
  $IdOOutputCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$ProductDetailsOOutputCopyWithImpl<P extends Product, C extends Cart,
    $Res> implements _$ProductDetailsOOutputCopyWith<P, C, $Res> {
  __$ProductDetailsOOutputCopyWithImpl(this._self, this._then);

  final _ProductDetailsOOutput<P, C> _self;
  final $Res Function(_ProductDetailsOOutput<P, C>) _then;

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_ProductDetailsOOutput<P, C>(
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdOOutput<P, C>?,
    ));
  }

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOOutputCopyWith<P, C, $Res>? get id {
    if (_self.id == null) {
      return null;
    }

    return $IdOOutputCopyWith<P, C, $Res>(_self.id!, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc
mixin _$IdOOutput<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName;

  @RfControl()
  String? get name;

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IdOOutputCopyWith<P, C, IdOOutput<P, C>> get copyWith =>
      _$IdOOutputCopyWithImpl<P, C, IdOOutput<P, C>>(
          this as IdOOutput<P, C>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IdOOutput<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'IdOOutput<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class $IdOOutputCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $IdOOutputCopyWith(
          IdOOutput<P, C> value, $Res Function(IdOOutput<P, C>) _then) =
      _$IdOOutputCopyWithImpl;

  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdOOutputCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements $IdOOutputCopyWith<P, C, $Res> {
  _$IdOOutputCopyWithImpl(this._self, this._then);

  final IdOOutput<P, C> _self;
  final $Res Function(IdOOutput<P, C>) _then;

  /// Create a copy of IdOOutput
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

class _IdOOutput<P extends Product, C extends Cart> extends IdOOutput<P, C> {
  _IdOOutput({@RfControl() this.companyName, @RfControl() this.name})
      : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IdOOutputCopyWith<P, C, _IdOOutput<P, C>> get copyWith =>
      __$IdOOutputCopyWithImpl<P, C, _IdOOutput<P, C>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IdOOutput<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  @override
  String toString() {
    return 'IdOOutput<$P, $C>(companyName: $companyName, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$IdOOutputCopyWith<P extends Product, C extends Cart,
    $Res> implements $IdOOutputCopyWith<P, C, $Res> {
  factory _$IdOOutputCopyWith(
          _IdOOutput<P, C> value, $Res Function(_IdOOutput<P, C>) _then) =
      __$IdOOutputCopyWithImpl;

  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$IdOOutputCopyWithImpl<P extends Product, C extends Cart, $Res>
    implements _$IdOOutputCopyWith<P, C, $Res> {
  __$IdOOutputCopyWithImpl(this._self, this._then);

  final _IdOOutput<P, C> _self;
  final $Res Function(_IdOOutput<P, C>) _then;

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_IdOOutput<P, C>(
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

// dart format on
