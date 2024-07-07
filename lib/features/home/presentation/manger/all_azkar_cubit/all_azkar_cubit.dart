import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/elzekr_model/all_azkar_model.dart';
import '../../../data/models/elzekr_model/azkar_model.dart';
import '../../../data/repos/home_repo.dart';

part 'all_azkar_state.dart';

class AllAzkarCubit extends Cubit<AllAzkarState> {
  final HomeRepo homeRepo;
  AllAzkarCubit(this.homeRepo) : super(AllAzkarInitial());
  Future<void> getAllAzkar() async {
    emit(AllAzkarLoading());
    var result = await homeRepo.getAllAzkar();
print("result : $result");
    result.fold(
      (failure) {
        emit(AllAzkarFailure(errMassage: failure.errMassage));
      },
      (azkar) {
        emit(AllAzkarSuccess(azkar));
      },
    );
  }
}
