import 'dart:io';

void main() {
  // var anahtar kelimesi, değişkenin türünü otomatik olarak belirler.
  var isim = 'İsmail'; 
  isim = 'Hakkı'; // var ile tanımlandığı için değeri değiştirilebilir.

  // const anahtar kelimesi ile tanımlanan değişkenler, derleme zamanında sabitlenir.
  const int yas = 30; 
  // yas = 31; // Bu satır hata verecektir çünkü const ile tanımlanan değişkenler değiştirilemez.

  // final anahtar kelimesi ile tanımlanan değişkenler ilk atamadan sonra değiştirilemez.
  final String sehir = 'Kayseri'; 
  // sehir = 'İstanbul'; // Bu satır da hata verecektir çünkü final ile tanımlanan değişkenler de değiştirilemez.

  // late anahtar kelimesi, bir değişkenin geç atanacağını belirtir, ama kesinlikle atanmalıdır.
  late String ulke; 
  ulke = 'Türkiye'; // late ile tanımlandığı için değerini daha sonra atayabiliriz.

  // int anahtar kelimesi ile tam sayı türünde bir değişken tanımlıyoruz.
  int yil = 2024;
  yil = 2025; // int ile tanımlanan değişkenin değeri değiştirilebilir.

  // Çıktıları yazdıralım
  print('İsim: $isim');
  print('Yaş: $yas');
  print('Şehir: $sehir');
  print('Ülke: $ulke');
  print('Yıl: $yil');
  
  // Ek olarak, kullanıcıdan veri alalım ve işleyelim
  print('Lütfen bir isim girin:');
  String? girilenIsim = stdin.readLineSync(); // Kullanıcıdan isim al
  print('Girilen isim: $girilenIsim');
}
