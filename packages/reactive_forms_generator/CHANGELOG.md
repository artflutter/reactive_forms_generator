## [0.24.0-beta]

* fixes and refactoring

## [0.23.4]

* bugfix for https://github.com/artflutter/reactive_forms_generator/issues/76

## [0.23.3]

* fix for positional unannotated fields

## [0.23.2]

* didUpdateWidget for form builders

## [0.23.1]

* https://github.com/artflutter/reactive_forms_generator/issues/72

## [0.23.0]

* release

## [0.23.0-beta]

* fix for https://github.com/artflutter/reactive_forms_generator/issues/59

## [0.22.0-beta]

* analyzer 5.2.0

## [0.21.0-beta]

* analyzer 5

## [0.20.0-beta]

* generics support
* package update

## [0.19.0-beta]

* package update

## [0.18.0-beta]

* initState method for *FormBuilder class
* *SetDisabled helper methods for all controls
* *ControlValue accessors are private now because it is unsafe to call them on non valid form
* added additional failsafe by falling back to default values on required fields which have default value in model(for
  strings only)

## [0.17.2-beta]

* copyWithPath method to reduce `model` calls which could be unsafe on non valid form

## [0.17.1-beta]

* dispose form

## [0.17.0-beta]

* update generator name for easier configuration in build.yaml

## [0.16.0-beta]

* typed validators for FormGroup

## [0.15.0-beta]

* bugfix: FormGroupAnnotation params were skipped
* bugfix: updated initialization flow

## [0.14.1-beta]

* bump dart version

## [0.14.0-beta]

* Flutter 3

## [0.13.0-beta]

* replace ReactiveForm with ReactiveFormBuilder to avoid rebuilds and bugs

## [0.12.1-beta]

* never type support

## [0.12.0-beta]

* typed form control annotation support

## [0.11.0-beta]

* widget for handling array of forms items see
  packages/reactive_forms_generator/example/lib/docs/mailing_list/delivery_route_form.dart for example of use

## [0.10.0-beta]

* widget for handling array of items see
  packages/reactive_forms_generator/example/lib/docs/mailing_list/mailing_list_form.dart for example of use

## [0.9.8-beta]

* bugfix

## [0.9.7-beta]

* ignore for file annotations

## [0.9.6-beta]

* model nullability control improvements and bugfixes

## [0.9.5-beta]

* array insert method

## [0.9.4-beta]

* bugfixes

## [0.9.3-beta]

* bugfixes
* array clear method

## [0.9.2-beta]

* bugfixes

## [0.9.1-beta]

* more array helper methods
* bugfixes(if you are working with arrays do not use form methods - use only generated one)

## [0.9.0-beta]

**POSSIBLE BREAKING CHANGE**

* experimenting with making model nullable for `*FormBuilder`

## [0.8.0-beta]

* analyzer 3+ support

## [0.7.0-beta]

* contains and remove method refactored

## [0.6.1-beta]

* FormModel interface

## [0.6.0-beta]

* subforms support
* reactive-forms 11

## [0.5.0-beta]

* package updates

## [0.4.0-beta]

**BREAKING CHANGE**

* made *.gform.dart a part file check README
  file https://github.com/artflutter/reactive_forms_generator#run-the-generator
* `const` constructors

## [0.3.2-beta]

* [control]Remove methods
* [control]ValueUpdate methods
* [control]ValuePatch methods
* [control]ValueReset methods
* updateValue method
* resetValue method
* reset method

## [0.3.1-beta]

* fix for https://github.com/artflutter/reactive_forms_generator/issues/11

## [0.3.0-beta]

* package update

## [0.2.2-beta]

* removed redundant getters generated on non-annotated fields

## [0.2.1-beta]

* fixed processing non annotated parameters
* improved freezed support with private constructors

## [0.2.0-beta]

* analyzer 2.2.0 support

## [0.1.1-beta]

* generate method to add FormGroup item to array

## [0.1.0-beta]

**BREAKING CHANGE**

* repositioning of annotations
* Freezed support

## [0.0.15-beta]

* generate method to add item to array

## [0.0.14-beta]

* extended array of form groups support
* bugfixes

## [0.0.13-beta]

* bugfixes for array support
* bugfixes for form groups

## [0.0.12-beta]

* bugfixes for form groups
* form group example

## [0.0.11-beta]

* improved support of array types

## [0.0.10-beta]

* quick fix

## [0.0.9-beta]

* array of form groups support

## [0.0.8-beta]

* asyncDebounceTime and disable support

## [0.0.7-beta]

* FormGroup support

## [0.0.6-beta]

* FormControl type fix

## [0.0.5-beta]

* hardcoded value fix

## [0.0.4-beta]

* re-import imports from model

## [0.0.3-beta]

* pascal case fix

## [0.0.2-beta]

* small fix

## [0.0.1-beta]

* initial release.
