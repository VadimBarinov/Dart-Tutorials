void main(){

  var sanya = Human(name : 'Саша', age :  23, height : 190);
  print(sanya.name);
  print(Human.count);

  var vova = Human(name : 'Вова', age :  20, height : 170);
  print(vova.name);
  print(Human.count);

}
class Human {

  Human({  // лучше всегда использовать именованные параметры в конструкторе
    required this.name,
    required this.age,
    required this.height,
  }) { // метод конструктора, внутри которого будет вызываться код сраху после создания экземпляра класса
    count += 1;
  }

       // это поле отвечает за количество созданных экземпляров класса
  static int count = 0;    // поле static, которое хранится для класса

  final String name; // в таком случае нельзя будет переименовать 
  int age;
  double height;

}