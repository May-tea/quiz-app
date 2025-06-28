import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_styles.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: AppButtonStyles.answer,
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
