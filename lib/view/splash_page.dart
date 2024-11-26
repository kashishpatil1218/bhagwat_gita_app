import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () async {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return Scaffold(
      backgroundColor: Color(0xFFE9E0D4),
      body: Center(
        child: Image.asset(
          'asset/img/splas.png',
          height: 250,
        ),
      ),
    );
  }
}
