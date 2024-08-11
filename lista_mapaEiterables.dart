void main() {
  final numeros = [1, 2, 3, 3, 4, 5, 6, 7, 8, 8, 9, 12, 43, 64, 54];

  int longitud = numeros.length;

  print('la longitu es:  $longitud ');

  final indice = numeros[0];
  print('el indices es: $indice');

  //imprime ultimo valor
  print('el ultimo valor es: ${numeros.last}');

  //inverso
  print('el invertido valor es: ${numeros.reversed}');

  //filtrar mayores a 5
  final numMayor5 = numeros.where((num) {
    return num > 5;
  });

  print(numMayor5);
  print('en tipo set:  ${numMayor5.toSet()} ');
}