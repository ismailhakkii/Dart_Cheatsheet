import 'dart:io';

void main() {
  print("Piramit yüksekliğini giriniz: ");

  String? input = stdin.readLineSync();

  int? height = int.tryParse(input ?? '');

  if (height != null && height > 0) {
    for (int i = 1; i <= height; i++) {
      for (int j = height; j > i; j--) {
        print(' ');
      }
      for (int k = 1; k <= (2 * i - 1); k++) {
        print('*');
      }
      print('');
    }
  } else {
    print("Geçerli bir yüksekliği giriniz.");
  }
}
