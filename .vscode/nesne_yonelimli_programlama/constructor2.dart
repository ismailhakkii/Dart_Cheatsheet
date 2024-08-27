class Ogrenci {

  int ogrNo; // Instance veya Field variable
  String adi;
  bool? erkekMi; // Bu bool tipinin nullable olduğunu belirttim.

  // Parametreli kurucu method
  Ogrenci(this.ogrNo, this.adi, this.erkekMi) {
    print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }

  // Cinsiyet bilgisi olmayan kurucu method
  Ogrenci.cinsiyetBilgisiOlmayanKurucu(this.ogrNo, this.adi) {
    print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
    this.erkekMi = null; // Cinsiyet bilgisi yok, bu nedenle null atanıyor.
  }

  // Cinsiyet bilgisi olan kurucu method
  Ogrenci.cinsiyetBilgisiOlanKurucu(this.ogrNo, this.adi, this.erkekMi) {
    print("Ogrenci sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }

  // Öğrenci bilgilerini yazdıran method
  void bilgileriYazdir() {
    String cinsiyet = (this.erkekMi == null) ? "Belirtilmemiş" : (this.erkekMi! ? "Erkek" : "Kadın");
    print("Ogrenci numarası: ${this.ogrNo}, Adı: ${this.adi}, Cinsiyeti: $cinsiyet");
  }

  // Yeni örnek: Öğrencinin ders çalıştığını simüle eden method
  void dersCalis() {
    print("${this.adi} ders çalışıyor.");
  }

  // Yeni örnek: Öğrencinin uyuduğunu simüle eden method
  void uyu() {
    print("${this.adi} uyuyor.");
  }
}

main(List<String> args) {
  
  // İsmail Hakkı adında bir öğrenci nesnesi oluşturuyoruz.
  var ismailHakki = Ogrenci(10, "İsmail Hakkı Kemikli", true);

  // Öğrencinin bilgilerini yazdırıyoruz.
  ismailHakki.bilgileriYazdir();

  // Hasan adında başka bir öğrenci nesnesi oluşturuyoruz.
  var hasan = Ogrenci(20, "Hasan Korkmaz", true);
  hasan.bilgileriYazdir();

  // Cinsiyet bilgisi olmayan bir öğrenci nesnesi oluşturuyoruz.
  var ayse = Ogrenci.cinsiyetBilgisiOlmayanKurucu(40, "Ayşe Yılmaz");
  ayse.bilgileriYazdir();

  // Cinsiyet bilgisi olan bir öğrenci nesnesi oluşturuyoruz.
  var ali = Ogrenci.cinsiyetBilgisiOlanKurucu(50, "Ali Özcan", true);
  ali.bilgileriYazdir();

  // Yeni bir örnek: Cinsiyeti bilinmeyen bir öğrenci
  var betul = Ogrenci.cinsiyetBilgisiOlmayanKurucu(60, "Betül Demir");
  betul.bilgileriYazdir();

  // Yeni bir örnek: Farklı parametrelerle başka bir öğrenci
  var mehmet = Ogrenci(70, "Mehmet Kara", true);
  mehmet.bilgileriYazdir();

}
