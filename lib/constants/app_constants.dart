import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppConstants {
  static const String fontFamily = 'Lato';

  static const List<Color> backgroundGradient = <Color>[
    AppColors.gradientStart,
    AppColors.gradientEnd,
  ];

  static const Alignment gradientStartAlignment = Alignment.topLeft;
  static const Alignment gradientEndAlignment = Alignment.bottomRight;

  static const String imagePath = 'assets/images/quiz-logo.png';
}
