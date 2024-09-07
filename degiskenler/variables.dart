// Dart Programlama Dili
// Değişkenler ve Temel Operasyonlar

void main(List<String> args) {
  // Tam sayı (int) değişken tanımlama. 32 bitlik -2.147.483.648 ile 2.147.483.647 arasında
  int number1 = 5;

  // Ondalıklı sayı (double) değişken tanımlama 6 yazmamıza rağmen 6.0 olarak çıktı alacağız.
  double number2 = 6;

  // Varsayılan olarak null olabilen bir değişken (dynamic type)
  var a;
  print(a); // null olarak ekrana çıktı verir 

  // Boolean (true/false) değişken tanımlama
  bool isNegative = false;

  // String (metin) değişken tanımlama
  String word = "empty";

  // String'in uzunluğunu alır
  int wordLength = word.length;
  print("Word length is $wordLength");

  // null safety sağlamak için String'e değer atanmış olmalı
  const String fixedString = 'helloworld';

  // String'i parçalar (split) ve bir liste olarak döner
  final List<String> splitted = fixedString.split('');
  print(splitted); // ['h', 'e', 'l', 'l', 'o', 'w', 'o', 'r', 'l', 'd']
  print("number1 = $number1 number2 = $number2");
  // String interpolasyonu kullanarak ve .toString() metodu ile string birleştirme
  print("number1 + number2 = ${number2 + number1}" + isNegative.toString());

  // İki string'i birleştirme
  print("left" + "right");
}
