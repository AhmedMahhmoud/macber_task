import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/Shared/Widgets/display_text.dart';
import 'package:macber_task/Core/theme/app_theme.dart';
import 'package:macber_task/Features/MoviesDisplay/Data/Models/movie.dart';
import 'package:transparent_image/transparent_image.dart';

class MovieGridItem extends StatelessWidget {
  const MovieGridItem({
    super.key,
    required this.movie,
  });

  final Movies movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: 300.h,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: Hero(
              tag: movie.id,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                imageErrorBuilder: (context, error, stackTrace) {
                  return const ErrorPlaceholderDisplay();
                },
                image: movie.posterImage,
                fit: BoxFit.fill,
                fadeInDuration: const Duration(milliseconds: 200),
              ),
            ),
          ),
        ),
        Container(
            width: double.infinity,
            height: 40.h,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
            child: DisplayText(
              text: movie.title,
              style: AppTheme.appTheme.textTheme.bodyMedium!,
              textOverflow: TextOverflow.ellipsis,
            )),
      ],
    );
  }
}

class ErrorPlaceholderDisplay extends StatelessWidget {
  const ErrorPlaceholderDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6i29mlctWXgW7c6eZ0QAoBoPk6Z9OyrjW5WvVjU-TZTsF0FX9C3PhJdv_MH-zrN1so0k&usqp=CAU',
      fit: BoxFit.fill,
    );
  }
}
