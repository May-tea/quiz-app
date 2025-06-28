import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/widgets/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  final List<String> selectedAnswers;

  const QuestionsSummary({super.key, required this.selectedAnswers});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: List<Widget>.generate(questions.length, (int index) {
            final QuizQuestion question = questions[index];
            final String userAnswer = selectedAnswers[index];
            final String correctAnswer = question.answers[0];
            final bool isCorrect = userAnswer == correctAnswer;

            return SummaryItem(
              index: index,
              questionText: question.text,
              userAnswer: userAnswer,
              correctAnswer: correctAnswer,
              isCorrect: isCorrect,
            );
          }),
        ),
      ),
    );
  }
}
