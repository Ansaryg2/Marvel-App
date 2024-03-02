import 'package:flutter/material.dart';
import 'package:marvel/features/home/data/models/trending_movies_model/trending_movies_model.dart';

class NewMoviesItem extends StatelessWidget {
  const NewMoviesItem({super.key, required this.popularMovies});
  final TrendingMoviesModel popularMovies;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Image.asset(
        'assets/Mobius_M._Mobius.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
