import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:macber_task/Core/theme/appColors.dart';
import 'package:macber_task/Core/theme/app_text_styles.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColor,
    primaryColor: AppColors.primaryColor,
    inputDecorationTheme: _inputDecorationTheme,
    textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLarge(),
        displayMedium: AppTextStyles.displayMedium(),
        bodyLarge: AppTextStyles.bodyLarge(),
        bodyMedium: AppTextStyles.medium),
    disabledColor: AppColors.neutralColor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
  );
  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
    hintStyle: AppTextStyles.bodyMedium(),
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 10.w),
    fillColor: AppColors.neutralColorSearchField.withOpacity(0.3),
    alignLabelWithHint: true,
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.neutralColorSearchField,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15)),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.neutralColorSearchField,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15)),
    errorStyle: AppTextStyles.bodyMedium().copyWith(
        color: AppColors.errorColor, fontWeight: FontWeight.w600, fontSize: 12),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.errorColor, width: 1.0),
        borderRadius: BorderRadius.circular(15)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.errorColor, width: 1.0),
        borderRadius: BorderRadius.circular(15)),
  );
}
