//Francisco Javier Copeño Estrada
void main(){
  DateTime ahora = DateTime.now();
  print('Francisco Javier Copeño Estrada');
  print(ahora);
  print('Año: ${ahora.year}');
  print('Mes: ${ahora.month}');
  print('Día: ${ahora.day}');
  print('Hora: ${ahora.hour}');
  print('Minuto: ${ahora.minute}');
  print('Segundo: ${ahora.second}');

  print('==============================================');
  print(ahora.add(Duration(days: 10)));
  print(ahora.subtract(Duration(days: 8)));
  print('==============================================\n');

  DateTime fechaIngreso = DateTime(2025,1,20);
  DateTime fechaCancelacion = DateTime(2025,8,26);
  print(fechaIngreso.isBefore(fechaCancelacion));
  print(fechaIngreso.isAfter(fechaCancelacion));
  print(fechaIngreso.isAtSameMomentAs(fechaCancelacion));

  //Fecha especifica
  DateTime cumple = DateTime(2004,11,11);
  print(cumple);
}