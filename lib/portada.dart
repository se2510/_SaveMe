import 'package:flutter/material.dart';

void main() => runApp(const portada());

class portada extends StatelessWidget {
  const portada({Key? key}) : super(key: key);

  static const String _title = 'SAVE ME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      title: _title,
      home: const Scaffold(
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(25.0),
        children: <Widget>[
          Image.asset(
            //! Imagen 1
            'assets/images/1.jpg',
            height: 200,
            fit: BoxFit.cover,
          ),
          Text(
            'NI UNA MENOS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              color: Colors.purple[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  //! 2
                  'assets/images/2.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  //! 3
                  'assets/images/3.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  //! 4
                  'assets/images/4.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  //! 5
                  'assets/images/5.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  //! 6
                  'assets/images/6.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  //! 7
                  'assets/images/7.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Image.asset(
                  //! 8
                  'assets/images/8.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
              ClipOval(
                child: Image.asset(
                  //! 9
                  'assets/images/9.jpg',
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            const Text(
              '"SAVE ME"  está diseñada para todas las mujeres que viajan en transporte, en especial Taxi.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            MaterialButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationVersion: '1.0.0',
                  applicationLegalese:
                      'Esta aplicación, es apta para todas la edades',
                  children: [
                    Image.asset(
                      //! 10
                      'assets/images/10.jpg',
                      width: 30,
                      height: 90,
                    ),
                    const Text(
                      'Universidad Nacional Autónoma de México, Facultad de Ingeniería 2022',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Elaborada por:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'González García David Elias : pineco2510@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'González Gómez Alejandro: alejandrogogo02@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Miramontes Carsolio Carla Ivette : carlitaivettemc@gmail.com ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Sevilla Rivera Eder Eduardo : cevillaedgar1@gmail.com ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                );
              },
              child: const Text('More Info'),
            ),
          ]),
        ]);
  }
}
