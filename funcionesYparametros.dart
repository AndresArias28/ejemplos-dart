void main() {
  //print(saludar2());
  //print('suma: ${sumar2(3, 4)}');
  //print('suma, con parametros opcionales ${funcionOpcional(10)}');
  print(saludarPersona(nombre: 'santiArias', mensaje: 'mucho gusto master'));
}

String saludar() {
  return "hola";
}

//funciones flecha
String saludar2() => "hola desde funcion flecha";

//pararmetros dinamicos
int sumar(a, b) {
  return a + b;
}

//tipo flehca
int sumar2(a, b) => a + b;

//tipo flehca y parametros fijos
int sumar3(int a, int b) => a + b;

//hacer opciopnal un parametro:
//el parametro opcinal entre corchetes y con interregocion porque puede tomar cualquier valor
int funcionOpcional(int a, [int b = 0]) {
  //si utilizo b=0, evito confirmar si el valor tiene numero

  //si existe valor de b, entonces que sea b sino 0
  // b= b ?? 0;//confirmar s i un varaible tiene un numero

  //otra forma
  //b??=0;
  return a + b;
}

//al poner los parametros entre llaves. se convierten en opcionales
String saludarPersona(
    {required String nombre, String mensaje = 'Hola master'}) {
  return '$mensaje, $nombre';
}