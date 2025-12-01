//Francisco Javier Copeño Estrada
void main(){
  print('Francisco Javier Copeño Estrada');
  List<int> numeros = [1,2,32,500,004];

  List<String> frutas = ['manzana', 'peras', 'uvas'];

  //List<String> vacia = [];

  print(numeros);
  print(frutas);

  frutas.add('naranjas');
  print(frutas);

  var Elementos = List<int>.filled(5,0);
  print(Elementos);

  numeros.addAll([90,91,92]);
  print(numeros);

  print(frutas[3]);
  frutas.insert(1, 'sandia');
  print(frutas);
  frutas.remove('sandia');
  print(frutas);
}