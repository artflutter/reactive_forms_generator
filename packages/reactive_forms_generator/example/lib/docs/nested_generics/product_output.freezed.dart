// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsO<P extends Product, C extends Cart> {
  @RfControl()
  String? get description => throw _privateConstructorUsedError;
  @Rf(output: false)
  IdO<P, C>? get id => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsOCopyWith<P, C, ProductDetailsO<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsOCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $ProductDetailsOCopyWith(ProductDetailsO<P, C> value,
          $Res Function(ProductDetailsO<P, C>) then) =
      _$ProductDetailsOCopyWithImpl<P, C, $Res, ProductDetailsO<P, C>>;
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) IdO<P, C>? id});

  $IdOCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsOCopyWithImpl<P extends Product, C extends Cart, $Res,
        $Val extends ProductDetailsO<P, C>>
    implements $ProductDetailsOCopyWith<P, C, $Res> {
  _$ProductDetailsOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsO
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
              as IdO<P, C>?,
    ) as $Val);
  }

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOCopyWith<P, C, $Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdOCopyWith<P, C, $Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsOImplCopyWith<P extends Product, C extends Cart,
    $Res> implements $ProductDetailsOCopyWith<P, C, $Res> {
  factory _$$ProductDetailsOImplCopyWith(_$ProductDetailsOImpl<P, C> value,
          $Res Function(_$ProductDetailsOImpl<P, C>) then) =
      __$$ProductDetailsOImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String? description, @Rf(output: false) IdO<P, C>? id});

  @override
  $IdOCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$$ProductDetailsOImplCopyWithImpl<P extends Product, C extends Cart,
        $Res>
    extends _$ProductDetailsOCopyWithImpl<P, C, $Res,
        _$ProductDetailsOImpl<P, C>>
    implements _$$ProductDetailsOImplCopyWith<P, C, $Res> {
  __$$ProductDetailsOImplCopyWithImpl(_$ProductDetailsOImpl<P, C> _value,
      $Res Function(_$ProductDetailsOImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ProductDetailsOImpl<P, C>(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdO<P, C>?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsOImpl<P extends Product, C extends Cart>
    extends _ProductDetailsO<P, C> {
  _$ProductDetailsOImpl(
      {@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final IdO<P, C>? id;

  @override
  String toString() {
    return 'ProductDetailsO<$P, $C>(description: $description, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsOImpl<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsOImplCopyWith<P, C, _$ProductDetailsOImpl<P, C>>
      get copyWith => __$$ProductDetailsOImplCopyWithImpl<P, C,
          _$ProductDetailsOImpl<P, C>>(this, _$identity);
}

abstract class _ProductDetailsO<P extends Product, C extends Cart>
    extends ProductDetailsO<P, C> {
  factory _ProductDetailsO(
      {@RfControl() final String? description,
      @Rf(output: false) final IdO<P, C>? id}) = _$ProductDetailsOImpl<P, C>;
  _ProductDetailsO._() : super._();

  @override
  @RfControl()
  String? get description;
  @override
  @Rf(output: false)
  IdO<P, C>? get id;

  /// Create a copy of ProductDetailsO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsOImplCopyWith<P, C, _$ProductDetailsOImpl<P, C>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IdO<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName => throw _privateConstructorUsedError;
  @RfControl()
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdOCopyWith<P, C, IdO<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdOCopyWith<P extends Product, C extends Cart, $Res> {
  factory $IdOCopyWith(IdO<P, C> value, $Res Function(IdO<P, C>) then) =
      _$IdOCopyWithImpl<P, C, $Res, IdO<P, C>>;
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdOCopyWithImpl<P extends Product, C extends Cart, $Res,
    $Val extends IdO<P, C>> implements $IdOCopyWith<P, C, $Res> {
  _$IdOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdO
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
abstract class _$$IdOImplCopyWith<P extends Product, C extends Cart, $Res>
    implements $IdOCopyWith<P, C, $Res> {
  factory _$$IdOImplCopyWith(
          _$IdOImpl<P, C> value, $Res Function(_$IdOImpl<P, C>) then) =
      __$$IdOImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$$IdOImplCopyWithImpl<P extends Product, C extends Cart, $Res>
    extends _$IdOCopyWithImpl<P, C, $Res, _$IdOImpl<P, C>>
    implements _$$IdOImplCopyWith<P, C, $Res> {
  __$$IdOImplCopyWithImpl(
      _$IdOImpl<P, C> _value, $Res Function(_$IdOImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$IdOImpl<P, C>(
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

class _$IdOImpl<P extends Product, C extends Cart> extends _IdO<P, C> {
  _$IdOImpl({@RfControl() this.companyName, @RfControl() this.name})
      : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  @override
  String toString() {
    return 'IdO<$P, $C>(companyName: $companyName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdOImpl<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdOImplCopyWith<P, C, _$IdOImpl<P, C>> get copyWith =>
      __$$IdOImplCopyWithImpl<P, C, _$IdOImpl<P, C>>(this, _$identity);
}

abstract class _IdO<P extends Product, C extends Cart> extends IdO<P, C> {
  factory _IdO(
      {@RfControl() final String? companyName,
      @RfControl() final String? name}) = _$IdOImpl<P, C>;
  _IdO._() : super._();

  @override
  @RfControl()
  String? get companyName;
  @override
  @RfControl()
  String? get name;

  /// Create a copy of IdO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdOImplCopyWith<P, C, _$IdOImpl<P, C>> get copyWith =>
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

/// @nodoc
mixin _$ProductDetailsOOutput<P extends Product, C extends Cart> {
  @RfControl()
  String? get description => throw _privateConstructorUsedError;
  @Rf(output: false)
  IdOOutput<P, C>? get id => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsOOutputCopyWith<P, C, ProductDetailsOOutput<P, C>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsOOutputCopyWith<P extends Product, C extends Cart,
    $Res> {
  factory $ProductDetailsOOutputCopyWith(ProductDetailsOOutput<P, C> value,
          $Res Function(ProductDetailsOOutput<P, C>) then) =
      _$ProductDetailsOOutputCopyWithImpl<P, C, $Res,
          ProductDetailsOOutput<P, C>>;
  @useResult
  $Res call(
      {@RfControl() String? description,
      @Rf(output: false) IdOOutput<P, C>? id});

  $IdOOutputCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class _$ProductDetailsOOutputCopyWithImpl<P extends Product, C extends Cart,
        $Res, $Val extends ProductDetailsOOutput<P, C>>
    implements $ProductDetailsOOutputCopyWith<P, C, $Res> {
  _$ProductDetailsOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsOOutput
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
              as IdOOutput<P, C>?,
    ) as $Val);
  }

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IdOOutputCopyWith<P, C, $Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $IdOOutputCopyWith<P, C, $Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsOOutputImplCopyWith<
    P extends Product,
    C extends Cart,
    $Res> implements $ProductDetailsOOutputCopyWith<P, C, $Res> {
  factory _$$ProductDetailsOOutputImplCopyWith(
          _$ProductDetailsOOutputImpl<P, C> value,
          $Res Function(_$ProductDetailsOOutputImpl<P, C>) then) =
      __$$ProductDetailsOOutputImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call(
      {@RfControl() String? description,
      @Rf(output: false) IdOOutput<P, C>? id});

  @override
  $IdOOutputCopyWith<P, C, $Res>? get id;
}

/// @nodoc
class __$$ProductDetailsOOutputImplCopyWithImpl<P extends Product,
        C extends Cart, $Res>
    extends _$ProductDetailsOOutputCopyWithImpl<P, C, $Res,
        _$ProductDetailsOOutputImpl<P, C>>
    implements _$$ProductDetailsOOutputImplCopyWith<P, C, $Res> {
  __$$ProductDetailsOOutputImplCopyWithImpl(
      _$ProductDetailsOOutputImpl<P, C> _value,
      $Res Function(_$ProductDetailsOOutputImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ProductDetailsOOutputImpl<P, C>(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdOOutput<P, C>?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsOOutputImpl<P extends Product, C extends Cart>
    extends _ProductDetailsOOutput<P, C> {
  _$ProductDetailsOOutputImpl(
      {@RfControl() this.description, @Rf(output: false) this.id})
      : super._();

  @override
  @RfControl()
  final String? description;
  @override
  @Rf(output: false)
  final IdOOutput<P, C>? id;

  @override
  String toString() {
    return 'ProductDetailsOOutput<$P, $C>(description: $description, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsOOutputImpl<P, C> &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, id);

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsOOutputImplCopyWith<P, C, _$ProductDetailsOOutputImpl<P, C>>
      get copyWith => __$$ProductDetailsOOutputImplCopyWithImpl<P, C,
          _$ProductDetailsOOutputImpl<P, C>>(this, _$identity);
}

abstract class _ProductDetailsOOutput<P extends Product, C extends Cart>
    extends ProductDetailsOOutput<P, C> {
  factory _ProductDetailsOOutput(
          {@RfControl() final String? description,
          @Rf(output: false) final IdOOutput<P, C>? id}) =
      _$ProductDetailsOOutputImpl<P, C>;
  _ProductDetailsOOutput._() : super._();

  @override
  @RfControl()
  String? get description;
  @override
  @Rf(output: false)
  IdOOutput<P, C>? get id;

  /// Create a copy of ProductDetailsOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsOOutputImplCopyWith<P, C, _$ProductDetailsOOutputImpl<P, C>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IdOOutput<P extends Product, C extends Cart> {
  @RfControl()
  String? get companyName => throw _privateConstructorUsedError;
  @RfControl()
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdOOutputCopyWith<P, C, IdOOutput<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdOOutputCopyWith<P extends Product, C extends Cart, $Res> {
  factory $IdOOutputCopyWith(
          IdOOutput<P, C> value, $Res Function(IdOOutput<P, C>) then) =
      _$IdOOutputCopyWithImpl<P, C, $Res, IdOOutput<P, C>>;
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class _$IdOOutputCopyWithImpl<P extends Product, C extends Cart, $Res,
    $Val extends IdOOutput<P, C>> implements $IdOOutputCopyWith<P, C, $Res> {
  _$IdOOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdOOutput
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
abstract class _$$IdOOutputImplCopyWith<P extends Product, C extends Cart, $Res>
    implements $IdOOutputCopyWith<P, C, $Res> {
  factory _$$IdOOutputImplCopyWith(_$IdOOutputImpl<P, C> value,
          $Res Function(_$IdOOutputImpl<P, C>) then) =
      __$$IdOOutputImplCopyWithImpl<P, C, $Res>;
  @override
  @useResult
  $Res call({@RfControl() String? companyName, @RfControl() String? name});
}

/// @nodoc
class __$$IdOOutputImplCopyWithImpl<P extends Product, C extends Cart, $Res>
    extends _$IdOOutputCopyWithImpl<P, C, $Res, _$IdOOutputImpl<P, C>>
    implements _$$IdOOutputImplCopyWith<P, C, $Res> {
  __$$IdOOutputImplCopyWithImpl(
      _$IdOOutputImpl<P, C> _value, $Res Function(_$IdOOutputImpl<P, C>) _then)
      : super(_value, _then);

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = freezed,
    Object? name = freezed,
  }) {
    return _then(_$IdOOutputImpl<P, C>(
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

class _$IdOOutputImpl<P extends Product, C extends Cart>
    extends _IdOOutput<P, C> {
  _$IdOOutputImpl({@RfControl() this.companyName, @RfControl() this.name})
      : super._();

  @override
  @RfControl()
  final String? companyName;
  @override
  @RfControl()
  final String? name;

  @override
  String toString() {
    return 'IdOOutput<$P, $C>(companyName: $companyName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdOOutputImpl<P, C> &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, companyName, name);

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdOOutputImplCopyWith<P, C, _$IdOOutputImpl<P, C>> get copyWith =>
      __$$IdOOutputImplCopyWithImpl<P, C, _$IdOOutputImpl<P, C>>(
          this, _$identity);
}

abstract class _IdOOutput<P extends Product, C extends Cart>
    extends IdOOutput<P, C> {
  factory _IdOOutput(
      {@RfControl() final String? companyName,
      @RfControl() final String? name}) = _$IdOOutputImpl<P, C>;
  _IdOOutput._() : super._();

  @override
  @RfControl()
  String? get companyName;
  @override
  @RfControl()
  String? get name;

  /// Create a copy of IdOOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdOOutputImplCopyWith<P, C, _$IdOOutputImpl<P, C>> get copyWith =>
      throw _privateConstructorUsedError;
}
