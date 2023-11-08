import 'dart:convert';

import 'package:macber_task/Core/ErrorHandling/exceptions.dart';
import 'package:macber_task/Core/constants/constants.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:http/http.dart' as http;

class MoviesDatasource {
  Future<List<Movies>> searchMovie(String movieTitle) async {
    try {
      var header = {'Authorization': "Bearer ${Constants.accessToken}"};
      final url =
          "${Constants.baseUrl}search/movie?api_key=${Constants.apiKey}&query=$movieTitle";
      final response = await http.get(Uri.parse(url), headers: header);
      if (response.statusCode == 200) {
        var decodedResponse = json.decode(response.body);
        return Movies.parseMovies(decodedResponse['results']);
      } else if (response.statusCode == 500) {
        throw ServerException();
      }
    } catch (e) {
      throw EndpointException(errorMsg: e.toString());
    }
    throw UnExpectedException();
  }
}
