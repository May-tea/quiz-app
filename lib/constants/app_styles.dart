import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_sizes.dart';

abstract class AppTextStyles {
  static const TextStyle heading = TextStyle(
    color: AppColors.headingText,
    fontSize: 24,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle question = TextStyle(
    color: AppColors.questionText,
    fontSize: AppSizes.questionFontSize,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle resultText = TextStyle(
    color: AppColors.resultText,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle circleText = TextStyle(
    color: AppColors.circleText,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const TextStyle questionText = TextStyle(
    color: AppColors.questionTextResult,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle userAnswer = TextStyle(
    color: AppColors.userAnswerText,
  );

  static const TextStyle correctAnswer = TextStyle(
    color: AppColors.correctAnswerText,
  );
}

abstract class AppButtonStyles {
  static final ButtonStyle outlined = OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    side: const BorderSide(color: Colors.white, width: 2),
    foregroundColor: Colors.white,
  );

  static final ButtonStyle answer = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
      vertical: AppSizes.answerButtonPaddingVertical,
      horizontal: AppSizes.answerButtonPaddingHorizontal,
    ),
    backgroundColor: AppColors.answerButtonBackground,
    foregroundColor: AppColors.answerButtonText,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSizes.answerButtonRadius),
    ),
  );
}
