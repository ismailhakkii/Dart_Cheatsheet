void main(List<String> args) {
  var sayilar = <int>[20, 30, 10, 5];
  if (sayilar.isNotEmpty) {
    print("Listedeki ilk sayi= ${sayilar.first}");
    print("Listedeki son sayi= ${sayilar.last}");
  }
  sayilar.add(5);
  var sayilar2 = <int>[90, 5, 80];
  sayilar.addAll(sayilar2);
  sayilar.addAll([98, 99, 5, 123]);
  print(sayilar);
  sayilar.remove(5);
  sayilar.removeLast();
  print(sayilar);

  sayilar.removeAt(0);
  print(sayilar.indexOf(5));

  sayilar.sort();
  print(sayilar);
  sayilar.shuffle();
  print(sayilar);
  print(sayilar.contains(85));
  sayilar.clear();
  print(sayilar);
}
