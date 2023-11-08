import 'package:macber_task/Core/constants/constants.dart';

class MovieCastModel {
  final String actorName;
  final String actorImage;
  final String actorNameInMovie;

  MovieCastModel(
      {required this.actorName,
      required this.actorImage,
      required this.actorNameInMovie});
  factory MovieCastModel.fromJson(json) {
    return MovieCastModel(
      actorName: json['name'],
      actorNameInMovie: json['character'],
      actorImage: "${Constants.imagesUrl}${json['profile_path']}",
    );
  }
  static List<MovieCastModel> parseCast(json) {
    final List castList = json as List;
    return castList.map((e) => MovieCastModel.fromJson(e)).toList();
  }
}
