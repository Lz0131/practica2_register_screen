import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 163, 212),
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
                      "¡Obtén lo mejor con Phone!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Garantía extendida, asistencia técnica, programas de recompra, etc.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage('assets/images/gif3.gif')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
