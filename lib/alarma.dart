import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:save_me/services/location_service.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:provider/provider.dart';
import 'datamodels/user_location.dart';
import 'package:geocoding/geocoding.dart';

void main() => runApp(alarma_sms());

class alarma_sms extends StatelessWidget {
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

    // Test if location services are enabled.
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
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mensaje',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Tu ultima ubicaciónm es:'),
              Text(
                "Latitud: " + _latitude,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Longitud: " + _longitude,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Altitud: " + _altitude,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Velocidad: " + _speed,
                style: Theme.of(context).textTheme.headline5,
              ),
              const Text('Dirección: '),
              Text(_address),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.large(
          onPressed: _updatePosition,
          tooltip: 'Obtener la ubicacion GPS',
          child: const Icon(Icons.change_circle_outlined),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

void _sendSMS(String mensaje, List<String> bandeja) async {
  String _result = await sendSMS(
    message: mensaje,
    recipients: bandeja,
  ).catchError((onError) {
    print(onError);
  });
  print(_result);
}
