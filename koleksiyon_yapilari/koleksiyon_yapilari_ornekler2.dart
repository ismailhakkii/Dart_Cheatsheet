/*
// soru 2 
// Keyleri string değerleri dynamic olan bir map oluştur bu map yapısında bilgisayarın özellikleri tutulsun. 
void main(){
  // bir map yapısı  nasıl oluşur : 
  //var bilgiler = {} 
 /* Böyle de yapabiliriz.  
 var bilgisayarBilgileri= <String, dynamic>();
  Bilgisayarbilgileri['Marka']="Dell";
    Bilgisayarbilgileri['işlemci sayisi']=8;
  Bilgisayarbilgileri['RAm']="16 GB ";

  */
  var bilgisayarBilgileri= <String, dynamic>{
    "Marka":"Dell",
    "Ram":16,
    "Ekran kartı":"GTX 1060",
    "İşlemci SAyisi": 8,
    "SSD": false
  };
  print(bilgisayarBilgileri);
  for (var entry in bilgisayarBilgileri.entries){
    print("${entry.key} : ${entry.value} ");
  }


}
*/
// soru 3
// kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun kullanıcı -1 değerini
// girdiği zaman girilen sayıların ortalamasını yazdır.
/* import 'dart:io';

void main(List<String> args) {
  List<int> sayilar = []; // Değiştirilebilir bir liste oluşturun
  int sayi;

  do {
    print("Sayi giriniz (Çıkmak için -1 girin):");
    sayi = int.parse(stdin.readLineSync()!); // Kullanıcının girdiği değeri al
    if (sayi != -1) {
      sayilar.add(sayi); // Sayıyı listeye ekle
    }
  } while (sayi != -1);

  // Liste boş değilse ortalamayı hesapla
  if (sayilar.isNotEmpty) {
    int toplam = sayilar.reduce((a, b) => a + b); // Toplamı hesapla
    double ortalama = toplam / sayilar.length; // Ortalamayı hesapla
    print("Kullanıcının girdiği sayıların uzunluğu: ${sayilar.length}");
    print("Sayıların ortalaması: $ortalama");
  } else {
    print("Liste boş, ortalama hesaplanamaz.");
  } 
 } 
 */
// Soru 4
// Adınızı soyadınızı ve sevfıdıhınız renkleri tutan bir map yapısı olusturun
//Sevdiğiniz renkler liste şeklinde olmalı Aynı yapıda bir map daha olusturun
//bu iki yapıyı tek bir liste halinde yazdırın.

void main() {
  var myMap = {
    "ad": "ismail",
    "Soyad": "Kemikli",
    "renkler": ['mavi, yeşil']
  };
  var baskaMap = {
    "ad": " hakkı",
    "soyad": "enginar",
    "renkler": ["sarı", "kırmızı"]
  };
  var liste = [];
  liste.add(myMap);
  liste.add(baskaMap);

  print("birleşik liste $liste");
  print("listemizdeki o renk ${liste[1]['renkler'][1]}");
}
