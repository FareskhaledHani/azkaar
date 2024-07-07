part of 'elsalah_times_cubit.dart';

abstract class ElsalahTimesState extends Equatable {
  const ElsalahTimesState();
  @override
  List<Object> get props => [];
}

class ElsalahTimesInitial extends ElsalahTimesState {}

class ElsalahTimesLoading extends ElsalahTimesState {}

class ElsalahTimesSuccess extends ElsalahTimesState {
  final ElsalahTimesModel elsalahTimesList;

  const ElsalahTimesSuccess(this.elsalahTimesList);
}

class ElsalahTimesFailure extends ElsalahTimesState {
  final String errMassage;

  const ElsalahTimesFailure(this.errMassage);
}
