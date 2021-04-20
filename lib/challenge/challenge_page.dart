import 'package:DevQuiz/challenge/widgets/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widgets/quizz_widget/quizz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(child: QuestionIndicatorWidget()),
        preferredSize: Size.fromHeight(60),
      ),
      body: QuizzWidget(title: 'O que o flutter faz en su totalidad'),
    );
  }
}
