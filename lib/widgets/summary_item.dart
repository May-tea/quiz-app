import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_styles.dart';

class SummaryItem extends StatelessWidget {
  final int index;
  final String questionText;
  final String userAnswer;
  final String correctAnswer;
  final bool isCorrect;

  const SummaryItem({
    super.key,
    required this.index,
    required this.questionText,
    required this.userAnswer,
    required this.correctAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    final Color circleColor = isCorrect
        ? AppColors.correctCircle
        : AppColors.wrongCircle;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: circleColor,
            radius: 16,
            child: Text('${index + 1}', style: AppTextStyles.circleText),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(questionText, style: AppTextStyles.questionText),
                const SizedBox(height: 5),
                Text(
                  'Your answer: $userAnswer',
                  style: AppTextStyles.userAnswer,
                ),
                Text(
                  'Correct answer: $correctAnswer',
                  style: AppTextStyles.correctAnswer,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
