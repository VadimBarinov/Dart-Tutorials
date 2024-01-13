void main(){
  print(greaterOrLess(2, 1));
}

String greaterOrLess(int a, int b) {

  if (a == b) return 'Числа равны';
  
  // тернарный оператор
    // если парвильно: первый аргуметн
    // если неправльно: второй аргумент
  return a > b ? 'Больше' : 'Меньше';

}