import 'package:reactive_forms/reactive_forms.dart';

class FormControlWrapper<T> {
  final FormControl<T> control;

  FormControlWrapper(this.control);

  void update(T value, {bool updateParent = true, bool emitEvent = true}) {
    control.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void patch(T value, {bool updateParent = true, bool emitEvent = true}) {
    control.patchValue(value, updateParent: updateParent, emitEvent: emitEvent);
  }

  void disabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      control.markAsDisabled(updateParent: updateParent, emitEvent: emitEvent);
    } else {
      control.markAsEnabled(updateParent: updateParent, emitEvent: emitEvent);
    }
  }

  void reset(
    T value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) {
    control.reset(
      value: value,
      updateParent: updateParent,
      emitEvent: emitEvent,
      removeFocus: removeFocus,
      disabled: disabled,
    );
  }
}

class FormArrayWrapper<T> {
  final FormArray<T> control;

  FormArrayWrapper(this.control);

  // void update(
  //   T value, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  // }) {
  //   control.updateValue(
  //     value,
  //     updateParent: updateParent,
  //     emitEvent: emitEvent,
  //   );
  // }
  //
  // void patch(List<T> value, {bool updateParent = true, bool emitEvent = true}) {
  //   control.patchValue(value, updateParent: updateParent, emitEvent: emitEvent);
  // }
  //
  // void disabled(
  //   bool disabled, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  // }) {
  //   if (disabled) {
  //     control.markAsDisabled(updateParent: updateParent, emitEvent: emitEvent);
  //   } else {
  //     control.markAsEnabled(updateParent: updateParent, emitEvent: emitEvent);
  //   }
  // }
  //
  // void reset(
  //   T value, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  //   bool removeFocus = false,
  //   bool? disabled,
  // }) {
  //   control.reset(
  //     value: value,
  //     updateParent: updateParent,
  //     emitEvent: emitEvent,
  //     removeFocus: removeFocus,
  //     disabled: disabled,
  //   );
  // }
}

class FormGroupWrapper {
  final FormGroup control;

  FormGroupWrapper(this.control);

  // void update(
  //   T value, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  // }) {
  //   control.updateValue(
  //     value,
  //     updateParent: updateParent,
  //     emitEvent: emitEvent,
  //   );
  // }
  //
  // void patch(List<T> value, {bool updateParent = true, bool emitEvent = true}) {
  //   control.patchValue(value, updateParent: updateParent, emitEvent: emitEvent);
  // }
  //
  // void disabled(
  //   bool disabled, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  // }) {
  //   if (disabled) {
  //     control.markAsDisabled(updateParent: updateParent, emitEvent: emitEvent);
  //   } else {
  //     control.markAsEnabled(updateParent: updateParent, emitEvent: emitEvent);
  //   }
  // }
  //
  // void reset(
  //   T value, {
  //   bool updateParent = true,
  //   bool emitEvent = true,
  //   bool removeFocus = false,
  //   bool? disabled,
  // }) {
  //   control.reset(
  //     value: value,
  //     updateParent: updateParent,
  //     emitEvent: emitEvent,
  //     removeFocus: removeFocus,
  //     disabled: disabled,
  //   );
  // }
}
