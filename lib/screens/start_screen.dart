import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_constants.dart';
import 'package:quiz_app/constants/app_sizes.dart';
import 'package:quiz_app/constants/app_styles.dart';
import 'package:quiz_app/constants/app_texts.dart';
import 'package:quiz_app/widgets/base_scaffold.dart';

class StartScreen extends StatelessWidget {
  final void Function() _onStartQuiz;

  const StartScreen(this._onStartQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              AppConstants.imagePath,
              width: AppSizes.imageWidth,
              color: AppColors.imageOverlay,
            ),
            const SizedBox(height: AppSizes.spacing),
            Text(AppTexts.welcomeMessage, style: AppTextStyles.heading),
            const SizedBox(height: AppSizes.spacing),
            OutlinedButton.icon(
              onPressed: _onStartQuiz,
              style: AppButtonStyles.outlined,
              icon: const Icon(Icons.arrow_right_alt),
              label: Text(AppTexts.startButton, style: AppTextStyles.button),
            ),
          ],
        ),
      ),
    );
  }
}
