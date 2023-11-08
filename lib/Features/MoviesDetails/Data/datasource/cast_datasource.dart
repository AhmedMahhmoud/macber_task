import 'dart:convert';

import 'package:macber_task/Core/ErrorHandling/exceptions.dart';
import 'package:macber_task/Core/constants/constants.dart';
import 'package:macber_task/Features/MoviesDetails/Data/models/cast.dart';
import 'package:http/http.dart' as http;

class CastDatasource {
  Future<List<MovieCastModel>> getCastDetails(int movieID) async {
    try {
      final url = "${Constants.baseUrl}/movie/$movieID/credits?language=en-US";
      final response =
          await http.get(Uri.parse(url), headers: Constants.header);
      if (response.statusCode == 200) {
        var decodedResponse = json.decode(response.body);
        return MovieCastModel.parseCast(decodedResponse['cast']);
      } else if (response.statusCode == 500) {
        throw ServerException();
      }
    } catch (e) {
      throw EndpointException(errorMsg: e.toString());
    }
    throw UnExpectedException();
  }
}
