part of 'searchmovies_cubit.dart';

@immutable
sealed class SearchmoviesState {}

final class SearchmoviesInitial extends SearchmoviesState {}

final class SearchMoviesLoadingState extends SearchmoviesState {}

final class SearchMoviesLoadedState extends SearchmoviesState {
  final List<Movies> moviesList;
  SearchMoviesLoadedState({required this.moviesList});
}

final class SearchMoviesErrorState extends SearchmoviesState {
  final String errorMsg;
  SearchMoviesErrorState({required this.errorMsg});
}
