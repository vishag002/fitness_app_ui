import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitness_app_ui_design/utilis/color_const.dart';

class AppTextStyles {
  // ------------------ Headings ------------------

  // Largest header (Extra Bold)
  static final TextStyle headingExtraBold = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryDark,
  );

  // Main header (Bold)
  static final TextStyle headingBold = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryDark,
  );

  // ------------------ Titles ------------------

  static final TextStyle titleBold = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.primaryDark,
  );
  static final TextStyle subTitleBold = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.primaryDark,
  );

  // ------------------ Body / Subtitle ------------------

  static final TextStyle bodyRegular = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryDark,
  );

  static final TextStyle bodySemiBold = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryDark,
  );
  static final TextStyle bodyRegularLato = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryDark,
  );

  static final TextStyle bodySmall = GoogleFonts.lato(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    color: AppColors.grey2,
  );
  static final TextStyle caption = GoogleFonts.lato(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.grey1,
  );

  // ------------------ Labels & Chips ------------------

  static final TextStyle chipLabel = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryDark,
  );

  static final TextStyle labelSmall = GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryDark,
  );

  static final TextStyle percentageTiny = GoogleFonts.poppins(
    fontSize: 8,
    fontWeight: FontWeight.normal,
    color: AppColors.primaryDark,
  );

  // ------------------ Actions ------------------

  static final TextStyle seeMoreLink = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryLime,
  );

  static final TextStyle buttonText = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );

  static final TextStyle mediumText = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryDark,
  );
}
