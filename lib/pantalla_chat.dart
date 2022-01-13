import 'package:flutter/material.dart';
//import 'package:save_me/alarma.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:share_plus/share_plus.dart';

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  _chatsState createState() => _chatsState();
}

class _chatsState extends State<chats> {
  var _latitude = "";
  var _longitude = "";
  var _altitude = "";
  var _speed = "";
  var _address = "";

  Future<void> _updatePosition() async {
    Position pos = await _determinePosition();
    List pm = await placemarkFromCoordinates(pos.latitude, pos.longitude);
    setState(() {
      _latitude = pos.latitude.toString();
      _longitude = pos.longitude.toString();
      _altitude = pos.altitude.toString();
      _speed = pos.speed.toString();
      _address = pm[0].toString();
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

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
                child: Text(
                  "BOTON DE ALARMA",
                  style: TextStyle(
                      fontSize: 25), //Theme.of(context).textTheme.headline5,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Ocupa este botón de alarma para compartir tu ubicación y avisar a tus seres queridos que te sientes en peligro. ",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    _determinePosition();
                    _updatePosition();
                    share(context, _latitude, _longitude);
                  },
                  icon: const Icon(Icons.location_on),
                  label: Text("Compartir ubicación"),
                  style: ElevatedButton.styleFrom(primary: Colors.purple[800]),
                ),
              ),
            ],
          ),
          //child:
        ),
      ),
    );
  }

  void share(BuildContext context, String _latitude, String _longitude) {
    Share.share(
        'Ayuda, me siento en peligro y esto no es un juego, esta es mi ubicación: https://www.google.com/maps/search/?api=1&query=${_latitude},${_longitude}');
  }
}
