import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class screen_info extends StatefulWidget {
  const screen_info({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<screen_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return myCards(context, index);
      },
    ));
  }

  final List<String> nums = <String>[
    '/',
    '065',
    '066',
    '068',
    '071',
    '072',
    '56581111',
    '56832222'
  ];

  Widget myCards(BuildContext context, int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            myListTile(index),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () async {
                      final url = 'tel:${nums[index]}';
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    },
                    child: const Text("Llamar")),
              ],
            ),
          ],
        ));
  }
}

Widget myListTile(int index) {
  Widget a = const ListTile();
  if (index == 0) {
    a = ListTile(
      contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
      title: Text(
        "Telefonos de emergencia",
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(
        "CDMX",
        style: TextStyle(color: Colors.grey),
      ),
      leading: Image.asset("assets/icons/te1.png", scale: 1.0),
      //trailing: Icon(Icons.plus_one)
    );
  }
  if (index == 1) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "065",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Cruz Roja"),
        leading: Image.asset("assets/icons/te2.png", scale: 1.0),
        trailing: Icon(Icons.call_missed_outgoing_rounded));
  }
  if (index == 2) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "066",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Emergencias CDMX"),
        leading: Image.asset("assets/icons/te3.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  if (index == 3) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "068",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Bomberos"),
        leading: Image.asset("assets/icons/te4.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  if (index == 4) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "071",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Comisión federal de electricidad"),
        leading: Image.asset("assets/icons/te5.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }

  if (index == 5) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "072",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Agencia de gestión urbana"),
        leading: Image.asset("assets/icons/te6.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  if (index == 6) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "56 58 11 11",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Locatel"),
        leading: Image.asset("assets/icons/te7.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  if (index == 7) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "56 83 22 22",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Protección civil"),
        leading: Image.asset("assets/icons/te8.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  if (index == 8) {
    a = ListTile(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
        title: Text(
          "56 54 32 10",
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text("Sistema de aguas de la CDMX"),
        leading: Image.asset("assets/icons/te9.png", scale: 1.0),
        trailing: Icon(Icons.add_call));
  }
  return a;
}
