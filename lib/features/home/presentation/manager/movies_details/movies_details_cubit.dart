import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel/features/home/data/models/movies_model.dart';
import 'package:marvel/features/home/data/repos/home_repos.dart';

part 'movies_details_state.dart';

class MoviesDetailsCubit extends Cubit<MoviesDetailsState> {
  MoviesDetailsCubit(this.homeRepo) : super(MoviesDetailsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchMovies({required int id}) async {
    emit((MoviesDetailsLoading()));
    var result = await homeRepo.FetchMovies(id: id);
    result.fold((failure) {
      emit(MoviesDetailsFailure(failure.errMessage));
    }, (MoviesDetails) {
      emit(MoviesDetailsSuccess(MoviesDetails));
    });
  }
}
