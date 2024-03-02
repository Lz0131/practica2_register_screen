import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 117, 159, 192),
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
                      "¡Bienvenido!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Gracias por elegirnos para satisfacer tus necesidades de tecnología. Estamos aquí para ayudarte a encontrar el dispositivo perfecto.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage('assets/images/giphy.gif')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
