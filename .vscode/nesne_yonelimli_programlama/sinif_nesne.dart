// nesne yönelimli programlama
//object oriented programming

void main(List<String> args) {
// instance
  int sayi = 5;
  Ogrenci ismail = Ogrenci();
  ismail.ad = "ismail hakkı kemikli";
  ismail.ogrenciNo=58;
  ismail.mezunMu=false;

  Ogrenci hakki=Ogrenci();
  hakki.ad="hakkı kemikli";
  hakki.ogrenciNo=100;
  hakki.mezunMu=true;

  var kemikli= Ogrenci();
  kemikli.ad="kemikli 58";
  print(ismail.ad);
  
}

class Ogrenci {
  int ogrenciNo = 0;
  String ad = "";
  bool mezunMu = false;

  void dersCalis() {
    print("Öğrenci ders çalışıyor");
  }
}
