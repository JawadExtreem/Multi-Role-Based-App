import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_rolebased_app/home_screen.dart';
import 'package:multi_rolebased_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        fit: BoxFit.fitHeight,
        height: double.infinity,
        image: NetworkImage('https://images.pexels.com/photos/1624487/pexels-photo-1624487.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
    );
  }
}
