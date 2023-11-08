import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:macber_task/Core/Network/connection_checker.dart';
import 'package:macber_task/Features/MoviesDetails/Data/datasource/cast_datasource.dart';
import 'package:macber_task/Features/MoviesDetails/Data/repository/cast_repo.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/cubit/casts_cubit.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Datasource/movies_datasource.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Repository/movies_repo.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/cubit/searchmovies_cubit.dart';

final GetIt getIt = GetIt.instance;
Future<void> setupDependencies() async {
  //Cubits
  getIt.registerLazySingleton<SearchmoviesCubit>(
      () => SearchmoviesCubit(moviesRepository: getIt()));
  getIt.registerLazySingleton<CastsCubit>(
      () => CastsCubit(castsRepository: getIt()));
  //Repositories
  getIt.registerLazySingleton(() =>
      MoviesRepository(connectionChecker: getIt(), moviesDatasource: getIt()));
  getIt.registerLazySingleton(() =>
      CastsRepository(connectionChecker: getIt(), castDatasource: getIt()));
  //Datasources
  getIt.registerLazySingleton(() => MoviesDatasource());
  getIt.registerLazySingleton(() => CastDatasource());
  //Externals!
  getIt.registerLazySingleton<ConnectionChecker>(
      () => ConnectionChecker(getIt()));
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
