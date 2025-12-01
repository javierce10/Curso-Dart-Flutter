//Francisco Javier Copeño Estrada

//Clase Padre
class Animal{
  String? nombre, raza;
  int? edad, tamano;

  Animal(this.nombre, this.raza, this.tamano);

  void comer(){
    print('Nombre: $nombre, Raza: $raza, Tamaño: $tamano');
    print('$nombre está comiendo');
  }
}
//Clase Hija
class Perro extends Animal{
  Perro(String nombre, String raza, int tamano)
    :super(nombre, raza, tamano);

    void comer(){
      print('Nombre: $nombre, Raza: $raza, Tamaño: $tamano');
      print('$nombre está comiendo');
    }
}

void main(){
  print('Francisco Javier Copeño Estrada\n');

  Animal obj1 = Animal('Garfield', 'Angora', 50);
  obj1.comer();

  Perro obj2 = Perro('Firulais', 'Chihuahua', 25);
  obj2.comer();
}