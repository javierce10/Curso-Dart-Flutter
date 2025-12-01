import 'package:flutter/material.dart';


class ClaseScroll extends StatelessWidget {
  const ClaseScroll({super.key});
  

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> libros = [
      {'titulo': 'Cien años de soledad', 'autor': 'Gabriel García Márquez'},
      {'titulo': 'Don Quijote de la Mancha', 'autor': 'Miguel de Cervantes'},
      {'titulo': 'El principito', 'autor': 'Antoine de Saint-Exupéry'},
      {'titulo': '1984', 'autor': 'George Orwell'},
      {'titulo': 'La sombra del viento', 'autor': 'Carlos Ruiz Zafón'},
      {'titulo': 'Rayuela', 'autor': 'Julio Cortázar'},
      {'titulo': 'Crimen y castigo', 'autor': 'Fiódor Dostoyevski'},
      {'titulo': 'Orgullo y prejuicio', 'autor': 'Jane Austen'},
      {'titulo': 'Los juegos del hambre', 'autor': 'Suzanne Collins'},
      {'titulo': 'Harry Potter y la piedra filosofal', 'autor': 'J.K. Rowling'},
    ];

    final List<String> portadas = [
      'assets/img/cien_anios.jpg',
      'assets/img/don_quijote.png',
      'assets/img/el_principito.jpg',
      'assets/img/1984.jpg',
      'assets/img/la_sombra.jpg',
      'assets/img/rayuela.jpg',
      'assets/img/crimen_castigo.jpg',
      'assets/img/orgullo_prejuicio.jpg',
      'assets/img/harry_potter.jpg',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Libreria El Rincon del Saber'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
         child: Column(
            children: [
              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.campaign, color: Colors.deepPurple),
                          SizedBox(width: 8),
                          Text('Información Importante',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Text(
                          '''Tenemos grandes noticias!.
Pronto podrás comprar todos tus libros directamente desde nuestra aplicación.
Mantente atento a nuestra próxima actualización.'''
                      ),
                    ],
                  ),
                ),
            ),

              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                      itemCount: libros.length,
                      itemBuilder: (context, index) {
                        final libro = libros[index];
                        return ListTile(
                          leading: const Icon(Icons.book, color: Colors.blueAccent),
                          title: Text(libro['titulo']!),
                          subtitle: Text('Autor: ${libro['autor']}'),
                        );
                      },
                  ),
                ),
              ),

              Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 250,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: List.generate(
                      portadas.length,
                      (index) => ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          portadas[index],
                          fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                  ),
              ),

              const Text(
                'Desplázate hacia arriba y hacia abajo para ver todo el contenido.',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              )

            ],
          ),
        )
    ),
  );
 }
}