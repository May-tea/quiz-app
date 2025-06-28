import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/app_sizes.dart';
import 'package:quiz_app/constants/app_styles.dart';
import 'package:quiz_app/constants/app_texts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/routes/app_pages.dart';
import 'package:quiz_app/widgets/base_scaffold.dart';
import 'package:quiz_app/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  String formatResultMessage(int correct, int total) => AppTexts.resultMessage
      .replaceFirst('{correct}', correct.toString())
      .replaceFirst('{total}', total.toString());

  @override
  Widget build(BuildContext context) {
    final List<String> selectedAnswers = Get.arguments as List<String>;

    int correctCount = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i].answers[0]) {
        correctCount++;
      }
    }

    return BaseScaffold(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(AppSizes.screenMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                formatResultMessage(correctCount, questions.length),
                style: AppTextStyles.resultText,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spacing),
              QuestionsSummary(selectedAnswers: selectedAnswers),
              const SizedBox(height: AppSizes.spacing),
              TextButton.icon(
                onPressed: () => Get.offAllNamed(Routes.questions),
                style: AppButtonStyles.outlined,
                icon: const Icon(Icons.refresh),
                label: Text(AppTexts.restartQuiz, style: AppTextStyles.button),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
