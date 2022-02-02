import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_method.dart';

class ReactiveFormInsertMethod extends ReactiveFormMethod {
  ReactiveFormInsertMethod(ParameterElement field) : super(field);

  @override
  Method? formGroupArrayMethod() {
    // if (deliveryListDeliveryPointForm.length < i) {
    //   addDeliveryListItem(value);
    //   return;
    // }
    //
    // final item = DeliveryPointForm(
    //   value,
    //   form,
    //   pathBuilder('deliveryList.$i'),
    // );
    //
    // deliveryListDeliveryPointForm.insert(i, item);
    //
    // deliveryListDeliveryPointForm.asMap().forEach((k, v) {
    //   if (k > i) {
    //     deliveryListDeliveryPointForm[k] = DeliveryPointForm(
    //       v.model,
    //       form,
    //       pathBuilder("deliveryList.$k"),
    //     );
    //   }
    // });
    //
    // deliveryListControl.insert(
    //   i,
    //   item.formElements(),
    //   updateParent: updateParent,
    //   emitEvent: emitEvent,
    // );
    return methodEntity.rebuild((b) => b..body = Code('''
      if (deliveryListDeliveryPointForm.length < i) {
        ${field.addListItemName}(value);
        return;
      }
  
      final item = ${field.className}(
        value,
        form,
        pathBuilder('${field.fieldName}.\$i'),
      );
  
      ${field.name}${field.className}.insert(i, item);
  
      ${field.name}${field.className}.asMap().forEach((k, v) {
        if (k > i) {
          ${field.name}${field.className}[k] = ${field.className}(
            v.model,
            form,
            pathBuilder("${field.fieldName}.\$k"),
          );
        }
      });
  
      ${field.fieldControlName}${field.nullabilitySuffix}.insert(
        i,
        item.formElements(),
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    '''));

    // ${field.name}${field.className}.clear();
    // ${field.fieldControlName}${field.nullabilitySuffix}.clear(
    // updateParent: updateParent,
    // emitEvent: emitEvent);
  }

  @override
  Method? defaultMethod() => null;

  Method get methodEntity => Method(
        (b) => b
          ..name = field.insertMethodName
          ..lambda = false
          ..requiredParameters.addAll([
            Parameter(
              (b) => b
                ..name = 'i'
                ..type = const Reference('int'),
            ),
            Parameter(
              (b) => b
                ..name = 'value'
                ..type = Reference(
                  field.typeParameter.getDisplayString(withNullability: false),
                ),
            ),
          ])
          ..optionalParameters.addAll([
            Parameter(
              (b) => b
                ..name = 'updateParent'
                ..named = true
                ..defaultTo = const Code('true')
                ..type = const Reference('bool'),
            ),
            Parameter(
              (b) => b
                ..name = 'emitEvent'
                ..named = true
                ..defaultTo = const Code('true')
                ..type = const Reference('bool'),
            ),
          ])
          ..returns = const Reference('void'),
      );
}
