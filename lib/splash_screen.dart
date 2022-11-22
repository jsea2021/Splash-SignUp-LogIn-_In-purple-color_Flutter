import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ui_authentication/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                (Color.fromARGB(255, 170, 38, 210)),
                (Color.fromARGB(255, 89, 29, 107))
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Center(
              child: Container(
            child: Image.asset("assets/Ichrak.png"),
          ))
        ],
      ),
    );
  }
}
