import 'package:azkarapp/core/errors/failure.dart';
import 'package:azkarapp/features/elsalah_times/data/models/elsalah_time_model/elsalah_times_model/elsalah_times_model.dart';
import 'package:dartz/dartz.dart';

abstract class ElsalahTimesRepo {
  Future<Either<Failure, ElsalahTimesModel>> getElsalahTimes();
}
