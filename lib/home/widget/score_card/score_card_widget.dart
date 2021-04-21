import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/widget/chart/chart_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  final UserModel user;

  ScoreCardWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 14),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(
                  score: user.score,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vamos Começar',
                        style: AppTextStyles.heading,
                      ),
                      Text(
                        'Complete os Desafios e avance em ...',
                        style: AppTextStyles.body,
                      ),
                      Text(
                        'CONHECIMENTO',
                        style: AppTextStyles.heading,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        //  ScoreCardWidget(),
      ),
    );
  }
}
