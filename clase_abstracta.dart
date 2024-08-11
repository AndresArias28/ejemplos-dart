void main() {}

//clase de tipo enum
enum PlantType { nuclear, wind, water } //no termina ;

//clase abstracta
abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  //constructor - las llaves indican que pueden ser opcinales y poder pasarlas por nombre
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}
