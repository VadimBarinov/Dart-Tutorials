void main(){

  var sanya = Human(name: 'Саша', age:  23, height: 190);
  print(sanya);

  var alice = Artist(name: 'Алиса', age:  20, height: 187, style: 'Графика');
  print(alice);
  alice.drawPicture();

  print(alice.runtimeType);    // вывод типа объекта

}

class Human {

  Human({  // лучше всегда использовать именованные параметры в конструкторе
    required this.name,
    required this.age,
    required this.height,
  });

  final String name; // в таком случае нельзя будет переименовать 
  int age;
  double height;

  void grewUp(int years) {
      age += years;
  }

  bool isHighter(Human otherHuman){
    return this.height > otherHuman.height;
  }

  @override
  String toString() {
    return 'Человек Имя: $name Возраст: $age Рост: $height';
  }

}

class Artist extends Human{
  // всегда нужно писать свой конструктор!!!
  Artist({
    required super.name, 
    required super.age, 
    required super.height,
    required this.style,
    });

    void drawPicture(){
      print('Художник рисует картину');
    }

    String style;

  @override
  String toString() {
    return super.toString() + ' ' + 'Художник Стиль: $style';
  }

}