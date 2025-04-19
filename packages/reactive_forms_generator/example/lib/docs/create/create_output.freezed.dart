// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MSICreate {
  String? get id;
  String? get businessNumber;
  List<String>? get fileIds;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get name;
  Address get companyAddress;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;
  PrimaryContact get primaryContact;
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany;
  Address get mailingAddress;
  @RfArray<AdminContactInformation>()
  List<AdminContactInformation> get admins;

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MSICreateCopyWith<MSICreate> get copyWith =>
      _$MSICreateCopyWithImpl<MSICreate>(this as MSICreate, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MSICreate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessNumber, businessNumber) ||
                other.businessNumber == businessNumber) &&
            const DeepCollectionEquality().equals(other.fileIds, fileIds) &&
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
            const DeepCollectionEquality().equals(other.admins, admins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessNumber,
      const DeepCollectionEquality().hash(fileIds),
      name,
      companyAddress,
      email,
      primaryContact,
      sameMailingAddressAsCompany,
      mailingAddress,
      const DeepCollectionEquality().hash(admins));

  @override
  String toString() {
    return 'MSICreate(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }
}

/// @nodoc
abstract mixin class $MSICreateCopyWith<$Res> {
  factory $MSICreateCopyWith(MSICreate value, $Res Function(MSICreate) _then) =
      _$MSICreateCopyWithImpl;
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
class _$MSICreateCopyWithImpl<$Res> implements $MSICreateCopyWith<$Res> {
  _$MSICreateCopyWithImpl(this._self, this._then);

  final MSICreate _self;
  final $Res Function(MSICreate) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _self.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _self.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: null == companyAddress
          ? _self.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContact: null == primaryContact
          ? _self.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContact,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _self.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _self.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      admins: null == admins
          ? _self.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformation>,
    ));
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get companyAddress {
    return $AddressCopyWith<$Res>(_self.companyAddress, (value) {
      return _then(_self.copyWith(companyAddress: value));
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactCopyWith<$Res> get primaryContact {
    return $PrimaryContactCopyWith<$Res>(_self.primaryContact, (value) {
      return _then(_self.copyWith(primaryContact: value));
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get mailingAddress {
    return $AddressCopyWith<$Res>(_self.mailingAddress, (value) {
      return _then(_self.copyWith(mailingAddress: value));
    });
  }
}

/// @nodoc

class _MSICreate implements MSICreate {
  const _MSICreate(
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

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MSICreateCopyWith<_MSICreate> get copyWith =>
      __$MSICreateCopyWithImpl<_MSICreate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MSICreate &&
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

  @override
  String toString() {
    return 'MSICreate(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }
}

/// @nodoc
abstract mixin class _$MSICreateCopyWith<$Res>
    implements $MSICreateCopyWith<$Res> {
  factory _$MSICreateCopyWith(
          _MSICreate value, $Res Function(_MSICreate) _then) =
      __$MSICreateCopyWithImpl;
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
class __$MSICreateCopyWithImpl<$Res> implements _$MSICreateCopyWith<$Res> {
  __$MSICreateCopyWithImpl(this._self, this._then);

  final _MSICreate _self;
  final $Res Function(_MSICreate) _then;

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_MSICreate(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _self.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _self._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAddress: null == companyAddress
          ? _self.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryContact: null == primaryContact
          ? _self.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContact,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _self.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _self.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      admins: null == admins
          ? _self._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformation>,
    ));
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get companyAddress {
    return $AddressCopyWith<$Res>(_self.companyAddress, (value) {
      return _then(_self.copyWith(companyAddress: value));
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactCopyWith<$Res> get primaryContact {
    return $PrimaryContactCopyWith<$Res>(_self.primaryContact, (value) {
      return _then(_self.copyWith(primaryContact: value));
    });
  }

  /// Create a copy of MSICreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get mailingAddress {
    return $AddressCopyWith<$Res>(_self.mailingAddress, (value) {
      return _then(_self.copyWith(mailingAddress: value));
    });
  }
}

/// @nodoc
mixin _$Address {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get street;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get city;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get stateOrProvince;
  @RfControl(validators: [RequiredValidator()])
  String? get zipCode;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressCopyWith<Address> get copyWith =>
      _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Address &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  @override
  String toString() {
    return 'Address(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) =
      _$AddressCopyWithImpl;
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
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

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
    return _then(_self.copyWith(
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOrProvince: freezed == stateOrProvince
          ? _self.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Address implements Address {
  const _Address(
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

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Address &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  @override
  String toString() {
    return 'Address(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) =
      __$AddressCopyWithImpl;
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
class __$AddressCopyWithImpl<$Res> implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = freezed,
    Object? city = freezed,
    Object? stateOrProvince = freezed,
    Object? zipCode = freezed,
  }) {
    return _then(_Address(
      street: freezed == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      stateOrProvince: freezed == stateOrProvince
          ? _self.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$PrimaryContact {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get fullName;
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrimaryContactCopyWith<PrimaryContact> get copyWith =>
      _$PrimaryContactCopyWithImpl<PrimaryContact>(
          this as PrimaryContact, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrimaryContact &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  @override
  String toString() {
    return 'PrimaryContact(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }
}

/// @nodoc
abstract mixin class $PrimaryContactCopyWith<$Res> {
  factory $PrimaryContactCopyWith(
          PrimaryContact value, $Res Function(PrimaryContact) _then) =
      _$PrimaryContactCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String? fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email});
}

/// @nodoc
class _$PrimaryContactCopyWithImpl<$Res>
    implements $PrimaryContactCopyWith<$Res> {
  _$PrimaryContactCopyWithImpl(this._self, this._then);

  final PrimaryContact _self;
  final $Res Function(PrimaryContact) _then;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? jobTitle = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _PrimaryContact implements PrimaryContact {
  const _PrimaryContact(
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

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrimaryContactCopyWith<_PrimaryContact> get copyWith =>
      __$PrimaryContactCopyWithImpl<_PrimaryContact>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrimaryContact &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  @override
  String toString() {
    return 'PrimaryContact(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$PrimaryContactCopyWith<$Res>
    implements $PrimaryContactCopyWith<$Res> {
  factory _$PrimaryContactCopyWith(
          _PrimaryContact value, $Res Function(_PrimaryContact) _then) =
      __$PrimaryContactCopyWithImpl;
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
class __$PrimaryContactCopyWithImpl<$Res>
    implements _$PrimaryContactCopyWith<$Res> {
  __$PrimaryContactCopyWithImpl(this._self, this._then);

  final _PrimaryContact _self;
  final $Res Function(_PrimaryContact) _then;

  /// Create a copy of PrimaryContact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = freezed,
    Object? jobTitle = freezed,
    Object? email = freezed,
  }) {
    return _then(_PrimaryContact(
      fullName: freezed == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      jobTitle: freezed == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$AdminContactInformation {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get firstName;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String? get lastName;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminContactInformationCopyWith<AdminContactInformation> get copyWith =>
      _$AdminContactInformationCopyWithImpl<AdminContactInformation>(
          this as AdminContactInformation, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminContactInformation &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  @override
  String toString() {
    return 'AdminContactInformation(firstName: $firstName, lastName: $lastName, email: $email)';
  }
}

/// @nodoc
abstract mixin class $AdminContactInformationCopyWith<$Res> {
  factory $AdminContactInformationCopyWith(AdminContactInformation value,
          $Res Function(AdminContactInformation) _then) =
      _$AdminContactInformationCopyWithImpl;
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
class _$AdminContactInformationCopyWithImpl<$Res>
    implements $AdminContactInformationCopyWith<$Res> {
  _$AdminContactInformationCopyWithImpl(this._self, this._then);

  final AdminContactInformation _self;
  final $Res Function(AdminContactInformation) _then;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _AdminContactInformation implements AdminContactInformation {
  const _AdminContactInformation(
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

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdminContactInformationCopyWith<_AdminContactInformation> get copyWith =>
      __$AdminContactInformationCopyWithImpl<_AdminContactInformation>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminContactInformation &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  @override
  String toString() {
    return 'AdminContactInformation(firstName: $firstName, lastName: $lastName, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$AdminContactInformationCopyWith<$Res>
    implements $AdminContactInformationCopyWith<$Res> {
  factory _$AdminContactInformationCopyWith(_AdminContactInformation value,
          $Res Function(_AdminContactInformation) _then) =
      __$AdminContactInformationCopyWithImpl;
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
class __$AdminContactInformationCopyWithImpl<$Res>
    implements _$AdminContactInformationCopyWith<$Res> {
  __$AdminContactInformationCopyWithImpl(this._self, this._then);

  final _AdminContactInformation _self;
  final $Res Function(_AdminContactInformation) _then;

  /// Create a copy of AdminContactInformation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
  }) {
    return _then(_AdminContactInformation(
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$MSICreateOutput {
  String? get id;
  String? get businessNumber;
  List<String>? get fileIds;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get name;
  AddressOutput get companyAddress;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;
  PrimaryContactOutput get primaryContact;
  @RfControl<bool>()
  bool get sameMailingAddressAsCompany;
  AddressOutput get mailingAddress;
  @RfArray<AdminContactInformationOutput>()
  List<AdminContactInformationOutput> get admins;

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MSICreateOutputCopyWith<MSICreateOutput> get copyWith =>
      _$MSICreateOutputCopyWithImpl<MSICreateOutput>(
          this as MSICreateOutput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MSICreateOutput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessNumber, businessNumber) ||
                other.businessNumber == businessNumber) &&
            const DeepCollectionEquality().equals(other.fileIds, fileIds) &&
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
            const DeepCollectionEquality().equals(other.admins, admins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      businessNumber,
      const DeepCollectionEquality().hash(fileIds),
      name,
      companyAddress,
      email,
      primaryContact,
      sameMailingAddressAsCompany,
      mailingAddress,
      const DeepCollectionEquality().hash(admins));

  @override
  String toString() {
    return 'MSICreateOutput(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }
}

/// @nodoc
abstract mixin class $MSICreateOutputCopyWith<$Res> {
  factory $MSICreateOutputCopyWith(
          MSICreateOutput value, $Res Function(MSICreateOutput) _then) =
      _$MSICreateOutputCopyWithImpl;
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
class _$MSICreateOutputCopyWithImpl<$Res>
    implements $MSICreateOutputCopyWith<$Res> {
  _$MSICreateOutputCopyWithImpl(this._self, this._then);

  final MSICreateOutput _self;
  final $Res Function(MSICreateOutput) _then;

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
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _self.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _self.fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyAddress: null == companyAddress
          ? _self.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _self.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContactOutput,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _self.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _self.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      admins: null == admins
          ? _self.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformationOutput>,
    ));
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get companyAddress {
    return $AddressOutputCopyWith<$Res>(_self.companyAddress, (value) {
      return _then(_self.copyWith(companyAddress: value));
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactOutputCopyWith<$Res> get primaryContact {
    return $PrimaryContactOutputCopyWith<$Res>(_self.primaryContact, (value) {
      return _then(_self.copyWith(primaryContact: value));
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get mailingAddress {
    return $AddressOutputCopyWith<$Res>(_self.mailingAddress, (value) {
      return _then(_self.copyWith(mailingAddress: value));
    });
  }
}

/// @nodoc

class _MSICreateOutput implements MSICreateOutput {
  const _MSICreateOutput(
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

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MSICreateOutputCopyWith<_MSICreateOutput> get copyWith =>
      __$MSICreateOutputCopyWithImpl<_MSICreateOutput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MSICreateOutput &&
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

  @override
  String toString() {
    return 'MSICreateOutput(id: $id, businessNumber: $businessNumber, fileIds: $fileIds, name: $name, companyAddress: $companyAddress, email: $email, primaryContact: $primaryContact, sameMailingAddressAsCompany: $sameMailingAddressAsCompany, mailingAddress: $mailingAddress, admins: $admins)';
  }
}

/// @nodoc
abstract mixin class _$MSICreateOutputCopyWith<$Res>
    implements $MSICreateOutputCopyWith<$Res> {
  factory _$MSICreateOutputCopyWith(
          _MSICreateOutput value, $Res Function(_MSICreateOutput) _then) =
      __$MSICreateOutputCopyWithImpl;
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
class __$MSICreateOutputCopyWithImpl<$Res>
    implements _$MSICreateOutputCopyWith<$Res> {
  __$MSICreateOutputCopyWithImpl(this._self, this._then);

  final _MSICreateOutput _self;
  final $Res Function(_MSICreateOutput) _then;

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_MSICreateOutput(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      businessNumber: freezed == businessNumber
          ? _self.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileIds: freezed == fileIds
          ? _self._fileIds
          : fileIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      companyAddress: null == companyAddress
          ? _self.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      primaryContact: null == primaryContact
          ? _self.primaryContact
          : primaryContact // ignore: cast_nullable_to_non_nullable
              as PrimaryContactOutput,
      sameMailingAddressAsCompany: null == sameMailingAddressAsCompany
          ? _self.sameMailingAddressAsCompany
          : sameMailingAddressAsCompany // ignore: cast_nullable_to_non_nullable
              as bool,
      mailingAddress: null == mailingAddress
          ? _self.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as AddressOutput,
      admins: null == admins
          ? _self._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<AdminContactInformationOutput>,
    ));
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get companyAddress {
    return $AddressOutputCopyWith<$Res>(_self.companyAddress, (value) {
      return _then(_self.copyWith(companyAddress: value));
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrimaryContactOutputCopyWith<$Res> get primaryContact {
    return $PrimaryContactOutputCopyWith<$Res>(_self.primaryContact, (value) {
      return _then(_self.copyWith(primaryContact: value));
    });
  }

  /// Create a copy of MSICreateOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<$Res> get mailingAddress {
    return $AddressOutputCopyWith<$Res>(_self.mailingAddress, (value) {
      return _then(_self.copyWith(mailingAddress: value));
    });
  }
}

/// @nodoc
mixin _$AddressOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get street;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get city;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get stateOrProvince;
  @RfControl(validators: [RequiredValidator()])
  String get zipCode;

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddressOutputCopyWith<AddressOutput> get copyWith =>
      _$AddressOutputCopyWithImpl<AddressOutput>(
          this as AddressOutput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddressOutput &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  @override
  String toString() {
    return 'AddressOutput(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class $AddressOutputCopyWith<$Res> {
  factory $AddressOutputCopyWith(
          AddressOutput value, $Res Function(AddressOutput) _then) =
      _$AddressOutputCopyWithImpl;
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
class _$AddressOutputCopyWithImpl<$Res>
    implements $AddressOutputCopyWith<$Res> {
  _$AddressOutputCopyWithImpl(this._self, this._then);

  final AddressOutput _self;
  final $Res Function(AddressOutput) _then;

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
    return _then(_self.copyWith(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateOrProvince: null == stateOrProvince
          ? _self.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AddressOutput implements AddressOutput {
  const _AddressOutput(
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

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddressOutputCopyWith<_AddressOutput> get copyWith =>
      __$AddressOutputCopyWithImpl<_AddressOutput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressOutput &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, street, city, stateOrProvince, zipCode);

  @override
  String toString() {
    return 'AddressOutput(street: $street, city: $city, stateOrProvince: $stateOrProvince, zipCode: $zipCode)';
  }
}

/// @nodoc
abstract mixin class _$AddressOutputCopyWith<$Res>
    implements $AddressOutputCopyWith<$Res> {
  factory _$AddressOutputCopyWith(
          _AddressOutput value, $Res Function(_AddressOutput) _then) =
      __$AddressOutputCopyWithImpl;
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
class __$AddressOutputCopyWithImpl<$Res>
    implements _$AddressOutputCopyWith<$Res> {
  __$AddressOutputCopyWithImpl(this._self, this._then);

  final _AddressOutput _self;
  final $Res Function(_AddressOutput) _then;

  /// Create a copy of AddressOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? street = null,
    Object? city = null,
    Object? stateOrProvince = null,
    Object? zipCode = null,
  }) {
    return _then(_AddressOutput(
      street: null == street
          ? _self.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateOrProvince: null == stateOrProvince
          ? _self.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _self.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PrimaryContactOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get fullName;
  @RfControl(validators: [MaxLengthValidator(120)])
  String? get jobTitle;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PrimaryContactOutputCopyWith<PrimaryContactOutput> get copyWith =>
      _$PrimaryContactOutputCopyWithImpl<PrimaryContactOutput>(
          this as PrimaryContactOutput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PrimaryContactOutput &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  @override
  String toString() {
    return 'PrimaryContactOutput(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }
}

/// @nodoc
abstract mixin class $PrimaryContactOutputCopyWith<$Res> {
  factory $PrimaryContactOutputCopyWith(PrimaryContactOutput value,
          $Res Function(PrimaryContactOutput) _then) =
      _$PrimaryContactOutputCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      String fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String email});
}

/// @nodoc
class _$PrimaryContactOutputCopyWithImpl<$Res>
    implements $PrimaryContactOutputCopyWith<$Res> {
  _$PrimaryContactOutputCopyWithImpl(this._self, this._then);

  final PrimaryContactOutput _self;
  final $Res Function(PrimaryContactOutput) _then;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? jobTitle = freezed,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: freezed == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PrimaryContactOutput implements PrimaryContactOutput {
  const _PrimaryContactOutput(
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

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PrimaryContactOutputCopyWith<_PrimaryContactOutput> get copyWith =>
      __$PrimaryContactOutputCopyWithImpl<_PrimaryContactOutput>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PrimaryContactOutput &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, jobTitle, email);

  @override
  String toString() {
    return 'PrimaryContactOutput(fullName: $fullName, jobTitle: $jobTitle, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$PrimaryContactOutputCopyWith<$Res>
    implements $PrimaryContactOutputCopyWith<$Res> {
  factory _$PrimaryContactOutputCopyWith(_PrimaryContactOutput value,
          $Res Function(_PrimaryContactOutput) _then) =
      __$PrimaryContactOutputCopyWithImpl;
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
class __$PrimaryContactOutputCopyWithImpl<$Res>
    implements _$PrimaryContactOutputCopyWith<$Res> {
  __$PrimaryContactOutputCopyWithImpl(this._self, this._then);

  final _PrimaryContactOutput _self;
  final $Res Function(_PrimaryContactOutput) _then;

  /// Create a copy of PrimaryContactOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullName = null,
    Object? jobTitle = freezed,
    Object? email = null,
  }) {
    return _then(_PrimaryContactOutput(
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: freezed == jobTitle
          ? _self.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AdminContactInformationOutput {
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get firstName;
  @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
  String get lastName;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String get email;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminContactInformationOutputCopyWith<AdminContactInformationOutput>
      get copyWith => _$AdminContactInformationOutputCopyWithImpl<
              AdminContactInformationOutput>(
          this as AdminContactInformationOutput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminContactInformationOutput &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  @override
  String toString() {
    return 'AdminContactInformationOutput(firstName: $firstName, lastName: $lastName, email: $email)';
  }
}

/// @nodoc
abstract mixin class $AdminContactInformationOutputCopyWith<$Res> {
  factory $AdminContactInformationOutputCopyWith(
          AdminContactInformationOutput value,
          $Res Function(AdminContactInformationOutput) _then) =
      _$AdminContactInformationOutputCopyWithImpl;
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
class _$AdminContactInformationOutputCopyWithImpl<$Res>
    implements $AdminContactInformationOutputCopyWith<$Res> {
  _$AdminContactInformationOutputCopyWithImpl(this._self, this._then);

  final AdminContactInformationOutput _self;
  final $Res Function(AdminContactInformationOutput) _then;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _AdminContactInformationOutput implements AdminContactInformationOutput {
  const _AdminContactInformationOutput(
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

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdminContactInformationOutputCopyWith<_AdminContactInformationOutput>
      get copyWith => __$AdminContactInformationOutputCopyWithImpl<
          _AdminContactInformationOutput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminContactInformationOutput &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email);

  @override
  String toString() {
    return 'AdminContactInformationOutput(firstName: $firstName, lastName: $lastName, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$AdminContactInformationOutputCopyWith<$Res>
    implements $AdminContactInformationOutputCopyWith<$Res> {
  factory _$AdminContactInformationOutputCopyWith(
          _AdminContactInformationOutput value,
          $Res Function(_AdminContactInformationOutput) _then) =
      __$AdminContactInformationOutputCopyWithImpl;
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
class __$AdminContactInformationOutputCopyWithImpl<$Res>
    implements _$AdminContactInformationOutputCopyWith<$Res> {
  __$AdminContactInformationOutputCopyWithImpl(this._self, this._then);

  final _AdminContactInformationOutput _self;
  final $Res Function(_AdminContactInformationOutput) _then;

  /// Create a copy of AdminContactInformationOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
  }) {
    return _then(_AdminContactInformationOutput(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
