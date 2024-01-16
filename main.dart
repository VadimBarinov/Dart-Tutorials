import 'oop3.dart';

void main(){

  var sanya = Human(name : 'Саша', age :  23, height : 190);
  var vova = Human(name : 'Вова', age :  20, height : 170);
  print(sanya);
  sanya.grewUp(2);

  sanya.age = 10;
  print(sanya.age);

  print(sanya.nameAndAge);

  print(sanya.isHighter(vova));

}