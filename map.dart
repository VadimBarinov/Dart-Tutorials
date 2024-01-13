void main(){

  final students = <String, double>{
    'Вася' : 4.5,
    'Лера' : 4.0,
    'Гена' : 3.0,
  };

  print(students);

  students['Саша'] = 5.0;    // добавление в словарь (ключ - Саша)
  students.remove('Вася');   // удаление из словаря

  print(students.keys);    // вывод ключей из словаря
  print(students.values);  // вывод значений словаря

}