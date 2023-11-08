import 'package:flutter/material.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Screen/movie_details.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/Screens/movies_display.dart';

class OnPageRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const MoviesHome());
      case 'movieDetails/':
        final movie = args as Movies;
        return MaterialPageRoute(
          builder: (context) => MovieDetialsScreen(movie: movie),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
