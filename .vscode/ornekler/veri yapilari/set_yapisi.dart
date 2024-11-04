void main() {
  // Bir set oluşturuyoruz
  Set<int> sayilar = {1, 2, 3, 4, 5};

  // Aynı elemanı eklemeye çalışalım
  sayilar.add(5);  // 5 zaten set'te olduğundan eklenmez

  // Set'e yeni bir eleman ekleyelim
  sayilar.add(6);

  // Set'in elemanlarını yazdıralım
  print('Set içindeki elemanlar: $sayilar');

  // Set'ten bir eleman çıkaralım
  sayilar.remove(3);
  print('3 çıkarıldıktan sonra set: $sayilar');

  // Set içinde bir elemanın olup olmadığını kontrol edelim
  bool varMi = sayilar.contains(4);
  print('Set içinde 4 var mı? $varMi');

  // Set'in uzunluğunu bulalım
  print('Set\'in uzunluğu: ${sayilar.length}');

  // Set'i tamamen temizleyelim
  sayilar.clear();
  print('Set temizlendikten sonra: $sayilar');
// string için ise: 
  Set <String> sehirler = {"istanbul","Sivas"};
print(sehirler);
sehirler.remove('Sivas');
print(sehirler);
sehirler.add("ankara");
sehirler.add("bursa");
sehirler.add("kayseri");
sehirler.add("izmir");
sehirler.add("antalya");
sehirler.add("kocaeli");

print(sehirler);
int x= sehirler.length;

int a=81-x;
print("$a kadar şehir eksik setinizde");

for(var sehir in sehirler){
  print(sehir); 
}
// sonu a ile biten şehirler
  Set<String> aIleBaslayanSehirler = sehirler.where((sehir) => sehir.toLowerCase().endsWith('a')).toSet();
  print(aIleBaslayanSehirler);

  

}
