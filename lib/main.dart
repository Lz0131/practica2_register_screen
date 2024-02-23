import 'package:flutter/material.dart';
import 'package:practica2_register_screen/screens/splash_screen.dart';
import 'package:practica2_register_screen/settings/app_value_notifier.dart';
import 'package:practica2_register_screen/settings/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppValueNotifier.banTheme,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value
              ? ThemeApp.darkTheme(context)
              : ThemeApp.lightTheme(context),
          home: SplashScreen(),
        );
      },
    );
  }
}
