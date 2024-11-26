import 'package:bhagwat_gita/view/splash_page.dart';
import 'package:flutter/material.dart';

import '../view/homepage/home_screen.dart';


class Routes{
  static Map <String,Widget Function(BuildContext)> routes= {
    '/': (context) => const SplashPage(),
    '/home': (context) => const Homepage(),
  };
}

