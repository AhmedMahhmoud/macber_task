import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/Widgets/display_movies_grid.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/Widgets/search_movie_text_field.dart';
import 'package:macber_task/Core/DependencyInjection/di.dart' as di;
import 'package:macber_task/Features/MoviesDisplay/Presentation/cubit/searchmovies_cubit.dart';

class MoviesHome extends StatelessWidget {
  const MoviesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.getIt<SearchmoviesCubit>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(children: [
            const SearchMovieTextField(),
            SizedBox(
              height: 15.h,
            ),
            const DisplayMoviesGrid()
          ]),
        ),
      ),
    );
  }
}
