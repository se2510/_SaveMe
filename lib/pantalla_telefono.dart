import 'package:flutter/material.dart';
import 'package:save_me/simulador_llamada.dart';

class telefono extends StatefulWidget {
  const telefono({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<telefono> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mensaje',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 60.0),
                child: Text("SIMULACION DE LLAMADA",
                    style: TextStyle(fontSize: 25)),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Simulación de llamada: Opreta el siguiente botón para ir a la simulacion de llamada, posteriormente deja opretado la barra gris para empezar la llamada. Para colgar opreta el boton rechazar una vez, y para reiniciar opretalo dos veces. ",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => sim_llamada()));
                  },
                  icon: const Icon(Icons.call),
                  label: Text("Simular llamada"),
                  style: ElevatedButton.styleFrom(primary: Colors.purple[800]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
