void main(List<String> args) {
  List<int> sayilar = List.filled(10, 0);
  sayilar[0] = 5;
  sayilar[9] = 1;
  sayilar[2] = 21;
  sayilar[8] = 14;
  sayilar[6] = 16;
  print(sayilar);

  List<String> sehirler = List.filled(5, "");
  sehirler[1] = "Ankara";
  sehirler[2] = "İstanbul";
  sehirler[3] = "Kayseri";
  sehirler[4] = "Bursa";
  sehirler[0] = "Sivas";

  print(sehirler);

  List karisik = List.filled(5, 0);
  karisik[0] = 58;
  karisik[4] = "Çanakkale";
  karisik[2] = 4;
  karisik[3] = true;
  print(karisik);
}
