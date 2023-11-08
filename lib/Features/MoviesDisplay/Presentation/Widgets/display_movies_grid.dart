import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:macber_task/Core/DependencyInjection/di.dart';
import 'package:macber_task/Core/Shared/Snackbar/snackbar_display.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Screen/movie_details.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/Widgets/movie_grid_item.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/cubit/searchmovies_cubit.dart';

class DisplayMoviesGrid extends StatelessWidget {
  const DisplayMoviesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchmoviesCubit, SearchmoviesState>(
      listener: (context, state) {
        if (state is SearchMoviesErrorState) {
          ShowSnackBar.show(
              context: context, message: state.errorMsg, isSuccess: false);
        }
      },
      builder: (context, state) {
        final List<Movies> moviesList = getIt<SearchmoviesCubit>().movies;
        return Expanded(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  childAspectRatio: (1 / 1.5),
                ),
                itemCount: moviesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridTile(
                    child: InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, MovieDetialsScreen.path,
                            arguments: moviesList[index]),
                        child: MovieGridItem(movie: moviesList[index])),
                  );
                }));
      },
    );
  }
}
