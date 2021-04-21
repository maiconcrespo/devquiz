import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_repository.dart';
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

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;

    user = await repository.getUser();
    state = HomeState.sucess;
  }

  Future<void> getQuizzes() async {
    state = HomeState.loading;

    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }
}
