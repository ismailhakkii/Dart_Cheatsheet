void main(List<String> args) {
  // Tek sayılar seti oluşturma
  Set<int> tekSayilar = Set();
  tekSayilar.add(1);
  tekSayilar.add(7);
  tekSayilar.add(9);
  tekSayilar.add(3);
  tekSayilar.add(7);
  tekSayilar.add(5);
  tekSayilar.add(5);
  tekSayilar.add(1);

  print("Tek Sayılar: $tekSayilar");

  // Çift sayılar seti oluşturma
  var ciftSayilar = <int>{};
  ciftSayilar.add(2);
  ciftSayilar.add(6);
  ciftSayilar.add(12);
  ciftSayilar.add(8);
  ciftSayilar.add(4);
  ciftSayilar.add(2);
  ciftSayilar.add(6);

  print("Çift Sayılar: $ciftSayilar");

  // Tek sayıları ekrana yazdırma
  for (var s1 in tekSayilar) {
    print("Tek sayı: $s1");
  }

  // Tüm sayıları birleştirme
  var sayilar = <int>{};
  sayilar.addAll(ciftSayilar);
  sayilar.addAll(tekSayilar);

  print("Birleştirilmiş Sayılar: $sayilar");

  // Sayılar listesini temizleme
  sayilar.clear();

  // Sayılara ekleme yapma
  sayilar = <int>{...ciftSayilar, ...tekSayilar, ...[23, 25, 5, 48]};

  // Numaralar seti oluşturma
  var numaralar = Set.from([8, 8, 9, 11, 13, 19]);
  var numaralar2 = Set.from({8, 8, 9, 11, 6, 6, 5});

  print("Numaralar 2: $numaralar2");
  print("Sayılar: $sayilar");
  print("Numaralar: $numaralar");

  // Sayılar listesi oluşturup sıralama
  var sayilarList = sayilar.toList(); // Set'i Listeye dönüştürme
  sayilarList.sort(); // Listeyi sıralama
  print("Sıralanmış Sayılar: $sayilarList");
}
