// Soru 1 
//parametre olarak bir tane int sayi bir tane de boolen değer alan fonk yazınız

/*void main(List<String>args){
  int toplam= toplamHesapla(100,ciftMi:true);
  print(toplam);
}
toplamHesapla(int sayi, {bool ciftMi=true}){
int toplam=0;
for(int i=0;i<sayi;i+=2){
  toplam+=i;
}
return toplam;
}
*/ 
//Soru 2 
// dairenin alanını hesaplayan fonksiyon pi sayisi opsiyonel girilmediyse 3.14
void main(List<String>args){
var alan=alanHesapla(6);
print("dairenin alanı = $alan");
}
// opsiyonel pi sayisi ama default olarak 3.14
alanHesapla(int yaricap,[double pi=3.14]){
  return yaricap*yaricap*pi;
}