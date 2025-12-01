import 'package:flutter/material.dart';
import 'package:mediaquery/scrolls.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final tamano = MediaQuery.of(context).size;
    //final ancho = tamano.width;
    //final alto = tamano.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ClaseScroll(),
    );
  }
}