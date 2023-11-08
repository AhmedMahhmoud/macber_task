import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/Shared/Snackbar/snackbar_display.dart';
import 'package:macber_task/Core/Shared/Widgets/adaptive_progress_indicator.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/Widgets/cast_item.dart';
import 'package:macber_task/Features/MoviesDetails/Presentation/cubit/casts_cubit.dart';

class MovieCastDisplay extends StatelessWidget {
  const MovieCastDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
        const Text(
          'Cast',
        ),
        const Divider(
          color: AppColors.neutralColor,
          thickness: 0.1,
        ),
        BlocConsumer<CastsCubit, CastsState>(
          builder: (context, state) {
            if (state is CastsLoadingState) {
              return const AdaptiveProgressIndicator();
            }
            if (state is CastsLoadedState) {
              return SizedBox(
                height: 300.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: state.castsList.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.w,
                  ),
                  itemBuilder: (context, index) {
                    return CastWidget(cast: state.castsList[index]);
                  },
                ),
              );
            }
            return Container();
          },
          listener: (context, state) {
            if (state is CastsErrorState) {
              ShowSnackBar.show(
                  context: context, message: state.errorMsg, isSuccess: false);
            }
          },
        )
      ],
    );
  }
}
