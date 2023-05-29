import 'package:flutter/material.dart';
import 'package:multi_rolebased_app/home_screen.dart';
import 'package:multi_rolebased_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

