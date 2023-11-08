import 'package:flutter/material.dart';
import 'package:macber_task/Core/Shared/Widgets/display_text.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Core/theme/app_theme.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Widgets/cast_list_display.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';

class DisplayMovieDetails extends StatelessWidget {
  const DisplayMovieDetails({
    required this.movie,
    super.key,
  });

  final Movies movie;
  @override
  Widget build(BuildContext context) {
    final style = AppTheme.appTheme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DisplayText(
                text: 'Title',
                style: style.bodyLarge!,
                textOverflow: TextOverflow.ellipsis,
              ),
              DisplayText(
                text: movie.title,
                style: style.bodyMedium!,
                color: AppColors.neutalDisabled,
              ),
            ],
          ),
          const Divider(
            color: AppColors.neutralColor,
            thickness: 0.1,
          ),
          const SizedBox(
            height: 5,
          ),
          DisplayText(
            text: 'Overview',
            style: style.bodyLarge!,
          ),
          const Divider(
            color: AppColors.neutralColor,
            thickness: 0.1,
          ),
          DisplayText(
            text: movie.overview,
            style: style.bodyMedium!,
            color: AppColors.neutalDisabled,
          ),
          const MovieCastDisplay()
        ],
      ),
    );
  }
}
