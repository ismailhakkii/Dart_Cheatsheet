void main(List<String> args) {
  int sonuc = sayilariTopla(sayi3: 10, sayi1: 20, sayi2: 50);
  print("sayilarin toplamı = $sonuc");
}

/* required parameter
sayilariTopla(int sayi1, int sayi2, int sayi3){
return sayi1+sayi2+sayi3;
}
 */
/* optional parameter
sayilariTopla(int sayi1, int sayi2, [int sayi3=0]){
return sayi1+sayi2+sayi3;
}
*/
// named isimlendirilmiş parametre
sayilariTopla({int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3;
}
