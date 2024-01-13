enum Pet { dog, cat, bird }

// Enhanced enum (можно создававть еще поля и методы)
enum Pet2 { // хранит еще локализацию 
  dog('Собака'), 
  cat('Кошка'), 
  bird('Птица');

  const Pet2(this.localization);
  final String localization;

  void printPetName2() {
  print(this.localization);       // более короткий вид предыдущей записи
}
  
}

void main(){

  final vasyaPet = Pet.dog;
  final stasPet = Pet2.cat;

  if (vasyaPet == Pet.dog) {
    print('У васи собака');
  }

  print(vasyaPet.index);
  print(vasyaPet.name);

  _printPetName(vasyaPet);

  stasPet.printPetName2();

}

void _printPetName(Pet pet) {
  switch (pet) { // нет дефолта, так как значение будет только из enum!!!
    case Pet.dog:
      print('Собака');
      break;
    case Pet.cat:
      print('Кошка');
      break;
    case Pet.bird:
      print('Птица');
      break;
  }
}