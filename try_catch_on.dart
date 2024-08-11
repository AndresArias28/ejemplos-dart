/** 
 * manejo de diferentes excpeciones 
 * -una promesa puede fallar por diferentes razonees
 * se busca agrupar errores de manera independiente
 * 
 */

void main() async {
  print('inicio');

  //manejar errores
  try {
    final value = await httpGet('https://api.github.com/orgs/dart-lang/repos');
    print(value);
  } catch (error) {
    print('Error: $error');
  } finally {
    print('fin del try catch');
  }

  print('fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('no hay parametros');
 // throw 'error en el llamado a la API';
  //return 'tenemos un valor de la peticion';
}
