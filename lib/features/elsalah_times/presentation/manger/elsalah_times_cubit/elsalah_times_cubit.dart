import 'package:azkarapp/features/elsalah_times/data/models/elsalah_time_model/elsalah_times_model/elsalah_times_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
//import '../../../data/models/elsalah_time_model/elsalah_time_model.dart';
import '../../../data/repo/elsalah_times_impl.dart';
part 'elsalah_times_state.dart';

class ElsalahTimesCubit extends Cubit<ElsalahTimesState> {
  final ElsalahTimesImpl elsalahTimesImpl;
  ElsalahTimesCubit(this.elsalahTimesImpl) : super(ElsalahTimesInitial());
  Future<void> getElsalahTimes() async {
    emit(ElsalahTimesLoading());
    var result = await elsalahTimesImpl.getElsalahTimes();
    result.fold((failure) {
      emit(ElsalahTimesFailure(failure.errMassage));
    }, (elsalahTimes) {
      emit(ElsalahTimesSuccess(elsalahTimes));
      print(elsalahTimes);
    });
  }
}
