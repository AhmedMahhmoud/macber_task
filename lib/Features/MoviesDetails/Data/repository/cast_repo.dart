import 'package:dartz/dartz.dart';
import 'package:macber_task/Core/ErrorHandling/failures.dart';
import 'package:macber_task/Core/Network/api_call.dart';
import 'package:macber_task/Core/Network/connection_checker.dart';
import 'package:macber_task/Features/MoviesDetails/Data/datasource/cast_datasource.dart';
import 'package:macber_task/Features/MoviesDetails/Data/models/cast.dart';

class CastsRepository {
  final ConnectionChecker connectionChecker;
  final CastDatasource castDatasource;
  CastsRepository(
      {required this.connectionChecker, required this.castDatasource});
  Future<Either<Failure, List<MovieCastModel>>> getCast(int movieID) async {
    return await RepoApiCall.apiCall(
        () => castDatasource.getCastDetails(movieID), connectionChecker);
  }
}
