// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:moviez_app/models/popular_movies.dart';
import 'package:moviez_app/shared/theme.dart';

class DetailMovies extends StatelessWidget {
  final PopularMovies movies;
  const DetailMovies({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(movies.imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: backgroundColor,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movies.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: semibold,
                                  ),
                                ),
                                Text(
                                  movies.genre,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  movies.durasi,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  movies.sutradara,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Sinopsis',
                                  textAlign: TextAlign.center,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semibold,
                                  ),
                                ),
                                Text(
                                  movies.sinopsis,
                                  textAlign: TextAlign.justify,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
