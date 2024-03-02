// ignore_for_file: deprecated_member_use
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marvel/core/errors/failures.dart';
import 'package:marvel/features/home/data/models/movies_model.dart';

import 'package:marvel/features/home/data/models/popular_series_model.dart';
import 'package:marvel/features/home/data/models/series_model.dart';
import 'package:marvel/features/home/data/models/trending_movies_model/trending_movies_model.dart';
import 'package:marvel/features/home/data/repos/home_repos.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<MoviesModel>>> FetchMovies(
      {required int id}) async {
    try {
      var data = await apiService.get(endPoint: 'movie/$id?language=en-US');
      List<MoviesModel> Movies = [];
      for (var item in data['items']) {
        try {
          Movies.add(MoviesModel.fromJson(item));
        } catch (e) {
          Movies.add(MoviesModel.fromJson(item));
        }
      }

      return right(Movies);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failures, List<TrendingMoviesModel>>>
      FetchPopularMovies() async {
    try {
      var data =
          await apiService.get(endPoint: 'movie/popular?language=en-US&page=1');
      List<TrendingMoviesModel> PopularMovies = [];
      for (var item in data['items']) {
          PopularMovies.add(TrendingMoviesModel.fromJson(item));
      }

      return right(PopularMovies);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failures, List<PopularSeriesModel>>>
      FetchPopularSeries() async {
    try {
      var data =
          await apiService.get(endPoint: 'trending/tv/day?language=en-US');
      List<PopularSeriesModel> PopularSeries = [];
      for (var item in data['items']) {
        try {
          PopularSeries.add(PopularSeriesModel.fromJson(item));
        } catch (e) {
          PopularSeries.add(PopularSeriesModel.fromJson(item));
        }
      }

      return right(PopularSeries);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failures, List<SeriesModel>>> FetchSeries(
      {required int id}) async {
    try {
      var data = await apiService.get(endPoint: 'tv/$id?language=en-US');
      List<SeriesModel> Series = [];
      for (var item in data['items']) {
        try {
          Series.add(SeriesModel.fromJson(item));
        } catch (e) {
          Series.add(SeriesModel.fromJson(item));
        }
      }

      return right(Series);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
