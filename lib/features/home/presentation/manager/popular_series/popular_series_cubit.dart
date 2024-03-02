import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marvel/features/home/data/models/popular_series_model.dart';
import 'package:marvel/features/home/data/repos/home_repos.dart';

part 'popular_series_state.dart';

class PopularSeriesCubit extends Cubit<PopularSeriesState> {
  PopularSeriesCubit(this.homeRepo) : super(PopularSeriesInitial());

  final HomeRepo homeRepo;

  Future<void> fetchPopularSeries() async {
    emit(PopularSeriesLoading());
    var result = await homeRepo.FetchPopularSeries();
    result.fold((failure) {
      emit(PopularSeriesFailure(failure.errMessage));
    }, (PopularSeries) {
      emit(PopularSeriesSuccess(PopularSeries));
    });
  }
}
