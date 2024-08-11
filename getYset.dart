void main() {//clase principal

// declarar objeto de la clase Square
  final mySquare = Square(side: 10);

  //establecer valor de side
  mySquare.side = 20;

  //establecer valor de side mediante el metodo set
  mySquare.sides = 2;

  //imprimir valor de area
  print('el area es : ${mySquare.area} cm^2');
}

class Square {
  //atributos
  double side;

  //constructor
  //Square({required this.side}); //parametros por nombre
  Square({required double side}) 
  : assert(side > 0, 'no se puede establecer un valor negativo'), side = side;

  //metodo get
  double get area => side * side;
  //otra forma
  // double get area1{
  //   return side * side;
  // }

  //metodo set
  set sides(double value) {

    print('valor nuevo establecido: $value');

    //validar valor negativo
    if (value < 0) throw Exception('no se puede establecer un valor negativo');
    side = value;
  }

  double calcularArea() {
    return side * side;
  }
}
