// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MSICreate {
  String? get id => throw _privateConstructorUsedError;
  String? get businessNumber => throw _privateConstructorUsedError;
  List<String>? get fileIds => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get name => throw _privateConstructorUsedError;
  Address get companyAddress => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email => throw _privateConstructorUsedError;
  PrimaryContact get primaryContact => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany => throw _privateConstructorUsedError;
  Address get mailingAddress => throw _privateConstructorUsedError;
  @RfArray<AdminContactInformation>()
  List<AdminContactInformation> get admins =>
      throw _privateConstructorUsedError;

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MSICreateCopyWith<MSICreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MSICreateCopyWith<$Res> {
  factory $MSICreateCopyWith(MSICreate value, $Res Function(MSICreate) then) =
      _$MSICreateCopyWithImpl<$Res, MSICreate>;
  @useResult
  $Res call(
      {String? id,
      String? businessNumber,
      List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? name,
      Address companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email,
      PrimaryContact primaryContact,
      @RfControl<bool>() bool sameMailingAddressAsCompany,
      Address mailingAddress,
      @RfArray<AdminContactInformation>()
      List<AdminContactInformation> admins});

  $AddressCopyWith<$Res> get companyAddress;
  $PrimaryContactCopyWith<$Res> get primaryContact;
  $AddressCopyWith<$Res> get mailingAddress;
}

/// @nodoc
class _$MSICreateCopyWithImpl<$Res, $Val extends MSICreate>
    implements $MSICreateCopyWith<$Res> {
  _$MSICreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessNumber = freezed,
    Object? fileIds = freezed,
    Object? name = freezed,
    Object? companyAddress = null,
    Object? email = freezed,
    Object? primaryContact = null,
    Object? sameMailingAddressAsCompany = null,
    Object? mailingAddress = null,
    Object? admins = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _value.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContact,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _value.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      admins: null == admins
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformation>,
    ) as $Val);
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get companyAddress {
    return $AddressCopyWith<$Res>(_value.companyAddress, (value) {
      return _then(_value.copyWith(companyAddress: value) as $Val);
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactCopyWith<$Res> get primaryContact {
    return $PrimaryContactCopyWith<$Res>(_value.primaryContact, (value) {
      return _then(_value.copyWith(primaryContact: value) as $Val);
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get mailingAddress {
    return $AddressCopyWith<$Res>(_value.mailingAddress, (value) {
      return _then(_value.copyWith(mailingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MSICreateImplCopyWith<$Res>
    implements $MSICreateCopyWith<$Res> {
  factory _$$MSICreateImplCopyWith(
          _$MSICreateImpl value, $Res Function(_$MSICreateImpl) then) =
      __$$MSICreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? businessNumber,
      List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? name,
      Address companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email,
      PrimaryContact primaryContact,
      @RfControl<bool>() bool sameMailingAddressAsCompany,
      Address mailingAddress,
      @RfArray<AdminContactInformation>()
      List<AdminContactInformation> admins});

  @override
  $AddressCopyWith<$Res> get companyAddress;
  @override
  $PrimaryContactCopyWith<$Res> get primaryContact;
  @override
  $AddressCopyWith<$Res> get mailingAddress;
}

/// @nodoc
class __$$MSICreateImplCopyWithImpl<$Res>
    extends _$MSICreateCopyWithImpl<$Res, _$MSICreateImpl>
    implements _$$MSICreateImplCopyWith<$Res> {
  __$$MSICreateImplCopyWithImpl(
      _$MSICreateImpl _value, $Res Function(_$MSICreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessNumber = freezed,
    Object? fileIds = freezed,
    Object? name = freezed,
    Object? companyAddress = null,
    Object? email = freezed,
    Object? primaryContact = null,
    Object? sameMailingAddressAsCompany = null,
    Object? mailingAddress = null,
    Object? admins = null,
  }) {
    return _then(_$MSICreateImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _value._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContact,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _value.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      admins: null == admins
          ? _value._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformation>,
    ));
  }
}

/// @nodoc

class _$MSICreateImpl implements _MSICreate {
  const _$MSICreateImpl(
      {this.id,
      this.businessNumber,
      final List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.name,
      this.companyAddress = const Address(),
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      this.email,
      this.primaryContact = const PrimaryContact(),
      @RfControl<bool>() this.sameMailingAddressAsCompany = false,
      this.mailingAddress = const Address(),
      @RfArray<AdminContactInformation>()
      final List<AdminContactInformation> admins = const [
        AdminContactInformation()
      ]})
      : _fileIds = fileIds,
        _admins = admins;

  @override
  final String? id;
  @override
  final String? businessNumber;
  final List<String>? _fileIds;
  @override
  List<String>? get fileIds {
    final value = _fileIds;
    if (value == null) return null;
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? name;
  @override
  @JsonKey()
  final Address companyAddress;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String? email;
  @override
  @JsonKey()
  final PrimaryContact primaryContact;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool sameMailingAddressAsCompany;
  @override
  @JsonKey()
  final Address mailingAddress;
  final List<AdminContactInformation> _admins;
  @override
  @JsonKey()
  @RfArray<AdminContactInformation>()
  List<AdminContactInformation> get admins {
    if (_admins is EqualUnmodifiableListView) return _admins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admins);
  }

  @override
  String toString() {
    return 'MSICreate(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MSICreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessNumber, businessNumber) ||
                other.businessNumber == businessNumber) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.primaryContact, primaryContact) ||
                other.primaryContact == primaryContact) &&
            (identical(other.sameMailingAddressAsCompany,
                    sameMailingAddressAsCompany) ||
                other.sameMailingAddressAsCompany ==
                    sameMailingAddressAsCompany) &&
            (identical(other.mailingAddress, mailingAddress) ||
                other.mailingAddress == mailingAddress) &&
            const DeepCollectionEquality().equals(other._admins, _admins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessNumber,
      const DeepCollectionEquality().hash(_fileIds),
      name,
      companyAddress,
      email,
      primaryContact,
      sameMailingAddressAsCompany,
      mailingAddress,
      const DeepCollectionEquality().hash(_admins));

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MSICreateImplCopyWith<_$MSICreateImpl> get copyWith =>
      __$$MSICreateImplCopyWithImpl<_$MSICreateImpl>(this, _$identity);
}

abstract class _MSICreate implements MSICreate {
  const factory _MSICreate(
      {final String? id,
      final String? businessNumber,
      final List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? name,
      final Address companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      final String? email,
      final PrimaryContact primaryContact,
      @RfControl<bool>() final bool sameMailingAddressAsCompany,
      final Address mailingAddress,
      @RfArray<AdminContactInformation>()
      final List<AdminContactInformation> admins}) = _$MSICreateImpl;

  @override
  String? get id;
  @override
  String? get businessNumber;
  @override
  List<String>? get fileIds;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get name;
  @override
  Address get companyAddress;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;
  @override
  PrimaryContact get primaryContact;
  @override
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany;
  @override
  Address get mailingAddress;
  @override
  @RfArray<AdminContactInformation>()
  List<AdminContactInformation> get admins;

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MSICreateImplCopyWith<_$MSICreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Address {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get street => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get city => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get stateOrProvince => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get zipCode => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) String? zipCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? stateOrProvince = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOrProvince: freezed == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) String? zipCode});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? stateOrProvince = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_$AddressImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOrProvince: freezed == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) this.zipCode});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? street;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? city;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? stateOrProvince;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? zipCode;

  @override
  String toString() {
    return 'Address(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);
}

abstract class _Address implements Address {
  const factory _Address(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? stateOrProvince,
      @RfControl(validators: [RequiredValidator()])
      final String? zipCode}) = _$AddressImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get street;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get city;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get stateOrProvince;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get zipCode;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrimaryContact {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get fullName => throw _privateConstructorUsedError;
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email => throw _privateConstructorUsedError;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryContactCopyWith<PrimaryContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryContactCopyWith<$Res> {
  factory $PrimaryContactCopyWith(
          PrimaryContact value, $Res Function(PrimaryContact) then) =
      _$PrimaryContactCopyWithImpl<$Res, PrimaryContact>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email});
}

/// @nodoc
class _$PrimaryContactCopyWithImpl<$Res, $Val extends PrimaryContact>
    implements $PrimaryContactCopyWith<$Res> {
  _$PrimaryContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? jobTitle = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryContactImplCopyWith<$Res>
    implements $PrimaryContactCopyWith<$Res> {
  factory _$$PrimaryContactImplCopyWith(_$PrimaryContactImpl value,
          $Res Function(_$PrimaryContactImpl) then) =
      __$$PrimaryContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email});
}

/// @nodoc
class __$$PrimaryContactImplCopyWithImpl<$Res>
    extends _$PrimaryContactCopyWithImpl<$Res, _$PrimaryContactImpl>
    implements _$$PrimaryContactImplCopyWith<$Res> {
  __$$PrimaryContactImplCopyWithImpl(
      _$PrimaryContactImpl _value, $Res Function(_$PrimaryContactImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? jobTitle = freezed,
    Object? email = freezed,
  }) {
    return _then(_$PrimaryContactImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PrimaryContactImpl implements _PrimaryContact {
  const _$PrimaryContactImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) this.jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      this.email});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? fullName;
  @override
  @RfControl(validators: [MaxLengthValidator(120)])
  final String? jobTitle;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String? email;

  @override
  String toString() {
    return 'PrimaryContact(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryContactImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryContactImplCopyWith<_$PrimaryContactImpl> get copyWith =>
      __$$PrimaryContactImplCopyWithImpl<_$PrimaryContactImpl>(
          this, _$identity);
}

abstract class _PrimaryContact implements PrimaryContact {
  const factory _PrimaryContact(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) final String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      final String? email}) = _$PrimaryContactImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get fullName;
  @override
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimaryContactImplCopyWith<_$PrimaryContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminContactInformation {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get firstName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get lastName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email => throw _privateConstructorUsedError;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminContactInformationCopyWith<AdminContactInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminContactInformationCopyWith<$Res> {
  factory $AdminContactInformationCopyWith(AdminContactInformation value,
          $Res Function(AdminContactInformation) then) =
      _$AdminContactInformationCopyWithImpl<$Res, AdminContactInformation>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email});
}

/// @nodoc
class _$AdminContactInformationCopyWithImpl<$Res,
        $Val extends AdminContactInformation>
    implements $AdminContactInformationCopyWith<$Res> {
  _$AdminContactInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminContactInformationImplCopyWith<$Res>
    implements $AdminContactInformationCopyWith<$Res> {
  factory _$$AdminContactInformationImplCopyWith(
          _$AdminContactInformationImpl value,
          $Res Function(_$AdminContactInformationImpl) then) =
      __$$AdminContactInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email});
}

/// @nodoc
class __$$AdminContactInformationImplCopyWithImpl<$Res>
    extends _$AdminContactInformationCopyWithImpl<$Res,
        _$AdminContactInformationImpl>
    implements _$$AdminContactInformationImplCopyWith<$Res> {
  __$$AdminContactInformationImplCopyWithImpl(
      _$AdminContactInformationImpl _value,
      $Res Function(_$AdminContactInformationImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$AdminContactInformationImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AdminContactInformationImpl implements _AdminContactInformation {
  const _$AdminContactInformationImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      this.lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      this.email});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String? lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String? email;

  @override
  String toString() {
    return 'AdminContactInformation(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminContactInformationImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminContactInformationImplCopyWith<_$AdminContactInformationImpl>
      get copyWith => __$$AdminContactInformationImplCopyWithImpl<
          _$AdminContactInformationImpl>(this, _$identity);
}

abstract class _AdminContactInformation implements AdminContactInformation {
  const factory _AdminContactInformation(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      final String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      final String? email}) = _$AdminContactInformationImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminContactInformationImplCopyWith<_$AdminContactInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MSICreateOutput {
  String? get id => throw _privateConstructorUsedError;
  String? get businessNumber => throw _privateConstructorUsedError;
  List<String>? get fileIds => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get name => throw _privateConstructorUsedError;
  AddressOutput get companyAddress => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email => throw _privateConstructorUsedError;
  PrimaryContactOutput get primaryContact => throw _privateConstructorUsedError;
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany => throw _privateConstructorUsedError;
  AddressOutput get mailingAddress => throw _privateConstructorUsedError;
  @RfArray<AdminContactInformationOutput>()
  List<AdminContactInformationOutput> get admins =>
      throw _privateConstructorUsedError;

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MSICreateOutputCopyWith<MSICreateOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MSICreateOutputCopyWith<$Res> {
  factory $MSICreateOutputCopyWith(
          MSICreateOutput value, $Res Function(MSICreateOutput) then) =
      _$MSICreateOutputCopyWithImpl<$Res, MSICreateOutput>;
  @useResult
  $Res call(
      {String? id,
      String? businessNumber,
      List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String name,
      AddressOutput companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email,
      PrimaryContactOutput primaryContact,
      @RfControl<bool>() bool sameMailingAddressAsCompany,
      AddressOutput mailingAddress,
      @RfArray<AdminContactInformationOutput>()
      List<AdminContactInformationOutput> admins});

  $AddressOutputCopyWith<$Res> get companyAddress;
  $PrimaryContactOutputCopyWith<$Res> get primaryContact;
  $AddressOutputCopyWith<$Res> get mailingAddress;
}

/// @nodoc
class _$MSICreateOutputCopyWithImpl<$Res, $Val extends MSICreateOutput>
    implements $MSICreateOutputCopyWith<$Res> {
  _$MSICreateOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessNumber = freezed,
    Object? fileIds = freezed,
    Object? name = null,
    Object? companyAddress = null,
    Object? email = null,
    Object? primaryContact = null,
    Object? sameMailingAddressAsCompany = null,
    Object? mailingAddress = null,
    Object? admins = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _value.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContactOutput,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _value.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      admins: null == admins
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformationOutput>,
    ) as $Val);
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get companyAddress {
    return $AddressOutputCopyWith<$Res>(_value.companyAddress, (value) {
      return _then(_value.copyWith(companyAddress: value) as $Val);
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactOutputCopyWith<$Res> get primaryContact {
    return $PrimaryContactOutputCopyWith<$Res>(_value.primaryContact, (value) {
      return _then(_value.copyWith(primaryContact: value) as $Val);
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get mailingAddress {
    return $AddressOutputCopyWith<$Res>(_value.mailingAddress, (value) {
      return _then(_value.copyWith(mailingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MSICreateOutputImplCopyWith<$Res>
    implements $MSICreateOutputCopyWith<$Res> {
  factory _$$MSICreateOutputImplCopyWith(_$MSICreateOutputImpl value,
          $Res Function(_$MSICreateOutputImpl) then) =
      __$$MSICreateOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? businessNumber,
      List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String name,
      AddressOutput companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email,
      PrimaryContactOutput primaryContact,
      @RfControl<bool>() bool sameMailingAddressAsCompany,
      AddressOutput mailingAddress,
      @RfArray<AdminContactInformationOutput>()
      List<AdminContactInformationOutput> admins});

  @override
  $AddressOutputCopyWith<$Res> get companyAddress;
  @override
  $PrimaryContactOutputCopyWith<$Res> get primaryContact;
  @override
  $AddressOutputCopyWith<$Res> get mailingAddress;
}

/// @nodoc
class __$$MSICreateOutputImplCopyWithImpl<$Res>
    extends _$MSICreateOutputCopyWithImpl<$Res, _$MSICreateOutputImpl>
    implements _$$MSICreateOutputImplCopyWith<$Res> {
  __$$MSICreateOutputImplCopyWithImpl(
      _$MSICreateOutputImpl _value, $Res Function(_$MSICreateOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessNumber = freezed,
    Object? fileIds = freezed,
    Object? name = null,
    Object? companyAddress = null,
    Object? email = null,
    Object? primaryContact = null,
    Object? sameMailingAddressAsCompany = null,
    Object? mailingAddress = null,
    Object? admins = null,
  }) {
    return _then(_$MSICreateOutputImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _value._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _value.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContactOutput,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _value.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      admins: null == admins
          ? _value._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformationOutput>,
    ));
  }
}

/// @nodoc

class _$MSICreateOutputImpl implements _MSICreateOutput {
  const _$MSICreateOutputImpl(
      {this.id,
      this.businessNumber,
      final List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.name,
      required this.companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required this.email,
      required this.primaryContact,
      @RfControl<bool>() this.sameMailingAddressAsCompany = false,
      required this.mailingAddress,
      @RfArray<AdminContactInformationOutput>()
      required final List<AdminContactInformationOutput> admins})
      : _fileIds = fileIds,
        _admins = admins;

  @override
  final String? id;
  @override
  final String? businessNumber;
  final List<String>? _fileIds;
  @override
  List<String>? get fileIds {
    final value = _fileIds;
    if (value == null) return null;
    if (_fileIds is EqualUnmodifiableListView) return _fileIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String name;
  @override
  final AddressOutput companyAddress;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String email;
  @override
  final PrimaryContactOutput primaryContact;
  @override
  @JsonKey()
  @RfControl<bool>()
  final bool sameMailingAddressAsCompany;
  @override
  final AddressOutput mailingAddress;
  final List<AdminContactInformationOutput> _admins;
  @override
  @RfArray<AdminContactInformationOutput>()
  List<AdminContactInformationOutput> get admins {
    if (_admins is EqualUnmodifiableListView) return _admins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admins);
  }

  @override
  String toString() {
    return 'MSICreateOutput(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MSICreateOutputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessNumber, businessNumber) ||
                other.businessNumber == businessNumber) &&
            const DeepCollectionEquality().equals(other._fileIds, _fileIds) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.companyAddress, companyAddress) ||
                other.companyAddress == companyAddress) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.primaryContact, primaryContact) ||
                other.primaryContact == primaryContact) &&
            (identical(other.sameMailingAddressAsCompany,
                    sameMailingAddressAsCompany) ||
                other.sameMailingAddressAsCompany ==
                    sameMailingAddressAsCompany) &&
            (identical(other.mailingAddress, mailingAddress) ||
                other.mailingAddress == mailingAddress) &&
            const DeepCollectionEquality().equals(other._admins, _admins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessNumber,
      const DeepCollectionEquality().hash(_fileIds),
      name,
      companyAddress,
      email,
      primaryContact,
      sameMailingAddressAsCompany,
      mailingAddress,
      const DeepCollectionEquality().hash(_admins));

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MSICreateOutputImplCopyWith<_$MSICreateOutputImpl> get copyWith =>
      __$$MSICreateOutputImplCopyWithImpl<_$MSICreateOutputImpl>(
          this, _$identity);
}

abstract class _MSICreateOutput implements MSICreateOutput {
  const factory _MSICreateOutput(
          {final String? id,
          final String? businessNumber,
          final List<String>? fileIds,
          @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
          required final String name,
          required final AddressOutput companyAddress,
          @RfControl(validators: [RequiredValidator(), EmailValidator()])
          required final String email,
          required final PrimaryContactOutput primaryContact,
          @RfControl<bool>() final bool sameMailingAddressAsCompany,
          required final AddressOutput mailingAddress,
          @RfArray<AdminContactInformationOutput>()
          required final List<AdminContactInformationOutput> admins}) =
      _$MSICreateOutputImpl;

  @override
  String? get id;
  @override
  String? get businessNumber;
  @override
  List<String>? get fileIds;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get name;
  @override
  AddressOutput get companyAddress;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;
  @override
  PrimaryContactOutput get primaryContact;
  @override
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany;
  @override
  AddressOutput get mailingAddress;
  @override
  @RfArray<AdminContactInformationOutput>()
  List<AdminContactInformationOutput> get admins;

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MSICreateOutputImplCopyWith<_$MSICreateOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get street => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get city => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get stateOrProvince => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get zipCode => throw _privateConstructorUsedError;

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressOutputCopyWith<AddressOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressOutputCopyWith<$Res> {
  factory $AddressOutputCopyWith(
          AddressOutput value, $Res Function(AddressOutput) then) =
      _$AddressOutputCopyWithImpl<$Res, AddressOutput>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) String zipCode});
}

/// @nodoc
class _$AddressOutputCopyWithImpl<$Res, $Val extends AddressOutput>
    implements $AddressOutputCopyWith<$Res> {
  _$AddressOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? stateOrProvince = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateOrProvince: null == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressOutputImplCopyWith<$Res>
    implements $AddressOutputCopyWith<$Res> {
  factory _$$AddressOutputImplCopyWith(
          _$AddressOutputImpl value, $Res Function(_$AddressOutputImpl) then) =
      __$$AddressOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) String zipCode});
}

/// @nodoc
class __$$AddressOutputImplCopyWithImpl<$Res>
    extends _$AddressOutputCopyWithImpl<$Res, _$AddressOutputImpl>
    implements _$$AddressOutputImplCopyWith<$Res> {
  __$$AddressOutputImplCopyWithImpl(
      _$AddressOutputImpl _value, $Res Function(_$AddressOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? stateOrProvince = null,
    Object? zipCode = null,
  }) {
    return _then(_$AddressOutputImpl(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateOrProvince: null == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddressOutputImpl implements _AddressOutput {
  const _$AddressOutputImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.stateOrProvince,
      @RfControl(validators: [RequiredValidator()]) required this.zipCode});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String street;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String city;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String stateOrProvince;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String zipCode;

  @override
  String toString() {
    return 'AddressOutput(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressOutputImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressOutputImplCopyWith<_$AddressOutputImpl> get copyWith =>
      __$$AddressOutputImplCopyWithImpl<_$AddressOutputImpl>(this, _$identity);
}

abstract class _AddressOutput implements AddressOutput {
  const factory _AddressOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String stateOrProvince,
      @RfControl(validators: [RequiredValidator()])
      required final String zipCode}) = _$AddressOutputImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get street;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get city;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get stateOrProvince;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get zipCode;

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressOutputImplCopyWith<_$AddressOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrimaryContactOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get fullName => throw _privateConstructorUsedError;
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrimaryContactOutputCopyWith<PrimaryContactOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryContactOutputCopyWith<$Res> {
  factory $PrimaryContactOutputCopyWith(PrimaryContactOutput value,
          $Res Function(PrimaryContactOutput) then) =
      _$PrimaryContactOutputCopyWithImpl<$Res, PrimaryContactOutput>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email});
}

/// @nodoc
class _$PrimaryContactOutputCopyWithImpl<$Res,
        $Val extends PrimaryContactOutput>
    implements $PrimaryContactOutputCopyWith<$Res> {
  _$PrimaryContactOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? jobTitle = freezed,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryContactOutputImplCopyWith<$Res>
    implements $PrimaryContactOutputCopyWith<$Res> {
  factory _$$PrimaryContactOutputImplCopyWith(_$PrimaryContactOutputImpl value,
          $Res Function(_$PrimaryContactOutputImpl) then) =
      __$$PrimaryContactOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email});
}

/// @nodoc
class __$$PrimaryContactOutputImplCopyWithImpl<$Res>
    extends _$PrimaryContactOutputCopyWithImpl<$Res, _$PrimaryContactOutputImpl>
    implements _$$PrimaryContactOutputImplCopyWith<$Res> {
  __$$PrimaryContactOutputImplCopyWithImpl(_$PrimaryContactOutputImpl _value,
      $Res Function(_$PrimaryContactOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? jobTitle = freezed,
    Object? email = null,
  }) {
    return _then(_$PrimaryContactOutputImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: freezed == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrimaryContactOutputImpl implements _PrimaryContactOutput {
  const _$PrimaryContactOutputImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) this.jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required this.email});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String fullName;
  @override
  @RfControl(validators: [MaxLengthValidator(120)])
  final String? jobTitle;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String email;

  @override
  String toString() {
    return 'PrimaryContactOutput(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryContactOutputImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryContactOutputImplCopyWith<_$PrimaryContactOutputImpl>
      get copyWith =>
          __$$PrimaryContactOutputImplCopyWithImpl<_$PrimaryContactOutputImpl>(
              this, _$identity);
}

abstract class _PrimaryContactOutput implements PrimaryContactOutput {
  const factory _PrimaryContactOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) final String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required final String email}) = _$PrimaryContactOutputImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get fullName;
  @override
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrimaryContactOutputImplCopyWith<_$PrimaryContactOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AdminContactInformationOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get firstName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get lastName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdminContactInformationOutputCopyWith<AdminContactInformationOutput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminContactInformationOutputCopyWith<$Res> {
  factory $AdminContactInformationOutputCopyWith(
          AdminContactInformationOutput value,
          $Res Function(AdminContactInformationOutput) then) =
      _$AdminContactInformationOutputCopyWithImpl<$Res,
          AdminContactInformationOutput>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email});
}

/// @nodoc
class _$AdminContactInformationOutputCopyWithImpl<$Res,
        $Val extends AdminContactInformationOutput>
    implements $AdminContactInformationOutputCopyWith<$Res> {
  _$AdminContactInformationOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminContactInformationOutputImplCopyWith<$Res>
    implements $AdminContactInformationOutputCopyWith<$Res> {
  factory _$$AdminContactInformationOutputImplCopyWith(
          _$AdminContactInformationOutputImpl value,
          $Res Function(_$AdminContactInformationOutputImpl) then) =
      __$$AdminContactInformationOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email});
}

/// @nodoc
class __$$AdminContactInformationOutputImplCopyWithImpl<$Res>
    extends _$AdminContactInformationOutputCopyWithImpl<$Res,
        _$AdminContactInformationOutputImpl>
    implements _$$AdminContactInformationOutputImplCopyWith<$Res> {
  __$$AdminContactInformationOutputImplCopyWithImpl(
      _$AdminContactInformationOutputImpl _value,
      $Res Function(_$AdminContactInformationOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_$AdminContactInformationOutputImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdminContactInformationOutputImpl
    implements _AdminContactInformationOutput {
  const _$AdminContactInformationOutputImpl(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required this.lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required this.email});

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  final String lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String email;

  @override
  String toString() {
    return 'AdminContactInformationOutput(firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminContactInformationOutputImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminContactInformationOutputImplCopyWith<
          _$AdminContactInformationOutputImpl>
      get copyWith => __$$AdminContactInformationOutputImplCopyWithImpl<
          _$AdminContactInformationOutputImpl>(this, _$identity);
}

abstract class _AdminContactInformationOutput
    implements AdminContactInformationOutput {
  const factory _AdminContactInformationOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required final String lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required final String email}) = _$AdminContactInformationOutputImpl;

  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdminContactInformationOutputImplCopyWith<
          _$AdminContactInformationOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
