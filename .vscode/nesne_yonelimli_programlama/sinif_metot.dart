// Sınıfın amacı: Bir kişiyi temsil etmek
class Insan {
  // Alanlar (Özellikler)
  String ad; // Kişinin adı
  String soyad; // Kişinin soyadı
  int yas; // Kişinin yaşı

  // Kurucu metot (Constructor)
  Insan({required this.ad, required this.soyad, required this.yas});

  // Bir kişi hakkında bilgi döndüren metot
  void bilgileriYazdir() {
    print("Ad: $ad, Soyad: $soyad, Yaş: $yas");
  }

  // Yaşı artırmak için bir metot
  void yasArttir() {
    yas += 1;
    print("Tebrikler $ad! Yeni yaşın: $yas");
  }
}

// Sınıftan türeyen bir alt sınıf
class Ogrenci extends Insan {
  // Öğrencinin numarası
  int ogrenciNo;

  // Kurucu metot (Constructor)
  Ogrenci({required String ad, required String soyad, required int yas, required this.ogrenciNo})
      : super(ad: ad, soyad: soyad, yas: yas);

  // Öğrencinin bilgilerini yazdıran metot
  @override
  void bilgileriYazdir() {
    super.bilgileriYazdir();
    print("Öğrenci Numarası: $ogrenciNo");
  }

  // Öğrencinin sınıf geçme durumu
  void sinifGectiMi(bool basariliMi) {
    if (basariliMi) {
      print("$ad sınıfı geçti!");
    } else {
      print("$ad sınıfı geçemedi, çalışmaya devam et!");
    }
  }
}

// Programın ana fonksiyonu (Main function)
void main() {
  // Yeni bir insan oluşturuluyor
  var ismail = Insan(ad: "İsmail", soyad: "Hakkı", yas: 30);
  ismail.bilgileriYazdir();
  ismail.yasArttir();

  // Yeni bir öğrenci oluşturuluyor
  var ahmet = Ogrenci(ad: "Ahmet", soyad: "Yılmaz", yas: 20, ogrenciNo: 12345);
  ahmet.bilgileriYazdir();
  ahmet.sinifGectiMi(true);
}
