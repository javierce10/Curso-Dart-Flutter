import 'dart:io';
void main(){
  int valor1, valor2;
  var resultado;
  print('Ingresa valor 1: ');
  valor1 = int.parse(stdin.readLineSync()!);
   print('Ingresa valor 2: ');
  valor2 = int.parse(stdin.readLineSync()!);

 resultado = valor1 + valor2;
 print('suma: ${resultado}');

 resultado = valor1 - valor2;
 print('resta: ${resultado}');

 resultado = valor1/valor2;
 print('division: ${resultado}');

 resultado = valor1~/valor2;
 print('division: ${resultado}');

  resultado = valor1%valor2;
 print('residuo: ${resultado}');
  
}