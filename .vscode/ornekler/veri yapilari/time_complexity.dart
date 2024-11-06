void main() {
  var simdikizaman = DateTime.now();
  print(simdikizaman); 
  
  int n = 1;
  var ism;

  while (n != 0) { 
    for (ism = 0; ism < n; ism++) {
      n++; 
      print("sayi $ism");
      if (ism == 15) {
        break;
      }
    }

    if (ism == 15) {
      var dongusonrasizaman = DateTime.now(); 
      print("şu anki zaman== $dongusonrasizaman");

      var fark = dongusonrasizaman.difference(simdikizaman);
      print("Zaman farkı: $fark");

      break; 
    }
  }
}
