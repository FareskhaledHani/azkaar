import 'package:azkarapp/core/errors/failure.dart';
import 'package:azkarapp/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../models/elzekr_model/all_azkar_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);


  @override
  Future<Either<Failure, List<AllAzkarModel>>> getAllAzkar() async {
    try {
      print("data from home repo implemenation");
      var data =await  apiServices.getElazkar();
      print("data $data" );
      List<AllAzkarModel> azkar = List<Map<String,dynamic>>.from(data).map((e) => AllAzkarModel.fromJson(e)).toList();

     /* for (var item in data[''] ) {
        azkar.add(AllAzkarModel.fromJson(item));
      }*/

      return right(azkar);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
