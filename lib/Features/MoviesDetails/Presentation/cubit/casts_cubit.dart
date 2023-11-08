import 'package:bloc/bloc.dart';
import 'package:macber_task/Features/MoviesDetails/Data/models/cast.dart';
import 'package:macber_task/Features/MoviesDetails/Data/repository/cast_repo.dart';
import 'package:meta/meta.dart';

part 'casts_state.dart';

class CastsCubit extends Cubit<CastsState> {
  final CastsRepository castsRepository;

  CastsCubit({required this.castsRepository}) : super(CastsInitial());

  getCastByMovieID(int movieId) async {
    emit(CastsLoadingState());
    final response = await castsRepository.getCast(movieId);
    response.fold((l) => emit(CastsErrorState(errorMsg: l.message)),
        (r) => emit(CastsLoadedState(castsList: r)));
  }
}
