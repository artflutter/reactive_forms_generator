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
    @RfArray<SecuredArea>() @Default([]) List<SecuredArea> subSecuredAreas,
  }) = _SecuredArea;
}
