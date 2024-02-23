import 'package:flutter/material.dart';
import 'package:practica2_register_screen/screens/LoginPage.dart';
import 'package:splash_view/splash_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(
      backgroundColor: Color.fromARGB(95, 175, 92, 187),
      logo: Image.asset('../assets/images/Logo.png'),
      loadingIndicator: CircularProgressIndicator(),
      done: Done(const LoginPage(),
          animationDuration: const Duration(milliseconds: 3000)),
    );
  }
}
