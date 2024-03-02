part of 'series_details_cubit.dart';

abstract class SeriesDetailsState extends Equatable {
  const SeriesDetailsState();

  @override
  List<Object> get props => [];
}

class SeriesDetailsInitial extends SeriesDetailsState {}

class SeriesDetailsLoading extends SeriesDetailsState {}

class SeriesDetailsFailure extends SeriesDetailsState {
  final String errMessage;

  const SeriesDetailsFailure(this.errMessage);
}

class SeriesDetailsSuccess extends SeriesDetailsState {
  final List<SeriesModel> SeriesDetails;

  const SeriesDetailsSuccess(this.SeriesDetails);
}
