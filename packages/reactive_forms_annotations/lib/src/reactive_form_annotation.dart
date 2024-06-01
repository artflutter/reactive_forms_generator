class ReactiveFormAnnotation {
  final String? name;
  final bool output;
  final String requiredValidatorName;

  const ReactiveFormAnnotation({
    this.name,
    this.output = true,
    this.requiredValidatorName = 'RequiredValidator',
  });
}

typedef Rf = ReactiveFormAnnotation;
