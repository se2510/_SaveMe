import 'package:flutter/material.dart';
//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:save_me/pantalla_home.dart';
import 'package:save_me/pantalla_telefono.dart';
import 'package:save_me/pantalla_chat.dart';
import 'package:save_me/pantalla_info.dart';
import 'package:save_me/portada.dart';

class pantalla_principal extends StatefulWidget {
  const pantalla_principal({Key? key}) : super(key: key);

  @override
  _pantalla_principalState createState() => _pantalla_principalState();
}

class _pantalla_principalState extends State<pantalla_principal> {
  // ? Inicio de todo
  int _selectedIndex = 0;
  PageController pageController = PageController();

  List<Widget> _paginas = [
    portada(),
    home(),
    telefono(),
    chats(),
    screen_info()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save Me'),
        backgroundColor: Colors.purple[300],
      ),
      body: _paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), // ! Primer ícono
              backgroundColor:
                  Colors.purple[300], //Color.fromRGBO(117, 123, 200, 20)
              label: 'Save me'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more), // ! Primer ícono
              backgroundColor:
                  Colors.purple[300], //Color.fromRGBO(117, 123, 200, 20)
              label: 'Tips'),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone), // ! Segundo ícono
              backgroundColor: Colors.purple[300],
              label: 'Llamadas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.warning), // ! Tercer ícono
              backgroundColor: Colors.purple[300],
              label: 'Mensaje Alerta'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info), // ! Cuarto ícono
              backgroundColor: Colors.purple[300],
              label: 'App info')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.purple[
            200], //* unselectedItemColor: const Color.fromRGBO(142, 148, 242, 20)
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
} // ?   end all
