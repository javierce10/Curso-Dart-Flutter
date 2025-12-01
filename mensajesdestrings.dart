void main(){
  String palabra = 'Hola';
  String palabra2 = 'a todos';
  String palabra3 = 'O\'Neill';
  String palabra4 = "texto en linea1\n"
                    "segunda linea de texto\n"
                    "Tercera linea";
  String palabra5 = '''estoy aprendiendoa trabjar 
  con Flutter pero primero hago las bases 
  con dart''';
  String palabra6 = '';
                  
  
  print(palabra);
  print(palabra2);
  print(palabra3);
  print(palabra4);
  print(palabra5);

    // Métodos y propiedades de String
  print(palabra5.length);           // Longitud del texto
  print(palabra6.isEmpty);          // ¿Está vacío?
  print(palabra6.isNotEmpty);       // ¿No está vacío?
  print(palabra2[4]);               // Carácter en la posición 4
  print(palabra4.contains('mesa')); // Contiene "mesa"
  print(palabra3.startsWith('O'));  // ¿Empieza con O?
  print(palabra3.endsWith('l'));    // ¿Termina con L?
  print(palabra5.indexOf('es'));    // Índice de la palabra "es"
  print(palabra4.substring(0, 8));  // Subcadena del 0 al 8
  print(palabra4.split('segunda')); // Divide por la palabra "segunda"
  print(palabra.toUpperCase());     // Pone todo en mayusculas
  print(palabra.toLowerCase());     // Pone todo en minusculas
  print(palabra4.split('\n'));      // Divide por saltos de línea


}