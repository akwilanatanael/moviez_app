// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moviez_app/shared/theme.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/onboarding',
          (route) => false,
        );
      },
    );
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img_splash.png',
              height: 180,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Aplikasi Daftar Film',
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
