import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

final List<String> entries = <String>[
  'Botón de Pánico Android',
  'Botón de pánico iPhone',
  'Tip 1: Platica con el conductor',
  'Tip 2: Ten la dirección a la mano',
  'Tip 3: Fíjate en las placas y/o tarjetón',
  'Tip 4: No tengas miedo',
  'Tip 5: Revisa el seguro para niños',
  'Tip 6: Cuida tu batería',
  'Tip 7: Viaja en grupo',
  'Tip 8:Activa tu GPS',
  'Tip 9:Defiéndete',
  'Tip 1 Para Defenderte',
  'Tip 2 Para Defenderte',
  'Tip 3 para defenderte',
  'Objetos de Defensa Personal',
  'Gas Pimienta',
  'Taser',
  'Alarma de Bolsillo',
  'Accesorios para Emergencias',
  'Llaveros de Autodefensa',
  'Tiendas',
  '***RECUERDA***'
];

final List<String> tip = <String>[
  'En Android 12, te puedes saltar todos los pasos intermedios a base de pulsar el botón de encendido como loco. Cuando hagas cinco pulsaciones consecutivas, se abre automáticamente el modo de emergencia. Hay una cuenta atrás de cinco segundos para cancelar y, en caso de que no lo hagas, llama automáticamente a los servicios de emergencia, sin necesidad de que intervengas.',
  'Si activamos la opción Emergencia SOS, el teléfono móvil llamará automáticamente al 112. Tras finalizar la llamada, el iPhone enviará un mensaje de texto a tus contactos de emergencia con tu ubicación actual. Si la función Localización está desactivada, se activará temporalmente. En caso de que tu ubicación cambie, tus contactos recibirán una actualización con tu posición. Gracias a ello, podrán saber dónde te encuentras en cada momento hasta que djes de compartir la ubicación.',
  'Muchos estudios han demostrado que los taxistas que suelen hacer conversación con sus clientes son menos propensos a involucrarse en situaciones delictivas. Pregúntale por el clima, el tráfico, una recomendación de tacos, cualquier cosa que les dé tema de conversación.Ten cuidado con la información que compartes, no sólo con el taxista si no con cualquier desconocido. Mantén la conversación en temas no personales y si te hace alguna pregunte siempre puedes divertirte inventándote una personalidad.',
  'Ahora Google Maps hace nuestra vida mucho más fácil, porque aunque no sepamos llegar a un lugar el mapa siempre nos dará opciones. Si no conocen la ruta checa las indicaciones del mapa y coteja con la sugerencia del taxista.',
  'Evita tomar taxis con placas “en trámite” o aquellas que no empiecen con las letras A, B, E o M, sigan de cuatro números y una letra cualquiera. Al subir o antes de subir, el tarjetón del chofer tiene que estar en la puerta trasera derecha, a la vista de los que abordan, esa es su obligación. Si no lo tiene ahí o a la vista, bájate.',
  'Nunca tengas miedo de preguntar por dónde te están llevando o de decirle al taxista que por favor se vaya por una vía más transitada. Más vale pecar de quisquillosas que de confiadas. Si algo te hace sentir insegura o nerviosa, bájate. No tengas miedo a terminar tu recorrido antes, siempre puedes usar un pretexto como: “¿Qué cree? Necesito comprar algo en esta esquina”.',
  'Al abrir la puerta checa en el marco a la altura de la manija un logotipo con un candado, y comprueba que se encuentre desbloqueado. Antes de cerrar la puerta, comprueba que se puedan abrir las ventanas dando un rápido toque al botón. En caso de que no bajen los cristales desde tu lugar, evita tomar ese viaje y espera a que puedas abordar una unidad más segura.',
  'Es común que algunos pasajeros luego de abordar la unidad se queden sin batería, por consiguiente, al subir quedan completamente incomunicados y sin la posibilidad de poderle escribir a alguien más si llegara a notar alguna irregularidad. Recuerda tu teléfono móvil además de mantenerte comunicado durante todo el viaje, te permitirá ver la ruta sugerida por la aplicación y el tiempo estimado de viaje.',
  'Si sales de una fiesta o reunión, trata de utilizar el servicio entre varios amigos.',
  'Verifica que el localizador esté 100% activado en todo momento. También recuerda tener pila y saldo.',
  'Al saber que no te dejarán bajar de un auto, el cual ni siquiera se detiene, lo primordial es estar plenamente consciente que debes defenderte y tus acciones deben ser firmes y sin miedo.',
  'Una técnica de defensa puede hacerse con el cinturón de seguridad, colocándote detrás del asiento, desde donde lo jalas para atrapar el cuello de quien conduce, y usando tu peso recargarte lo más que puedas.',
  'En casos de no traer el cinturón, puedes usar tu brazo para apresar el cuello de quien conduce, hacer palanca con tu otro brazo y pesa con tu propio cuerpo, de esta manera inhibes la respiración ycontienes el movimiento.',
  'Una última técnica es usar la cabecera del asiento, la cual puede ser usada tanto como arma en contra de quien conduce, así como herramienta para quebrar las ventanas del vehículo.Una bujía también puede romper una ventana',
  'Gas pimienta , Taser , Alarma de bolsillo, Accesorios para Emergencias, Llaveros de Autodefensa,',
  'Este compuesto químico es el más popular para defensa personal entre las mujeres, su efecto va desde irritar los ojos hasta las lágrimas o causar ceguera temporal y en casos aislados puede causar la muerte. Expertos aconsejan que es necesaria una capacitación previa para el uso correcto del producto, de lo contrario es altamente probable que en un momento de pánico se pueda usar en contra del mismo agredido.',
  'Los taser son considerados el arma más efectiva y más peligrosa cuando hablamos de sometimiento. Varias son las razones por las cuales es considerado de alto riesgo su descarga de decenas de miles de volts provoca parálisis muscular y dolor muy fuerte, ademas solo puedes usarlo si estas a una distancia muy cercana del agresor, no mayor de tu brazo estirado. Practica tu tiro antes de usarlo, es probable que el agresor pueda evadirlo o usarlo en tu contra.',
  'Es un llavero común pero con un seguro. Si le quitas el seguro, oirás un sonido fuerte y desagradable. Este tipo de alarmas puede ahuyentar al atacante y llamar la atención de otras personas. Algunos modelos cuentan con una linterna.',
  'Este tipo de accesorios existen en forma de dijes, collares y brazaletes. Si oprimes el botón de emergencia, pasarás tu locación a los servicios de emergencia para que puedan acudir a auxiliarte.',
  'Parecen simples llaveros pero pueden llegar a ser usados como armas, por tener alguna parte puntiaguda o cortante.',
  'Amazon , Mercado libre , Tiendas independientes , Martí , Online.',
  '***RECUERDA QUE SI TIENES UNA MALA EXPERIENCIA NO ES TU CULPA.NO ES PORQUE SALISTE TARDE, LA ROPA QUE USABAS, SI ERES GUAPA O SI DECIDISTE TOMAR ALGO CON AMIGOS. DESAFORTUNADAMENTE EN ALGUNOS CASOS,LAS MUJERES AÚN SOMOS VULNERABLES***'
];

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(
                    ' ${entries[index]}',
                    style: TextStyle(color: Colors.purple),
                  ),
                  content: Text(
                    ' ${tip[index]}',
                    style: TextStyle(color: Colors.purple),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Volver A Menú'),
                      child: const Text('Volver A Menú'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Safe'),
                      child: const Text('Safe'),
                    ),
                  ],
                ),
              ),
              child: Center(child: Text(' ${entries[index]}')),
            );
          }),
    );
  }
}
