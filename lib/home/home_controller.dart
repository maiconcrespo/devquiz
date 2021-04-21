import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/widget/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quizz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  //User
  //Quizzes
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;
  UserModel? user;
  List<QuizzModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: 'Maicon Crespo',
      photoUrl: 'https://avatars.githubusercontent.com/u/39372160?v=4',
    );
    state = HomeState.sucess;
  }

  Future<void> getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizzModel(
          questionAnswered: 2,
          title: 'NLW 5 Flutter',
          questions: [
            QuestionModel(title: 'Está Curtindo o FLutter?', answers: [
              AnswerModel(title: 'Estou Curtindo'),
              AnswerModel(title: 'Amando Flutter'),
              AnswerModel(title: 'Muito Top'),
              AnswerModel(title: 'Show de Bola', isRight: true),
            ]),
            QuestionModel(title: 'Está Curtindo o Dart?', answers: [
              AnswerModel(title: 'Estou Curtindo'),
              AnswerModel(title: 'Amando Flutter'),
              AnswerModel(title: 'Muito Top'),
              AnswerModel(title: 'Show de Bola', isRight: true),
            ]),
            QuestionModel(title: 'Está Curtindo o NLW?', answers: [
              AnswerModel(title: 'Estou Curtindo'),
              AnswerModel(title: 'Amando Flutter'),
              AnswerModel(title: 'Muito Top'),
              AnswerModel(title: 'Show de Bola', isRight: true),
            ]),
          ],
          image: AppImages.blocks,
          level: Level.facil)
    ];
    state = HomeState.sucess;
  }
}
