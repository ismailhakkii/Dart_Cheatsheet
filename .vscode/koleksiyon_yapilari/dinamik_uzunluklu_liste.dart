void main(List<String> args) {
  List<int> sayilar = List.filled(5, 0, growable: true);
  List<int> sayilar2 = List.empty(growable: true);
  List<int> sayilar3 = [];

  sayilar3.add(5);
  sayilar.add(4);
  sayilar2.add(15);

  print(sayilar);
  print(sayilar2);
  print(sayilar3);
  print("sayilar 3 uzunlugu = ");
  sayilar3.add(30);
  sayilar3.add(43);
  sayilar3.add(56);
  print(" sayilar 3 = $sayilar3");
  print("sayilar 3un uzunlugu ${sayilar3.length}");

  var sehirlr = List<String>.empty(growable: true);

  sehirlr.add("İzmir");
  print(sehirlr);
}
