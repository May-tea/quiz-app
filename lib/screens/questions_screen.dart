import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/app_sizes.dart';
import 'package:quiz_app/constants/app_styles.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/routes/app_pages.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/widgets/base_scaffold.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;
  final List<String> _selectedAnswers = <String>[];

  void _answerQuestion(String selectedAnswer) {
    _selectedAnswers.add(selectedAnswer);

    if (_currentQuestionIndex < questions.length - 1) {
      setState(() => _currentQuestionIndex++);
    } else {
      Get.offNamed(Routes.results, arguments: _selectedAnswers);
    }
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion question = questions[_currentQuestionIndex];

    return BaseScaffold(
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(AppSizes.screenMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  question.text,
                  style: AppTextStyles.question,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spacing),
                for (final String answer in question.shuffledAnswers)
                  AnswerButton(
                    answerText: answer,
                    onTap: () => _answerQuestion(answer),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
