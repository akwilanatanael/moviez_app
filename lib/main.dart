// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moviez_app/ui/pages/home_page.dart';
import 'package:moviez_app/ui/pages/onboarding_page.dart';
import 'package:moviez_app/ui/pages/splash_screen_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreenPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
