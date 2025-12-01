//Francisco Javier Copeño Estrada
import 'dart:io';
void main(){
  print('Francisco Javier Copeño Estrada\n');
  print('Ingrese valor 1: ');
  int valor1 = int.parse(stdin.readLineSync()!);
  print('Ingrese valor 2: ');
  int valor2 = int.parse(stdin.readLineSync()!);

  int suma = valor1 + valor2;

  int division = valor1 ~/ valor2;

  print(suma);
  print(division);
}