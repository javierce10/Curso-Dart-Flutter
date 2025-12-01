import 'package:flutter/material.dart';

class Layaoutbuilder extends StatelessWidget {
  const Layaoutbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo Layaoutbuilder')),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains){
            if(constrains.maxWidth < 400){
              return Container(
                color: Colors.red,
                width: constrains.maxWidth,
                height: 100,
                child: const Center(
                  child: Text('Diseño compacto'),
                ),
              );
            }else{
              return Container(
                color: Colors.green,
                width: constrains.maxWidth,
                height: 200,
                child: const Center(
                  child: Text('Diseño amplio'),
                ),
              );
            }
          },
        ),
      ),
    );
}
}
