import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fogo/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashTimer() {
    Timer(Duration(milliseconds: 2500), () {
      Navigator.pushNamed(context, 'mainScreen');
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            // Color(0xFFC41E4C),
            Color(0xFF870022),
            // Color(0xFF870CD8),
            Color(0xFF1029ED),

            // Color.fromARGB(255, 35, 117, 248),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UnconstrainedBox(
              child: Image.asset(
                'assets/icons/fogo_icon.png',
              ),
            ),
            Text(
              'FOGO - PRO',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              'PRACTICE LACROSSE',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
