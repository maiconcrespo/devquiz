import 'dart:convert';

import 'package:DevQuiz/shared/models/quizz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString('database/user.json');
    final user = UserModel.fromJson(response);
    return user;
  }

  Future<List<QuizzModel>> getQuizzes() async {
    final response = await rootBundle.loadString('database/quizzes.json');
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizzModel.fromMap(e)).toList();
    return quizzes;
  }
}
