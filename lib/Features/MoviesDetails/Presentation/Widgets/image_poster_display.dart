import 'package:flutter/material.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/Widgets/movie_grid_item.dart';

class ImagePosterDisplay extends StatelessWidget {
  final Movies movie;
  const ImagePosterDisplay({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: movie.id,
          child: Image.network(
            movie.posterImage,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const ErrorPlaceholderDisplay();
            },
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.whiteK,
            size: 35,
          ),
        )
      ],
    );
  }
}
