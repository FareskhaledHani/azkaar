import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;
  Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connectionTimeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromRespond(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('api service request canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('connectionError');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('socketException')) {
          return ServerFailure('NO INTERNET');
        } else {
          return ServerFailure('unknown error');
        }
    }
  }
  factory ServerFailure.fromRespond(int statusCode, dynamic respond) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(respond['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('404 not found');
    } else if (statusCode == 500) {
      return ServerFailure('server not available');
    } else {
      return ServerFailure('oops there is a error try again letter');
    }
  }
}
