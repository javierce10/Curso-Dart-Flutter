//Francisco Javier Copeño Estrada
void main(){
  Map<String, String> capitales = {
    'Mexico' : 'CDMX',
    'Colombia' : 'Bogota',
    'Peru' : 'Lima',
    'España' : 'Madrid'
    };

  /* Map<String, int> usuarios = {
    'Usuario01' : 123142,
    'Usuario02' : 532512,
    'Usuario03' : 353251,
    };

    print(capitales);
     print(capitales['Mexico']);
    capitales['Rep. Dominicana'] = 'Santo Domingo';
    print(capitales);

    capitales['Peru'] = 'Valor no encontrado';
    print(capitales);*/

    print('Francisco Javier Copeño Estrada');
    print('');
    print(capitales.keys);
    print(capitales.values);
    print(capitales.length);
    print(capitales.isEmpty);
    print(capitales.containsKey('Peru'));
    capitales.clear();
    print(capitales);  
}