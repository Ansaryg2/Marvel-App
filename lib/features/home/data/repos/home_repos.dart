// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:marvel/core/errors/failures.dart';
import 'package:marvel/features/home/data/models/movies_model.dart';
import 'package:marvel/features/home/data/models/popular_series_model.dart';
import 'package:marvel/features/home/data/models/series_model.dart';
import 'package:marvel/features/home/data/models/trending_movies_model/trending_movies_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<TrendingMoviesModel>>> FetchPopularMovies();
  Future<Either<Failures, List<PopularSeriesModel>>> FetchPopularSeries();
  Future<Either<Failures, List<MoviesModel>>> FetchMovies({required int id});
  Future<Either<Failures, List<SeriesModel>>> FetchSeries({required int id});
}
