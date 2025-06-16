class Expression {
  final String original;
  final double result;
  final int startIndex;
  final int endIndex;

  Expression({
    required this.original,
    required this.result,
    required this.startIndex,
    required this.endIndex,
  });
}

class CalculationResult {
  final List<Expression> expressions;
  final double total;

  CalculationResult({
    required this.expressions,
    required this.total,
  });
}
