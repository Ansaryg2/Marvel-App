// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with Server');
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with Server');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with Server');
      case DioErrorType.badCertificate:
        return ServerFailure('Bad certificate with Server');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('operation cancelled');
      case DioErrorType.connectionError:
        return ServerFailure('connection error with Server');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Error');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your Response isn't available");
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error');
    } else {
      return ServerFailure('unexpected Error');
    }
  }
}
