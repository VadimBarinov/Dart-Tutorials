void main(){

  const pi = 3.14;
  final date = DateTime.now();
  // в const нельзя записать дату, так как она инициализируется в момент компиляции,
  // а final инициализируется в момент запуска программы. 

  dynamic likes = 99999;
  likes = 'adawdsad';
  likes = true;
  // в такие переменные можно записывать что угодно,
  // но лучше не использовать это, так как нарушается строгая типизация в dart. 
  print(likes);

  print(pi);
  print(date);

}