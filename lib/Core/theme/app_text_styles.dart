import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macber_task/Core/theme/appColors.dart';

class AppTextStyles {
  static final bold = GoogleFonts.aclonica(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w700, color: AppColors.whiteK));
  static final medium = GoogleFonts.almarai(
      textStyle: const TextStyle(
          fontWeight: FontWeight.w500, color: AppColors.whiteK));

  static const semiBold =
      TextStyle(fontWeight: FontWeight.w600, color: AppColors.whiteK);

  static TextStyle displayLarge() {
    return semiBold.copyWith(fontSize: 36);
  }

  static TextStyle displayMedium() {
    return semiBold.copyWith(fontSize: 28);
  }

  static TextStyle bodyLarge() {
    return medium.copyWith(fontSize: 17);
  }

  static TextStyle bodyMedium() {
    return medium.copyWith(fontSize: 15);
  }
}
