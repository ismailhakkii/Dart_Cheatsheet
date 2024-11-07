class Banka {
  String hesapAdi;
  int bakiye = 0;

  Banka(this.hesapAdi, [this.bakiye = 0]);

  void bakiyeGoster() {
    print('Hesap: $hesapAdi, mevcut bakiye: $bakiye TL');
  }

  void paraYatir(int miktar) {
    if (miktar > 0) {
      bakiye += miktar;
      print('$miktar TL yatırıldı. Güncel bakiye: $bakiye TL');
    } else {
      print('Geçersiz miktar. Pozitif bir değer girin.');
    }
  }

  void paraCek(int miktar) {
    if (miktar > 0 && miktar <= bakiye) {
      bakiye -= miktar;
      print('$miktar TL çekildi. Güncel bakiye: $bakiye TL');
    } else if (miktar > bakiye) {
      print('Yetersiz bakiye. Çekilecek miktar mevcut bakiyeden büyük olamaz.');
    } else {
      print('Geçersiz miktar. Pozitif bir değer girin.');
    }
  }

  void paraTransferEt(Banka hedefHesap, int miktar) {
    if (miktar > 0 && miktar <= bakiye) {
      bakiye -= miktar;
      hedefHesap.paraYatir(miktar);
      print('$miktar TL $hesapAdi hesabından ${hedefHesap.hesapAdi} hesabına transfer edildi.');
    } else if (miktar > bakiye) {
      print('Yetersiz bakiye. Transfer gerçekleştirilemedi.');
    } else {
      print('Geçersiz miktar. Pozitif bir değer girin.');
    }
  }

  void faizUygula(double oran) {
    if (oran > 0) {
      int faiz = (bakiye * oran).toInt();
      bakiye += faiz;
      print('Faiz uygulandı: $faiz TL. Güncel bakiye: $bakiye TL');
    } else {
      print('Geçersiz faiz oranı. Pozitif bir değer girin.');
    }
  }
}

void main() {
  Banka hesap1 = Banka("İsmail'in Hesabı", 500);
  Banka hesap2 = Banka("Hakkı'nın Hesabı", 300);

  hesap1.bakiyeGoster();
  hesap2.bakiyeGoster();

  hesap1.paraYatir(200);

  hesap1.paraCek(100);

  hesap1.paraTransferEt(hesap2, 150);

  hesap1.faizUygula(0.05);

  hesap1.bakiyeGoster();
  hesap2.bakiyeGoster();
}
