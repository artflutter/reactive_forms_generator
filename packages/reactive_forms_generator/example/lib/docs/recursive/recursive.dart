import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'recursive.freezed.dart';

part 'recursive.gform.dart';

@Rf(output: false)
@freezed
@RfGroup()
abstract class SecuredArea with _$SecuredArea {
  const factory SecuredArea({
    String? id,
    SecuredArea? securedArea,
    ParcelSystem? parcelSystem,
    @RfArray<SecuredArea>() @Default([]) List<SecuredArea> subSecuredAreas,
  }) = _SecuredArea;
}

@freezed
@RfGroup<ParcelSystem>()
abstract class ParcelSystem with _$ParcelSystem {
  const factory ParcelSystem({
    @RfControl<bool>() @Default(false) bool hasParcelSystem,
    @Default(ParcelSystemData()) ParcelSystemData data,
  }) = _ParcelSystem;
}

@freezed
@RfGroup<ParcelSystemData>()
abstract class ParcelSystemData with _$ParcelSystemData {
  const factory ParcelSystemData({
    String? id,
  }) = _ParcelSystemData;
}
