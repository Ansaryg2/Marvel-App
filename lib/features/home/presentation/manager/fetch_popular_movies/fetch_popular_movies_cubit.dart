import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:marvel/features/home/data/models/trending_movies_model/trending_movies_model.dart';
import 'package:marvel/features/home/data/repos/home_repos.dart';


part 'fetch_popular_movies_state.dart';

class FetchPopularMoviesCubit extends Cubit<FetchPopularMoviesState> {
  FetchPopularMoviesCubit(this.homeRepo) : super(PopularMoviesInitial());

  final HomeRepo homeRepo;

  Future<void> fetchPopularMovies() async {
    emit(PopularMoviesLoading());
    var result = await homeRepo.FetchPopularMovies();
    result.fold((failure) {
      emit(PopularMoviesFailure(failure.errMessage));
    }, (PopularMovies) {
      emit(PopularMoviesSuccess(PopularMovies));
    });
  }
}
