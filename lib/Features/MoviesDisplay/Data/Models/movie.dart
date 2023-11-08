import 'dart:convert';

import '../../../../Core/Constants/constants.dart';

class Movies {
  final String posterImage;
  final String releaseDate;
  final String title;
  final int id;
  final String overview;
  Movies(
      {required this.posterImage,
      required this.releaseDate,
      required this.id,
      required this.overview,
      required this.title});
  factory Movies.fromJson(String source) => Movies.fromMap(json.decode(source));
  static List<Movies> parseMovies(json) {
    final List moviesList = json as List;
    return moviesList.map((e) => Movies.fromMap(e)).toList();
  }

  factory Movies.fromMap(Map<String, dynamic> json) {
    return Movies(
        overview: json['overview'] ?? '',
        id: json['id'],
        posterImage: "${Constants.imagesUrl}${json['backdrop_path']}",
        releaseDate: json['release_date'] ?? "",
        title: json['title']);
  }
}
