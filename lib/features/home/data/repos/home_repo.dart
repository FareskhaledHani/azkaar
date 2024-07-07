import 'package:azkarapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/elzekr_model/all_azkar_model.dart';
import '../models/elzekr_model/azkar_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllAzkarModel>>> getAllAzkar();
}
