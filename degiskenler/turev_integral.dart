import 'package:math_expressions/math_expressions.dart';

void main() {
  // Kullanıcıdan giriş alalım
  String expression = "x^2 + 3*x + 1";  // Burada kullanıcıdan alacağınızı varsayın
  String operation = "türev";  // Ya da "integral" olabilir

  // Sonucu hesaplayalım
  String result = calculate(expression, operation);
  print('$operation sonucu: $result');
}

String calculate(String expression, String operation) {
  // Matematiksel ifadeyi sembolik olarak ifade etme
  Parser p = Parser();
  Expression exp = p.parse(expression);

  // x değişkenini sembolik olarak tanımlama
  Variable x = Variable('x');

  // Türev ve integral işlemleri için switch-case kullanımı
  switch (operation) {
    case 'türev':
      Expression derivative = exp.derive('x');
      return derivative.simplify().toString();
    case 'integral':
      Expression integral = exp.integrate('x');
      return integral.simplify().toString();
    default:
      return "Geçersiz işlem türü. Lütfen 'türev' veya 'integral' seçin.";
  }
}
