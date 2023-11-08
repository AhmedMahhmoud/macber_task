import 'package:dartz/dartz.dart';
import 'package:macber_task/Core/ErrorHandling/failures.dart';
import 'package:macber_task/Core/Network/api_call.dart';
import 'package:macber_task/Core/Network/connection_checker.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Datasource/movies_datasource.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';

class MoviesRepository {
  final ConnectionChecker connectionChecker;
  final MoviesDatasource moviesDatasource;
  MoviesRepository(
      {required this.connectionChecker, required this.moviesDatasource});
  Future<Either<Failure, List<Movies>>> searchMoviesByTitle(
      String movieTitle) async {
    return await RepoApiCall.apiCall(
        () => moviesDatasource.searchMovie(movieTitle), connectionChecker);
  }
}
