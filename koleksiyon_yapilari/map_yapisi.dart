void main(List<String> args){
  Map <String, int> plakaKodlari={"Sivas":58,"Tokat":60};
  Map <int, String> plakaKodlari2={58:"Sivas",38:"Kayseri"};
  var bilgiler= <String, dynamic>{
    "ad":"İsmail Hakkı",
    "yas":24,
    "mutluMu": false
  };

  var ing= Map<String, String>();
  ing['car']="araba";
  ing['apple']="elma";
  print(plakaKodlari);
  print(plakaKodlari["Sivas"]);

  plakaKodlari['Bursa']=16;

  plakaKodlari2[34]='İstanbul';


  for (var eleman in plakaKodlari.entries){
    print("${eleman.key} keyinin değeri : ${eleman.value}");
  
  
  }
  print(plakaKodlari2);
  var sonMap={...plakaKodlari,...plakaKodlari2};
  print("Birleşmiş son map : $sonMap");

print(plakaKodlari.containsKey('Sivas'));
print(plakaKodlari2.containsKey('Bursa'));

print("plaka kodlari 2 = $plakaKodlari2");
plakaKodlari2.remove(38);
print("plaka kodlari 2 = $plakaKodlari2");
}