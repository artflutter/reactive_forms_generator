## [6.0.0]

* Output model generation with support with smart nullability detection.
  Compare implementation
    - https://github.com/artflutter/reactive_forms_generator/blob/master/packages/reactive_forms_generator/example/lib/docs/login/login.dart
    - https://github.com/artflutter/reactive_forms_generator/blob/master/packages/reactive_forms_generator/example/lib/docs/login/login_output.dart
      Technically this release should not bring any braking changes but I decided to do a major
      version bump for safety.
      By default generated code will have it's default behavior, to start migration you need to
      migrate from `@Rf()` to `@Rf(output: true)`

## [6.0.0-beta.8]

* requiredValidators

## [6.0.0-beta.7]

* output `false` by default

## [6.0.0-beta.6]

* export `DeepCollectionEquality`

## [6.0.0-beta.5]

* equalsTo method

## [6.0.0-beta.3]

* improved logging

## [6.0.0-beta.2]

* improved logging

## [6.0.0-beta.1]

* BREAKING CHANGE: before generating code make sure to replace @Rf() with @Rf(output: false)

## [6.0.0-beta.0]

* output

## [5.0.2]

* equalsTo method

## [5.0.0]

* rf17

## [4.4.0-beta.0]

* toggleEnabled method added.

## [4.3.0]

* fix for https://github.com/artflutter/reactive_forms_generator/issues/143

## [4.2.0]

* FormModel submit

## [4.0.0]

* annotation shorthands support - this is non-breaking change, old annotations will continue
  working.
  just a major bump for preventing unexpected auto updates

## [3.0.0]

* rf 16 migration

## [2.0.0]

* rf 15 migration

## [1.1.0]

* RF 14.3.0

## [1.0.0]

* Internal refactoring. Everything should work as previously but there is a small chance of breaking
  changes

## [0.14.0-beta]

* fixes and refactoring

## [0.13.2]

* more methods in FormModel interface

## [0.13.1]

* fix for https://github.com/artflutter/reactive_forms_generator/issues/66

## [0.13.0]

* release

## [0.13.0-beta]

* package update

## [0.12.0-beta]

* re-export reactive_forms

## [0.11.0-beta]

* re-export flutter/widgets.dart

## [0.10.0-beta]

* typed validators for FormGroup

## [0.9.0-beta]

* reactive_forms 13

## [0.8.0-beta]

* Flutter 3

## [0.7.0-beta]

* FormArrayAnnotation with generic typing

## [0.6.0-beta]

* FormControlAnnotation with generic typing

## [0.5.0-beta]

* ExtendedControl model

## [0.4.0-beta]

* reactive_forms bump

## [0.3.2-beta]

* name parameter added

## [0.3.1-beta]

* FormModel interface

## [0.3.0-beta]

* rf11

## [0.2.0-beta]

* package update

## [0.1.1-beta]

* package update

## [0.1.0-beta]

* package update

## [0.0.5-beta]

* extended FormArray annotation

## [0.0.4-beta]

* asyncDebounceTime and disable support

## [0.0.3-beta]

* FormGroup support

## [0.0.2-beta]

* small fix

## [0.0.1-beta]

* initial release.
