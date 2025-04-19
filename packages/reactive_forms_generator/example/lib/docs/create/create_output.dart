import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'create_output.freezed.dart';

part 'create_output.gform.dart';

@Rf(output: true)
@freezed
abstract class MSICreate with _$MSICreate {
  const factory MSICreate({
    String? id,
    String? businessNumber,
    List<String>? fileIds,
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? name,
    @Default(Address()) Address companyAddress,
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    String? email,
    @Default(PrimaryContact()) PrimaryContact primaryContact,
    @RfControl<bool>() @Default(false) bool sameMailingAddressAsCompany,
    @Default(Address()) Address mailingAddress,
    @RfArray<AdminContactInformation>()
    @Default([
      AdminContactInformation(),
    ])
    List<AdminContactInformation> admins,
  }) = _MSICreate;
}

int zipCodeMaxLength(String value) {
  return value.length;
}

@RfGroup()
@freezed
abstract class Address with _$Address {
  const factory Address({
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? street,
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? city,
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? stateOrProvince,
    @RfControl(validators: [RequiredValidator()]) String? zipCode,
  }) = _Address;
}

@RfGroup<PrimaryContact>()
@freezed
abstract class PrimaryContact with _$PrimaryContact {
  const factory PrimaryContact({
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? fullName,
    @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    String? email,
  }) = _PrimaryContact;
}

@RfGroup<AdminContactInformation>()
@freezed
abstract class AdminContactInformation with _$AdminContactInformation {
  const factory AdminContactInformation({
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? firstName,
    @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
    String? lastName,
    @RfControl(validators: [RequiredValidator(), EmailValidator()])
    String? email,
  }) = _AdminContactInformation;
}

extension AddressExt on Address {
  PrimaryContact get formPrimaryContact {
    return PrimaryContact();
  }
}
