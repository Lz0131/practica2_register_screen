import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 184, 127, 194),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      "¡Descubre Nuestra Gama de Productos!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Desde smartphones de última generación hasta opciones asequibles para todos los presupuestos.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage('assets/images/gif2.gif')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
