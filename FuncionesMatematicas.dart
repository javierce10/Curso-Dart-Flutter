import 'dart:io';
import 'dart:math';

void main() {
  int a, b;

  print("Ingrese valor de a:");
  a = int.parse(stdin.readLineSync()!);

  print("Ingrese valor de b:");
  b = int.parse(stdin.readLineSync()!);

  print('Potencia de: $a, elevado a la: $b = ${pow(a, b)}');
  print('Raíz de: $a = ${sqrt(a).round()}');

  double c = 8.53654654;
  print(c.round());       // Redondea al entero más cercano
  print(c.floor());       // Redondea hacia abajo
  print(min(a, b));       // Muestra el menor valor
  print(max(a, b));       // Muestra el mayor valor

  var aleatorio = Random();
  print(aleatorio.nextInt(100));   // Número entero aleatorio de 0 a 99
  print(aleatorio.nextDouble());   // Número decimal aleatorio entre 0.0 y 1.0
}