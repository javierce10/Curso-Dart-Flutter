//Francisco Javier Copeño Estrada
class Persona{
  String? nombre;
  int? edad;

  Persona(String nombre, int edad){
    this.nombre = nombre;
    this.edad = edad;
    
  }

}

void main(){
  Persona persona1 = Persona('Javier', 20);
  print('Francisco Javier Copeño Estrada\n');
  print(persona1.nombre);
  print(persona1.edad);
}