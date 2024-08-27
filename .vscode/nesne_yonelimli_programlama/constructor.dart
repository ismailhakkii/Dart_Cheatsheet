// kurucu metotlar: constructor
void main (List<String> args){
Araba honda=Araba();
print("Nesne üretildikten sonra");
honda.marka="Honda";
honda.modelYili=2024;
honda.bilgileriniYazdir();

Araba toyota=Araba("Toyota",2023);

}

class Araba{
  int? modelYili;
  String? marka;

// default constructor 
 /*  Araba(){
    print("kurucu metot");
  } */
 // parametreli constructor 

  Araba(String model, int modelYili){
    print("kurucu metot");
  }

  void bilgileriniYazdir(){
    print("Bu arabanın model yili$modelYili ve markasi $marka");
  }
}