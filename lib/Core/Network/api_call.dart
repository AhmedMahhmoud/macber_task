import 'package:dartz/dartz.dart';
import 'package:macber_task/Core/ErrorHandling/exceptions.dart';
import 'package:macber_task/Core/ErrorHandling/failures.dart';
import 'package:macber_task/Core/Network/connection_checker.dart';

class RepoApiCall {
  static Future<Either<Failure, T>> apiCall<T>(
      Future<T> Function() apiCall, ConnectionChecker connectionChecker) async {
    if (await connectionChecker.isConnected() == false) {
      return Left(NetworkFailure());
    }
    try {
      final res = await apiCall();
      return Right(res);
    } on EndpointException catch (e) {
      return Left(EndpointFailure(e.errorMsg));
    } on ServerException {
      return Left(ServerFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
