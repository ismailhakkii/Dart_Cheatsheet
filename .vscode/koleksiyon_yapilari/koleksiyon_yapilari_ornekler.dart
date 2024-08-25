import 'dart:math';

// Soru 1
// 0-100 arası rastgele sayı oluştur 100 elemanlı bir listede sakla.
void main() {
  Random random = Random();
  List<int> sayilar = List.filled(100, 0);
  int toplam = 0;
  int setToplami = 0;

  print("sayilar listemiizin ilk hali\n$sayilar");

  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] = random.nextInt(101);
    toplam = toplam + sayilar[i];
  }

  print(
      "RAstgele 100 sayş ile doldurduktan sonra sayilar listemiz \n$sayilar ve toplamı= $toplam");
//  Tekrar eden sayilarin olmamasını istiyorsak:

  print("Sete Dönüşmüş hali");
  var seteDonusmusu = sayilar.toSet();

  print(seteDonusmusu);

  for (var sayi in seteDonusmusu) {
    setToplami += sayi;
  }

  print(setToplami);
// bu şekilde de olabilir
//var seteDonusmusu=Set.from(sayilar);
}
