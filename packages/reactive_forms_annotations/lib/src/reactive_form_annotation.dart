class ReactiveFormAnnotation {
  final String? name;
  final bool output;
  final String requiredValidatorName;

  const ReactiveFormAnnotation({
    this.name,
    this.output = false,
    this.requiredValidatorName = 'RequiredValidator',
  });
}

typedef Rf = ReactiveFormAnnotation;
