import 'dart:io';

// İkili arama algoritması fonksiyonu
int binarySearch(List<int> a, int aranan) {
  int eb = a.length;
  int ek = -1;
  while (eb - ek > 1) {
    int bakilan = (eb + ek) ~/ 2; // Orta noktayı hesapla (int bölme)
    
    if (a[bakilan] == aranan) {
      return bakilan; // Aranan değerin indeksini döndür
    } else if (a[bakilan] < aranan) {
      ek = bakilan;
    } else {
      eb = bakilan;
    }
  }
  return -1; // Eğer değer bulunamadıysa -1 döndür
}

// Dizinin sıralı olup olmadığını kontrol eden fonksiyon
bool isSorted(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  // Sıralı bir dizi
  List<int> a = [2, 5, 7, 9, 12, 15, 34, 76, 87, 123];
  
  // Kullanıcıdan aranan değeri alalım
  print("Lütfen aramak istediğiniz sayıyı giriniz: ");
  int? aranan = int.tryParse(stdin.readLineSync() ?? '');

  if (aranan == null) {
    print("Geçersiz giriş yaptınız.");
    return;
  }

  // Dizinin sıralı olup olmadığını kontrol edelim
  if (!isSorted(a)) {
    print("Dizi sıralı değil. İkili arama için sıralı bir dizi gereklidir.");
    return;
  }

  // Arama işlemini yapalım
  int sonuc = binarySearch(a, aranan);

  if (sonuc != -1) {
    print("Bulunan sayı: $aranan, Dizideki yeri (indeks): $sonuc");
  } else {
    print("Sayı bulunamadı.");
  }
}
