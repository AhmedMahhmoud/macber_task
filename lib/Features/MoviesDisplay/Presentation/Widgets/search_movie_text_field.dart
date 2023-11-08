import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Core/theme/app_theme.dart';
import 'package:macber_task/Features/MoviesDisplay/Presentation/cubit/searchmovies_cubit.dart';

class SearchMovieTextField extends StatelessWidget {
  const SearchMovieTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final style = AppTheme.appTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Center(
        child: TextField(
          onChanged: (value) {
            BlocProvider.of<SearchmoviesCubit>(context)
                .searchMovieByTitle(value);
          },
          style: style.textTheme.bodyLarge!,
          cursorColor: AppColors.whiteK,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
              hintText: 'Search for movie ..',
              hintStyle: style.textTheme.bodyLarge!
                  .copyWith(color: AppColors.whiteK.withOpacity(0.6))),
        ),
      ),
    );
  }
}
