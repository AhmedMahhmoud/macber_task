import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Repository/movies_repo.dart';
import 'package:meta/meta.dart';

part 'searchmovies_state.dart';

class SearchmoviesCubit extends Cubit<SearchmoviesState> {
  final MoviesRepository moviesRepository;
  SearchmoviesCubit({required this.moviesRepository})
      : super(SearchmoviesInitial());
  List<Movies> movies = [];
  Timer? _timer; //for debouncing
  searchMovieByTitle(String movieName) async {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 500), () async {
      emit(SearchMoviesLoadingState());
      final repsonse = await moviesRepository.searchMoviesByTitle(movieName);
      repsonse.fold((l) => emit(SearchMoviesErrorState(errorMsg: l.message)),
          (r) {
        // emit(SearchMoviesLoadedState(moviesList: r);
        movies = r;
        emit(SearchMoviesLoadedState(moviesList: r));
      });
    });
  }
}
