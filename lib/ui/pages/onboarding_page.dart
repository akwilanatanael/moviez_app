// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moviez_app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  final CarouselController _carouselController = CarouselController();

  List<String> title = [
    'Aplikasi Film Pilihan Kamu',
    'Detail dan Sinopsis Film',
    'Daftar Film Sedang Tayang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_carousel_1.png',
                  height: 200,
                ),
                Image.asset(
                  'assets/img_carousel_2.png',
                  height: 200,
                ),
                Image.asset(
                  'assets/img_carousel_3.png',
                  height: 200,
                ),
              ],
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
              carouselController: _carouselController,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title[currentIndex],
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            currentIndex == 2
                ? SizedBox(
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/homepage',
                          (route) => false,
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: blackColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 0 ? Colors.blue : Colors.grey,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 1 ? Colors.blue : Colors.grey,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 2 ? Colors.blue : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 200,
                        child: TextButton(
                          onPressed: () {
                            _carouselController.nextPage();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: blackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text(
                            'Next',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
