import 'package:application_1/presentacion/pantallas/ingresotexto.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: const Color.fromARGB(255, 38, 56, 121), 
      ),
      debugShowCheckedModeBanner: false,
      home: IngresoTexto()
      );
    }

}