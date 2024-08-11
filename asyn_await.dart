void main() async {
  print('inicio');

  //manejar errores
  try {
    final value = await httpGet('https://api.github.com/orgs/dart-lang/repos');
    print(value);
  } catch (error) {
    print('Error: $error');
  }

  print('fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'error en el llamado a la API';
  //return 'tenemos un valor de la peticion';
}

/* 
Una funcion asincrona siempre retorna una promesa.
con la palabra clave await se espera la promesa. cuando tengas el resultado continuar con la ejecucion del programa
Para controlar expeciones utiliza la palabra clave try - catch
*/