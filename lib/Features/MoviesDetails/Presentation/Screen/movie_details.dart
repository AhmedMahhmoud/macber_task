import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Widgets/display_movie_details.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Widgets/image_poster_display.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/cubit/casts_cubit.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';

class MovieDetialsScreen extends StatefulWidget {
  final Movies movie;
  const MovieDetialsScreen({required this.movie, super.key});
  static const path = "movieDetails/";

  @override
  State<MovieDetialsScreen> createState() => _MovieDetialsScreenState();
}

class _MovieDetialsScreenState extends State<MovieDetialsScreen> {
  @override
  void initState() {
    BlocProvider.of<CastsCubit>(context).getCastByMovieID(widget.movie.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImagePosterDisplay(movie: widget.movie),
            const SizedBox(
              height: 10,
            ),
            DisplayMovieDetails(
              movie: widget.movie,
            )
          ],
        ),
      ),
    );
  }
}
