//Francisco Javier Copeño Estrada
import 'dart:io';
void main(){
  try{
  print('Francisco Javier Copeño Estrada\n');

  print('Ingrese valor 1: ');
  int? valor1 = int.parse(stdin.readLineSync()!);
  print('Ingrese valor 2: ');
  int? valor2 = int.parse(stdin.readLineSync()!);

    int resultado = valor1 ~/ valor2;
    print('Resultado: $resultado');
  }on FormatException{
    print('Debe ingresar un valor entero');
  }on IntegerDivisionByZeroException{
    print('Division entre 0 no permitida');
  }
  
  catch(ERROR){
    print('Error de opreacion: $ERROR');
  }
}