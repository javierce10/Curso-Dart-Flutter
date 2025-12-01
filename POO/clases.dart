//Francisco Javier Copeño Estrada
class Persona{
  String? nombre, apellido;
  int? edad;

  void dimeDatos(){
    print('Nombre: $nombre $apellido '
          'Edad: $edad');
  }
}

class Animal{
  String? nombre, raza;
  double? tamano;
  bool? desparasitado, vacunado;

  void dimeDatos(){
    print('''
    Nombre: $nombre
    Raza: $raza
    Tamaño: $tamano
    Desparasitado: $desparasitado
    Vacunado: $vacunado''');
  }
}

void main(){
  Persona persona1 = Persona();
  Persona persona2 = Persona();
  persona1.nombre = 'Francisco Javier';
  persona1.apellido = 'Copeño Estrada';
  persona1.edad = 20;
  persona1.dimeDatos();

  persona2.nombre = 'Javier Francisco';
  persona2.apellido = 'Estrada Copeño';
  persona2.edad = 20;
  persona2.dimeDatos();

  Animal perro1 = Animal();
  perro1.nombre = 'Firulais';
  perro1.raza = 'Chihuahua';
  perro1.tamano = 25.5;
  perro1.desparasitado = true;
  perro1.vacunado = true;
  perro1.dimeDatos();

}