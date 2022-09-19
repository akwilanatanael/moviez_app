// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moviez_app/shared/theme.dart';

class MoviesCard extends StatelessWidget {
  final String imageUrl;
  final String nameMovie;
  final String genreMovie;
  final String durasi;
  final String sutradara;
  final VoidCallback? onTap;
  const MoviesCard({
    super.key,
    required this.imageUrl,
    required this.nameMovie,
    required this.genreMovie,
    required this.durasi,
    required this.sutradara,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameMovie,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    genreMovie,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    durasi,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    sutradara,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Selengkapnya...',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
