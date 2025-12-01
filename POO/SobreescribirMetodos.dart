//Francisco Javier Copeño Estrada
class Vehiculo{
  void combustible(){
    print('Combustible generico de vehiculo');
  }
}

class Carro extends Vehiculo{
  @override
  void combustible(){
    print('Gasolina');
  }
}

class Moto extends Vehiculo{
  @override
  void combustible(){
    print('Eelectrica');
  }
}

void main(){
  print('Francisco Javier Copeño Estrada\n');

  var vehiculo1 = Vehiculo();
  vehiculo1.combustible();

  var vehiculo2 = Carro();
  vehiculo2.combustible();

  var vehiculo3 = Moto();
  vehiculo3.combustible();
}