import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  
  int cantidadrClicks = 0;

  void incrementar(){
    setState(() {
      cantidadrClicks++;
    });
  }

  void deincrementar(){
    setState(() {
      cantidadrClicks--;
    });
  }

  void reiniciar(){
    setState(() {
      cantidadrClicks = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi primera pantalla'),
      leading: IconButton(
      onPressed: reiniciar, 
      icon: Icon(Icons.refresh_rounded),),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$cantidadrClicks',
          style: const TextStyle(fontSize:100, fontFamily: 'Verdana', fontWeight: FontWeight.w100)),
          const Text('Cantidad de clicks', style: TextStyle(fontSize:30, fontFamily: 'Verdana')),
          const Text('''Francisco Javier 
Copeño Estrada''',style: TextStyle(fontSize:20, fontFamily: 'Verdana'))
        ],
      )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementar,                        
            child: const Icon(Icons.plus_one)
            ),
            const SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: deincrementar,
              child: const Icon(Icons.exposure_minus_1),)
        ],
      ),
    );
  }
}