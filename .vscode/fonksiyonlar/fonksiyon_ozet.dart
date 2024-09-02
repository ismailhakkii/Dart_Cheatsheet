

void main() {
  // main() fonksiyonu, programın çalıştığı ilk yer olarak bilinir.
  // Dart'ta her programın bir main() fonksiyonu olmalıdır.

  // Basit bir fonksiyon çağrısı
  print(greeting('ismail')); // 'Ali' argümanını fonksiyona gönderiyoruz.

  // Parametreli bir fonksiyonun örneği
  int sumResult = sum(10, 20); 
  print('Toplam: $sumResult'); // Toplam: 30

  // İsteğe bağlı (optional) parametreli bir fonksiyon
  print(introduce('İsmail Hakkı', 25)); // Merhaba, benim adım İsmail Hakkı ve 25 yaşındayım.
  print(introduce('Ahmet')); // Merhaba, benim adım Ahmet ve yaşımı paylaşmadım.

  // Fat arrow (=>) kullanarak kısa fonksiyon tanımlama
  print(square(4)); // 16

  // Recursive (kendini çağıran) fonksiyon
  print(factorial(5)); // 120

  // Anonim (isimsiz) fonksiyon örneği
  var list = [1, 2, 3, 4];
  list.forEach((element) {
    print('Element: $element');
  });

  // Lexical scope örneği
  var counter = makeCounter();
  print(counter()); // 1
  print(counter()); // 2
}

// Fonksiyon tanımlama: Bu fonksiyon bir selamlamayı geri döndürür.
String greeting(String name) {
  return 'Merhaba, $name!';
}

// Parametreli bir fonksiyon: Bu fonksiyon iki sayının toplamını döndürür.
int sum(int a, int b) {
  return a + b;
}

// İsteğe bağlı (optional) parametreler: yaş parametresi isteğe bağlıdır.
String introduce(String name, [int? age]) {
  // String interpolation kullanılarak $ işareti ile değerler stringe eklenir.
  if (age != null) {
    return 'Merhaba, benim adım $name ve $age yaşındayım.';
  } else {
    return 'Merhaba, benim adım $name ve yaşımı paylaşmadım.';
  }
}

// Fat arrow (=>) kullanarak kısa bir fonksiyon tanımlama
int square(int num) => num * num;

// Recursive (kendini çağıran) fonksiyon: Bu fonksiyon faktöriyel hesaplar.
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// Lexical scope ve closure örneği
Function makeCounter() {
  int count = 0;

  // Bu closure (kapanış) dıştaki 'count' değişkenini yakalar ve artırır.
  return () {
    count += 1;
    return count;
  };
}
