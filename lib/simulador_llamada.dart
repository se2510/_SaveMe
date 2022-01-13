import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:save_me/main.dart';

void main() {
  runApp(MyApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sim_llamada(),
    );
  }
}

class sim_llamada extends StatefulWidget {
  const sim_llamada({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<sim_llamada> {
  late AudioPlayer audioPlayer;
  AudioCache cache = AudioCache();
  Color _backgroundColor = Color(0xFF163345);
  Random random = Random();
  String _caller = "";
  String areaCode = "55";
  String primeros = "";
  String segundos = "";
  String terceros = "";
  String cuartos = "";
  List callerList = [
    "Madre",
    "Jefesito",
    "Mi perrazo",
    "Miamor",
    "El buen Juan",
    "Bob Esponja",
    "German",
    "Fredo",
    "Eris",
  ];

  bool _ringing = false;
  bool _startScreen = true;

  void _start() {
    int callerIndex = random.nextInt(callerList.length);
    int pdos = random.nextInt(89) + 10;
    int sdos = random.nextInt(89) + 10;
    int tdos = random.nextInt(89) + 10;
    int cdos = random.nextInt(89) + 10;
    setState(() {
      primeros = pdos.toString();
      segundos = sdos.toString();
      terceros = tdos.toString();
      cuartos = cdos.toString();
      _caller = callerList[callerIndex];
      _startScreen = false;
    });
    _ring();
  }

  void _ring() async {
    _ringing = true;
    do {
      audioPlayer = await cache.play("iphone_6_original.mp3");
      await Future.delayed(Duration(seconds: 3));
    } while (_ringing);
  }

  void _stopRinging() {
    if (audioPlayer != null) {
      audioPlayer.stop();
    }
    _ringing = false;
  }

  void _reset() {
    if (audioPlayer != null) {
      audioPlayer.stop();
    }
    _ringing = false;
    setState(() {
      _startScreen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _startScreen ? Colors.black : _backgroundColor,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(_caller,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey)),
                Text(
                  "$areaCode $primeros $segundos $terceros $cuartos",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 2.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.alarm, color: Colors.white, size: 30),
                        Text(
                          "Recordarme",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.message, color: Colors.white, size: 30),
                        Text(
                          "Mensaje",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: _stopRinging,
                          onDoubleTap: _reset,
                          child: FloatingActionButton(
                            child: Icon(Icons.call_end, size: 34),
                            backgroundColor: Colors.red,
                            onPressed: null,
                            heroTag: "Rech",
                          ),
                        ),
                        Text(
                          "Rechazar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: FloatingActionButton(
                            child: Icon(Icons.phone, size: 34),
                            backgroundColor: Colors.green,
                            onPressed: null,
                            heroTag: "Ac",
                          ),
                        ),
                        Text(
                          "Aceptar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            if (_startScreen)
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(color: Colors.black),
                  ),
                  Expanded(
                      flex: 0,
                      child: GestureDetector(
                        onLongPress: _start,
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          color: Colors.grey[900],
                        ),
                      ))
                ],
              )
          ],
        ));
  }
}
