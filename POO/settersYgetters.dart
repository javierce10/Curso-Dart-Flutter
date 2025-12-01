//Francisco Javier Copeño Estrada
import 'dart:io';

class Auto{
  String? marca, modelo;
  int? anio;

  //Getter
  String DimeDatos(){
    return '''
    Alumno: Francisco Javier Copeño Estrada
    Marca: $marca
    Modelo: $modelo
    año: $anio
    ''';

  }

  //Setter
  void pideDatos(){
      print('Dime marca del vehiculo');
      marca = stdin.readLineSync()!;
      print('Dime modelo del vehiculo');
      modelo = stdin.readLineSync()!;
      print('Dime año del vehiculo');
      anio = int.parse(stdin.readLineSync()!);
  }
}

void main(){
  Auto auto1 = Auto();
  auto1.pideDatos();
  print(auto1.DimeDatos());
}