import 'package:flutter/material.dart';
class IngresoTexto extends StatefulWidget{
  const IngresoTexto({super.key});

  @override
  State<IngresoTexto> createState() => IngresoTextoState();
}

  class IngresoTextoState extends State<IngresoTexto>{
    final TextEditingController _controller = TextEditingController();
    final _llaveFormulario = GlobalKey<FormState>();

    String textomostrado = '';
    String? opcionSeleccionada;
    bool usuarioActivo = false;

    bool opcion1 = false;
    bool opcion2 = false;
    bool opcion3 = false;
    bool opcion4 = false;
    bool opcion5 = false;
    bool opcion6 = false;

    String? nivelExperiencia;

    final List<String> paises= [
      'Argentina',
      'España',
      'Colombia',
      'Mexico',
      'Peru',
      'Venezuela',
      'Rep Dominicana'
    ];

    void muestraTexto(){
      if(_llaveFormulario.currentState!.validate()){
      setState(() {

        List<String> lenguajes = [];
        if (opcion1) lenguajes.add('Dart');
        if (opcion2) lenguajes.add('Java');
        if (opcion3) lenguajes.add('Python');


        textomostrado = '''${_controller.text}\nPais: $opcionSeleccionada\n
        Usuario Activo: ${usuarioActivo ? 'Activo' : 'Inactivo'}
        Lenguaje Seleccionado: ${lenguajes.isEmpty ? 'Ninguno' : lenguajes.join(', ')}''';
        
      });
    }
    }

    void limpiaTexto(){
      setState(() {
        _controller.clear();
        textomostrado = '';
        opcionSeleccionada = null;
        usuarioActivo = false;

        opcion1 = false;
        opcion2 = false;
        opcion3 = false;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro de nombre")),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _llaveFormulario,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //====CAMPO DE TEXTO====
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Ingrese texto...',
                border: OutlineInputBorder(),
              ),
              validator:(value){
                if(value == null || value.isEmpty){
                  return'Por favor ingrese algun texto';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

           //=====DROPDOWN====
           DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Seleccione un pais',
              border: OutlineInputBorder()
            ),
            initialValue: opcionSeleccionada,
            items: paises.map((opcion){
              return DropdownMenuItem<String>(
                value: opcion,
                child: Text(opcion as String),
              );
            }).toList(),
            onChanged: (nuevoValor){
              setState((){
              opcionSeleccionada = nuevoValor;
            });
            },
            validator: (value){
              if (value == null){
                return 'Seleccione una opcion';
              }
              return null;
            },
        ),
           const SizedBox(height: 30),

//====RADIOBUTTONS
           const Text('Nivel de experiencia',
           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),
           RadioListTile<String>(
            title: const Text('Junior'),
            value: 'Junior',
            // ignore: deprecated_member_use
            groupValue: nivelExperiencia,
            // ignore: deprecated_member_use
            onChanged: (valor){
              setState(() {
                nivelExperiencia = valor;
              });
            },
           ),

           RadioListTile<String>(
            title: const Text('Senior'),
            value: 'Senior',
            // ignore: deprecated_member_use
            groupValue: nivelExperiencia,
            // ignore: deprecated_member_use
            onChanged: (valor){
              setState(() {
                nivelExperiencia = valor;
              });
            },
           ),

           const Text('Seleccione lenguaje',
           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
           ),

           //===checkbox1 
           CheckboxListTile(
            title: Text('Dart'),
            value: opcion1, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion1 = valornuevo!;
              });
            }),

            //===checkbox2 
           CheckboxListTile(
            title: Text('Java'),
            value: opcion2, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion2 = valornuevo!;
              });
            }),

            //===checkbox3 
           CheckboxListTile(
            title: Text('Python'),
            value: opcion3, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion3 = valornuevo!;
              });
            }),

            //===checkbox3 
           CheckboxListTile(
            title: Text('Kotlin'),
            value: opcion4, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion4 = valornuevo!;
              });
            }),

            //===checkbox3 
           CheckboxListTile(
            title: Text('C++'),
            value: opcion5, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion6 = valornuevo!;
              });
            }),

            //===checkbox3 
           CheckboxListTile(
            title: Text('Perl'),
            value: opcion6, 
            onChanged: (bool? valornuevo){
              setState(() {
                opcion6 = valornuevo!;
              });
            }),


//=====SWITCH====
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'usuario activo?',
                style: TextStyle(fontSize: 16),

              ),
              Switch(
                value: usuarioActivo,
                onChanged: (valornuevo){
                  setState((){
                    usuarioActivo = valornuevo;
                  });
                },
              ),
            ],
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: muestraTexto,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Mostrar'),
                ),
                ElevatedButton(onPressed: limpiaTexto,
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 243, 33, 33)),
                child: const Text('Limpiar'),
                )
              ],
            ),
            const SizedBox(height: 30,),

            Text(
            textomostrado.isEmpty? '''Mostrar: muestra texto
Limpiar: Limpia el texto colocado'''
           : 'Texto ingresado: $textomostrado',
           style: const TextStyle (fontSize: 18),
            )
          ],
        )
      )
    )
    );
  }
}