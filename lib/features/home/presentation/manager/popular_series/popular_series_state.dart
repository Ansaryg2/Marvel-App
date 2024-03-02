part of 'popular_series_cubit.dart';

abstract class PopularSeriesState extends Equatable {
  const PopularSeriesState();

  @override
  List<Object> get props => [];
}

class PopularSeriesInitial extends PopularSeriesState {}

class PopularSeriesLoading extends PopularSeriesState {}

class PopularSeriesFailure extends PopularSeriesState {
  final String errMessage;

  const PopularSeriesFailure(this.errMessage);
}

class PopularSeriesSuccess extends PopularSeriesState {
  final List<PopularSeriesModel> PopularSeries;

  const PopularSeriesSuccess(this.PopularSeries);
}
