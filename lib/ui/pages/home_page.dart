// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:moviez_app/models/popular_movies.dart';
import 'package:moviez_app/shared/theme.dart';
import 'package:moviez_app/ui/pages/detail_movies_page.dart';
import 'package:moviez_app/ui/widgets/movies_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: Text(
            'Daftar Film',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 24,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return PopularMoviesList();
            },
          ),
        ),
      ),
    );
  }
}

class PopularMoviesList extends StatelessWidget {
  const PopularMoviesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final PopularMovies movies = popularMoviesList[index];
        return MoviesCard(
          imageUrl: movies.imageAsset,
          nameMovie: movies.name,
          genreMovie: movies.genre,
          durasi: movies.durasi,
          sutradara: movies.sutradara,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailMovies(
                    movies: movies,
                  );
                },
              ),
            );
          },
        );
      },
      itemCount: popularMoviesList.length,
    );
  }
}
