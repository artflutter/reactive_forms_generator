// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetails<P extends Product, C extends Cart> {
  @RfControl()
  String? get description => throw _privateConstructorUsedError;
  @Rf(output: false)
  Id<P, C>? get id => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsCopyWith<P, C, ProductDetails<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $ProductDetailsCopyWith(ProductDetails<P, C> value,
          $Res Function(ProductDetails<P, C>) then) =
      _$ProductDetailsCopyWithImpl<P, C, $Res, ProductDetails<P, C>>;
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) Id<P, C>? id});

  $IdCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsCopyWithImpl<P extends Product, C extends Cart, $Res,
        $Val extends ProductDetails<P, C>>
    implements $ProductDetailsCopyWith<P, C, $Res> {
  _$ProductDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id<P, C>?,
    ) as $Val);
  }

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdCopyWith<P, C, $Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdCopyWith<P, C, $Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsImplCopyWith<P extends Product, C extends Cart,
    $Res> implements $ProductDetailsCopyWith<P, C, $Res> {
  factory _$$ProductDetailsImplCopyWith(_$ProductDetailsImpl<P, C> value,
          $Res Function(_$ProductDetailsImpl<P, C>) then) =
      __$$ProductDetailsImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) Id<P, C>? id});

  @override
  $IdCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$$ProductDetailsImplCopyWithImpl<P extends Product, C extends Cart,
        $Res>
    extends _$ProductDetailsCopyWithImpl<P, C, $Res, _$ProductDetailsImpl<P, C>>
    implements _$$ProductDetailsImplCopyWith<P, C, $Res> {
  __$$ProductDetailsImplCopyWithImpl(_$ProductDetailsImpl<P, C> _value,
      $Res Function(_$ProductDetailsImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ProductDetailsImpl<P, C>(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id<P, C>?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsImpl<P extends Product, C extends Cart>
    extends _ProductDetails<P, C> {
  _$ProductDetailsImpl(
      {@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final Id<P, C>? id;

  @override
  String toString() {
    return 'ProductDetails<$P, $C>(description: $description, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsImpl<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsImplCopyWith<P, C, _$ProductDetailsImpl<P, C>>
      get copyWith =>
          __$$ProductDetailsImplCopyWithImpl<P, C, _$ProductDetailsImpl<P, C>>(
              this, _$identity);
}

abstract class _ProductDetails<P extends Product, C extends Cart>
    extends ProductDetails<P, C> {
  factory _ProductDetails(
      {@RfControl() final String? description,
      @Rf(output: false) final Id<P, C>? id}) = _$ProductDetailsImpl<P, C>;
  _ProductDetails._() : super._();

  @override
  @RfControl()
  String? get description;
  @override
  @Rf(output: false)
  Id<P, C>? get id;

  /// Create a copy of ProductDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsImplCopyWith<P, C, _$ProductDetailsImpl<P, C>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Id<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName => throw _privateConstructorUsedError;
  @RfControl()
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdCopyWith<P, C, Id<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdCopyWith<P extends Product, C extends Cart, $Res> {
  factory $IdCopyWith(Id<P, C> value, $Res Function(Id<P, C>) then) =
      _$IdCopyWithImpl<P, C, $Res, Id<P, C>>;
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdCopyWithImpl<P extends Product, C extends Cart, $Res,
    $Val extends Id<P, C>> implements $IdCopyWith<P, C, $Res> {
  _$IdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdImplCopyWith<P extends Product, C extends Cart, $Res>
    implements $IdCopyWith<P, C, $Res> {
  factory _$$IdImplCopyWith(
          _$IdImpl<P, C> value, $Res Function(_$IdImpl<P, C>) then) =
      __$$IdImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$$IdImplCopyWithImpl<P extends Product, C extends Cart, $Res>
    extends _$IdCopyWithImpl<P, C, $Res, _$IdImpl<P, C>>
    implements _$$IdImplCopyWith<P, C, $Res> {
  __$$IdImplCopyWithImpl(
      _$IdImpl<P, C> _value, $Res Function(_$IdImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$IdImpl<P, C>(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$IdImpl<P extends Product, C extends Cart> extends _Id<P, C> {
  _$IdImpl({@RfControl() this.companyName, @RfControl() this.name}) : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  @override
  String toString() {
    return 'Id<$P, $C>(companyName: $companyName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdImpl<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdImplCopyWith<P, C, _$IdImpl<P, C>> get copyWith =>
      __$$IdImplCopyWithImpl<P, C, _$IdImpl<P, C>>(this, _$identity);
}

abstract class _Id<P extends Product, C extends Cart> extends Id<P, C> {
  factory _Id(
      {@RfControl() final String? companyName,
      @RfControl() final String? name}) = _$IdImpl<P, C>;
  _Id._() : super._();

  @override
  @RfControl()
  String? get companyName;
  @override
  @RfControl()
  String? get name;

  /// Create a copy of Id
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdImplCopyWith<P, C, _$IdImpl<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  String? get companyName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String? companyName, String? name});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? companyName, String? name});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProductImpl(
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  const _$ProductImpl({this.companyName, this.name}) : super._();

  @override
  final String? companyName;
  @override
  final String? name;

  @override
  String toString() {
    return 'Product(companyName: $companyName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product({final String? companyName, final String? name}) =
      _$ProductImpl;
  const _Product._() : super._();

  @override
  String? get companyName;
  @override
  String? get name;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Cart {
  Product? get product => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({Product? product, String? description});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product? product, String? description});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CartImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartImpl extends _Cart {
  const _$CartImpl({this.product, this.description}) : super._();

  @override
  final Product? product;
  @override
  final String? description;

  @override
  String toString() {
    return 'Cart(product: $product, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, description);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);
}

abstract class _Cart extends Cart {
  const factory _Cart({final Product? product, final String? description}) =
      _$CartImpl;
  const _Cart._() : super._();

  @override
  Product? get product;
  @override
  String? get description;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
