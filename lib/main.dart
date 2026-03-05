import 'package:flutter/material.dart';
import 'views/splash_screen_ui.dart';
import 'views/home_ui.dart';
import 'views/sub_a_home_ui.dart';
import 'views/sub_b_home_ui.dart';
import 'views/sub_c_home_ui.dart';
import 'views/sub_d_home_ui.dart';
import 'views/about_ui.dart';

void main() {
  runApp(const ThaiHotlineApp());
}

class ThaiHotlineApp extends StatelessWidget {
  const ThaiHotlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thai Hotline',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenUI(),
        '/home': (context) => const HomeUI(),
        '/subA': (context) => const SubAHomeUI(),
        '/subB': (context) => const SubBHomeUI(),
        '/subC': (context) => const SubCHomeUI(),
        '/subD': (context) => const SubDHomeUI(),
        '/about': (context) => const AboutUI(),
      },
    );
  }
}
