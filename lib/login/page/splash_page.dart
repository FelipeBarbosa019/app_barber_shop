import 'package:app_barber/login/page/login.dart';
import 'package:app_barber/shared/theme.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDuration = 2;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: splashDuration), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Center(
        child: Image.asset(
          'assets/barbearia.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
