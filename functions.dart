void main() {

  // СТРЕЛОЧНАЯ ФУНКЦИЯ
  Function sum = (a, b) => a + b; // => вместо return
  

  // АНОНИМНАЯ ФУНКИЦЯ (вызывается как переменная)
  Function sum2 = (a, b) {
    return a + b;           // та же запись, только с return
  };

  print(sum(1, 2));
  print(sum2(2, 3));

  doSomething();      // обычный вызов функции 

  makeTask(doSomething); // ВАЖНО ПЕРЕДАВАТЬ БЕЗ КРУГЛЫХ СКОБОК, ТАК КАК ОЖИДАЕТСЯ ТИП Function!!!

}

void makeTask(Function task){
  print('Запустил задачу');
  task();                   // Callback (вызов переданной функции внутри другой функции)
  print('Выполнил задачу');
}

void doSomething() {
  print('Привет!');
}