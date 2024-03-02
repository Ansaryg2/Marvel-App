part of 'fetch_popular_movies_cubit.dart';

@immutable
abstract class FetchPopularMoviesState extends Equatable {
  const FetchPopularMoviesState();

  @override
  List<Object> get props => [];
}

class PopularMoviesInitial extends FetchPopularMoviesState {}

class PopularMoviesLoading extends FetchPopularMoviesState {}

class PopularMoviesFailure extends FetchPopularMoviesState {
  final String errMessage;

  const PopularMoviesFailure(this.errMessage);
}

class PopularMoviesSuccess extends FetchPopularMoviesState {
  final List<TrendingMoviesModel> PopularMovies;

  const PopularMoviesSuccess(this.PopularMovies);
}
