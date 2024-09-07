//Soru 5 
//0 100 arası rastgele sayılarla 1000 elemanlı listede sakla ve hangi sayıdan kaç tane var bul. 
// ekrana yazdır 
// örneğin 40 5 kere üretilmiştir 
//        94  6 kere üretilmiştir
import 'dart:math';

void main(List<String> args) {
  Random random = Random(); // Random nesnesi oluşturduk
  List<int> sayilar = List.filled(1000, 0);

  // Rastgele sayılarla listeyi doldur
  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] = random.nextInt(101); // 0 ile 100 arasında rastgele sayı
  }

  Map<int, int> tekrarMap = {}; // Sayıların tekrar sayısını tutacak Map

  // Sayıların tekrar sayılarını hesapla
  for (int sayi in sayilar) {
    tekrarMap[sayi] = (tekrarMap[sayi] ?? 0) + 1;
  }

  // Sonuçlar
  print("Üretilen sayılar: $sayilar");
  print("Her sayının tekrar sayısı:");
  for (var entry in tekrarMap.entries) {
    if (entry.value > 1) { // Sadece 1'den fazla tekrar eden sayıları yazdır
      print('${entry.key} sayısı ${entry.value} kere üretilmiştir');
    }
  }
}


