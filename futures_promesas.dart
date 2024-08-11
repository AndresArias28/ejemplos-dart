/*  son promesas o contratos - 
  Representa el resultado de una operacion asincrona 
  tiene dos posibles ESTADOS: Uncompleted y Completed.
  Uncompleted si la operacion todavia no se ha completado, esta esperando la operacion asincrona termine o lanzar un error

*/
Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() {
  //fetchUserOrder();//esta funciones es asincrona, se llama primero , pero tarde 2 segundos, por lo que se impreme despues
  //print('Fetching user order...');
  print('inicio');

  httpGet('https://api.github.com/orgs/dart-lang/repos').then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });

  print('fin');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw Exception('error');
  });
}

/* Nota: una instancia de Future<T> retorna un valor de tipo T o un error. 
  Si la operacion asincrona es exitosa, el valor de retorno es el valor de tipo T. 
  Si la operacion asincrona falla, el valor de retorno es un error. 
  Si la operacion asincrona no retorna un valor, entonces el valor de retorno es void.
   Cuando se llama a una funcion que retona una promesa, la función pone en cola el trabajo por hacer y devuelve una promesa incompleta.
  

*/