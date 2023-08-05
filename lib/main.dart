import 'package:acm_app/welcome_screen.dart';

import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACM Workshop',
      initialRoute: '/home',
      routes: {
        '/': (context) => const HomeScreen(),
        "/home": (context) => const WelcomeScreen(),
      },
    );
  }
}
