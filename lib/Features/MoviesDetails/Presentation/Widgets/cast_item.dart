import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/Shared/Widgets/display_text.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Core/theme/app_theme.dart';
import 'package:macber_task/Features/MoviesDetails/Data/models/cast.dart';

class CastWidget extends StatelessWidget {
  final MovieCastModel cast;
  const CastWidget({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80.w,
          height: 120.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.neutralColor, width: 1),
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(cast.actorImage),
            ),
          ),
        ),
        FittedBox(
            child: DisplayText(
          text: cast.actorName,
          style: AppTheme.appTheme.textTheme.bodyMedium!,
          textOverflow: TextOverflow.ellipsis,
        )),
        const SizedBox(
          height: 5,
        ),
        DisplayText(
          text: cast.actorNameInMovie,
          style: AppTheme.appTheme.textTheme.bodySmall!,
          color: AppColors.neutralColor.withOpacity(0.8),
          textOverflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
