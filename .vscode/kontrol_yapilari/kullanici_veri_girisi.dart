import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz: ");
  String? ad = stdin.readLineSync();
  
  print("Soyadınızı giriniz: ");
  String? soyad = stdin.readLineSync();

  // Null ve boşluk kontrolü 
  if (ad != null && ad.isNotEmpty && soyad != null && soyad.isNotEmpty) {
    print("Girilen ad: $ad");
    print("Girilen soyad: $soyad");
  } else {
    print("Geçerli bir ad ve soyad girmediniz.");
  }
}
