void main(){
  try {
    print(divide(1, 0));
    print('Все хорошо');
  } on Exception catch (e) {      // обрабатывает только Exceptions
    print('Произошла ошибка!\n' + e.toString());
  } on Error catch (e){           // обрабатывает только Errors
    print('AAAAAAAAAAAAA!\n' + e.toString());
  } finally {                     // все равно будет сработан
    print('Конец работы функции');
  }
}

num divide(num a , num b){

  if (b == 0){
    throw Exception('Делить на ноль нельзя!');
  }
  return a / b;

}