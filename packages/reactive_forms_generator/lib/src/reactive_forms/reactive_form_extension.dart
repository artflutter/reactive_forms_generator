import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_inherited_streamer.dart';
import 'package:recase/recase.dart';

class ReactiveFormExtension {
  final ReactiveInheritedStreamer reactiveInheritedStreamer;

  const ReactiveFormExtension(this.reactiveInheritedStreamer);

  String get className => 'Reactive${formGenerator.className}';

  FormGenerator get formGenerator => reactiveInheritedStreamer.formGenerator;

  Code get generate => Code('''
        extension Reactive${className}Ext on BuildContext {
          ${formGenerator.className}${reactiveInheritedStreamer.formGenerator.element.generics}? ${formGenerator.className.camelCase}Watch${reactiveInheritedStreamer.formGenerator.element.fullGenerics}() => $className.of${reactiveInheritedStreamer.formGenerator.element.generics}(this);
        
          ${formGenerator.className}${reactiveInheritedStreamer.formGenerator.element.generics}? ${formGenerator.className.camelCase}Read${reactiveInheritedStreamer.formGenerator.element.fullGenerics}() => $className.of${reactiveInheritedStreamer.formGenerator.element.generics}(this, listen: false);
        }
      ''');
}
