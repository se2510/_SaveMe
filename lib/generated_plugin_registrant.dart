//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars

import 'package:audioplayers/web/audioplayers_web.dart';
import 'package:flutter_sms/flutter_sms_web.dart';
import 'package:geolocator_web/geolocator_web.dart';
import 'package:location_web/location_web.dart';
import 'package:share_plus_web/share_plus_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  AudioplayersPlugin.registerWith(registrar);
  FlutterSmsPlugin.registerWith(registrar);
  GeolocatorPlugin.registerWith(registrar);
  LocationWebPlugin.registerWith(registrar);
  SharePlusPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
