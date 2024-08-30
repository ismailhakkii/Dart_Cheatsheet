void main() { 
  
  int satirSayisi = 5; // Piramidin satır sayisi

  for (int i = 1; i <= satirSayisi; i++) {
    String yildizlar = ''; // Her satır için boş bir string ile başlıyoruz.
    
    // String'e satır numarası kadar yıldız ekliyoruz.
    for (int j = 1; j <= i; j++) {
      yildizlar += '*';
    }
    
    print(yildizlar); 
  }
}
