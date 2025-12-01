import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de ListTile'),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Javier Copeño'),
              subtitle: Text('Estudiante del TecNM'),
              trailing: Icon(Icons.arrow_forward_ios)
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Correo'),
              subtitle: Text('javier.copest@gmail.com'),           
              trailing: Icon(Icons.arrow_forward_ios)
            ),
          ]
        )
      ),
    );
  }
}