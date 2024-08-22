import 'dart:math';


void main(List<String> args) {
  Random random = Random();
  int randomInt = random.nextInt(10);
   print("Random number is = "+randomInt.toString());

if (randomInt<5){
  print("evet 5in altında");

}else if(randomInt==5) {
  print("sayi 5 e eşit ");
}
else {
  print("hayır 5 ten büyük");
}
}
