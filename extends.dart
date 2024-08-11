void main() {

  final windPlant = WindPlant(initialEnergy: 100.0);
  print( chargePhone(windPlant) );
}

double chargePhone(EnergyPlant plant){
  if (plant.energyLeft < 10.0) {
    throw Exception("No hay suficiente energía");
  }
  return plant.energyLeft - 10.0;
}

//clase de tipo enum
enum PlantType { nuclear, wind, water } //no termina ;

//clase abstracta  
abstract class EnergyPlant {
  //atributos
  double energyLeft;
  PlantType type;

  //constructor - las llaves indican que pueden ser opcinales y poder pasarlas por nombre
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {

  //constructor
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
