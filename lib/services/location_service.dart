import 'dart:async';

import 'package:location/location.dart';
import 'package:save_me/datamodels/user_location.dart';

class LocationService {
  late UserLocation _currentLocation;
  Location location = Location();

  StreamController<UserLocation> _locationController =
      StreamController<UserLocation>.broadcast();

  LocationService() {
    location.requestPermission().then((granted) {
      if (granted == true) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationController.add(UserLocation(
              latitude: locationData.latitude!,
              longitude: locationData.longitude!,
            ));
          }
        });
      } //* Cierre IF
    });
  }

  Stream<UserLocation> get locationStream => _locationController.stream;

  Future<UserLocation> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      _currentLocation = UserLocation(
        latitude: userLocation.latitude!,
        longitude: userLocation.longitude!,
      );
    } catch (e) {
      print('No se pudo obtener la ubicacion: $e');
    }

    return _currentLocation;
  }
}
