import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!,dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was cancel');
      case DioExceptionType.connectionError:
        if(dioError.message!.contains('SocketException')){
        }
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error , Please try later');
    }
    return ServerFailure('No Internet Connection , Please try again');

  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not found , please try later');
    }else if (statusCode == 500) {
      return ServerFailure('Internal Server Error , please try later');
    }else {
      return ServerFailure('Oops there was an Error , please try later');
    }
  }
}
