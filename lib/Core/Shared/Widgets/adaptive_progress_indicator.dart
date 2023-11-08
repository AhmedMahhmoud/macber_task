import 'package:flutter/material.dart';
import 'package:macber_task/Core/theme/appColors.dart';

class AdaptiveProgressIndicator extends StatelessWidget {
  const AdaptiveProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
