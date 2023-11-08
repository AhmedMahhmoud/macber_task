part of 'casts_cubit.dart';

@immutable
sealed class CastsState {}

final class CastsInitial extends CastsState {}

final class CastsLoadingState extends CastsState {}

final class CastsLoadedState extends CastsState {
  final List<MovieCastModel> castsList;
  CastsLoadedState({required this.castsList});
}

final class CastsErrorState extends CastsState {
  final String errorMsg;
  CastsErrorState({required this.errorMsg});
}
