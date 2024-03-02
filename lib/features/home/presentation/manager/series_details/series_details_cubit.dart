import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel/features/home/data/models/series_model.dart';
import 'package:marvel/features/home/data/repos/home_repos.dart';

part 'series_details_state.dart';

class SeriesDetailsCubit extends Cubit<SeriesDetailsState> {
  SeriesDetailsCubit(this.homeRepo) : super(SeriesDetailsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSeries({required int id}) async {
    emit((SeriesDetailsLoading()));
    var result = await homeRepo.FetchSeries(id: id);
    result.fold((failure) {
      emit(SeriesDetailsFailure(failure.errMessage));
    }, (SeriesDetails) {
      emit(SeriesDetailsSuccess(SeriesDetails));
    });
  }
}
