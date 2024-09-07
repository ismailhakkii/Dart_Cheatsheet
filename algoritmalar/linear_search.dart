// Doğrusal arama algoritması 

int linearSearch(List<int> a, int aranan) {
  for (int i = 0; i < a.length; i++) {
    if (a[i] == aranan) {
      return i; // Aranan değerin dizideki indeksini döndür
    }
  }
  return -1; // Eğer aranan değer bulunmazsa -1 döndür
}

void main() {
  // Bir dizi tanımlıyoruz
  List<int> a = [10, 23, 45, 70, 11, 15, 2, 60];

  // Kullanıcıdan aranan değeri alıyoruz
  // Kendimiz de girebiliriz mesela ben 23 girdim 
  // 23 dizimizde var ve indexi de 1
  // bize bulunan sayi 23 ve dizideki yeri 1 diyecek
  // dizedeki sırasını istersek de  
  
  int aranan=23;

  if (aranan == null) {
    print("Geçersiz giriş yaptınız.");
    return;
  }

  // Arama işlemini gerçekleştiriyoruz
  int sonuc = linearSearch(a, aranan)+1;

  if (sonuc != -1) {
    print("Bulunan sayı: $aranan, Dizideki yeri (indeks): $sonuc");
  } else {
    print("Sayı bulunamadı.");
  }
}
