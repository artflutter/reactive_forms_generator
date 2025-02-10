const defaultRequiredValidators = ['RequiredValidator()'];

class ReactiveFormAnnotation {
  final String? name;
  final bool output;
  final List<String> requiredValidators;

  const ReactiveFormAnnotation({
    this.name,
    this.output = false,
    this.requiredValidators = defaultRequiredValidators,
  });
}

typedef Rf = ReactiveFormAnnotation;
