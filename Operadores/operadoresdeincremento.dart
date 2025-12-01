void main(){
  int valor = 5, valor2 = 8, valor3 = 7;
  print('valores de incremento =================');
  print(valor);
  print('valor pre-incrementado : ${++valor}');

  print('valor post-incrementado : ${valor2++}');
  print(valor2);

  valor+=5;
  print('pre-incrementado + 3: ${valor}');

  print('valores de decremento =================');
  print(valor3);
  print('valor pre-decremento: ${--valor3}');

  print('valor post-decremento: ${valor3--}');
  print(valor3);

  valor3-=4;
  print('pre-decrementado - 3: ${valor3}');

}