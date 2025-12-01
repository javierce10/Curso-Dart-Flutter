import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> frutas = [
      'Manazana',
      'Platano',
      'Naranja',
      'Mango',
      'Uva',
      'Fresa',
      'Sandia',
      'Kiwi',
      'Pera',
      'Manazana',
      'Platano',
      'Naranja',
      'Mango',
      'Uva',
      'Fresa',
      'Sandia',
      'Kiwi',
      'Pera'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de frutas'),

          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: frutas.length ,
          itemBuilder: (context, index){
            return ListTile(
              leading: const Icon(Icons.local_grocery_store),
              title: Text('Fruta numero ${index + 1}'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Seleccionaste: ${frutas[index]}')),
                );
              },
            );
          },
        ),
        ),
      );

  }
}