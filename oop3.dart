class Human {

  Human({  // лучше всегда использовать именованные параметры в конструкторе
    required this.name,
    required int age,
    required this.height,
  }): _age = age;

  int get age => _age;   // модификатор доступа, который позволяет получить параметр
  String get nameAndAge => '$name: $age';
  set age(int value) => _age = value;  // модификатор доступа, который позволяет изменить параметр

  final String name; // в таком случае нельзя будет переименовать 
  int _age;  // благодаря _ становится private (из другого файла нельзя достать это поле)
  double height;

  void grewUp(int years) {
      _age += years;
  }

  bool isHighter(Human otherHuman){
    return this.height > otherHuman.height;
  }

  @override
  String toString() {
    return 'Человек Имя: $name Возраст: $_age Рост: $height';
  }

}