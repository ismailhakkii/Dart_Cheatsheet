import 'dart:io'; // Standart girdi-çıktı için gerekli

void main() {
  // Kullanıcıdan sayı mı metin mi seçeceğini soralım
  print("Sayı mı, metin mi? (sayı/metin):");
  String? secim = stdin.readLineSync(); // Kullanıcıdan seçim al

  if (secim == 'sayı') {
    // Eğer kullanıcı sayı seçtiyse, sayıları toplayacağız
    List<int> sayilar = []; // Sayıları tutmak için liste

    while (true) {
      print("Bir sayı girin (bitirmek için '.' girin):");
      String? girdi = stdin.readLineSync(); // Kullanıcıdan girdi al

      if (girdi == '.') {
        break; // '.' girildiğinde döngüyü kır
      }

      // Girilen değeri sayıya çevirip listeye ekleyelim
      int sayi = int.parse(girdi!);
      sayilar.add(sayi);
    }

    // Listeyi Bubble Sort ile sıralayalım
    bubbleSort(sayilar);

    // Sıralanmış listeyi yazdıralım
    print("Sıralanmış sayılar: $sayilar");

  } else if (secim == 'metin') {
    // Eğer kullanıcı metin seçtiyse, metinleri toplayacağız
    List<String> metinler = []; // Metinleri tutmak için liste

    while (true) {
      print("Bir metin girin (bitirmek için '.' girin):");
      String? girdi = stdin.readLineSync(); // Kullanıcıdan girdi al

      if (girdi == '.') {
        break; // '.' girildiğinde döngüyü kır
      }

      // Girilen metni listeye ekleyelim
      metinler.add(girdi!);
    }

    // Listeyi Bubble Sort ile sıralayalım
    bubbleSort(metinler);

    // Sıralanmış listeyi yazdıralım
    print("Sıralanmış metinler: $metinler");

  } else {
    // Geçersiz bir seçim yapılırsa
    print("Geçersiz seçim yaptınız. Lütfen 'sayı' veya 'metin' yazın.");
  }
}

// Bubble Sort algoritması
void bubbleSort<T extends Comparable>(List<T> liste) {
  int n = liste.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (liste[j].compareTo(liste[j + 1]) > 0) {
        // Değiş tokuş (Swap)
        T temp = liste[j];
        liste[j] = liste[j + 1];
        liste[j + 1] = temp;
      }
    }
  }
}
