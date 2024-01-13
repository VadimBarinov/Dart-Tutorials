void main(){

  final students = <String>['dada', 'das'];

  students.add('Настя'); // добавление в список
  students.remove('Настя'); // удаление из списка
  students.removeAt(0); // удаление по индексу

  students.addAll(['Витя', 'Саша']); // добавление списка значений в список

  students.contains('Витя'); // проверка на существование

  students.clear(); // удаляет значения из списка

  print(students.length); // длина списка
  print(students.indexOf('Витя')); // выводит индекс по значению

  final foundStudents = students.where((element) => element == 'Витя'); // поиск в списке по фильтру
  print(foundStudents); // возвращает iterable список в круглых скобках
  foundStudents.toList(); // приведение к обычному списку

  final classes = <String>{'11А', '11Б', '11В'}; // самый обычный set список 
  print(classes);

  // хранятся объекты разных типов
  final objectList = ['dads', 12, true];
  print(objectList);

}