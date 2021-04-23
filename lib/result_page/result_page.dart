import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.trophy),
              Text(
                'Parabéns',
                style: AppTextStyles.heading40,
              ),
              SizedBox(
                height: 35,
              ),
              Text.rich(
                TextSpan(
                    text: 'Você concluiu',
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(text: '\n$title', style: AppTextStyles.bodyBold),
                      TextSpan(
                          text: '\ncom $result de $length acertos.',
                          style: AppTextStyles.body),
                    ]),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: NextButtonWidget.purple(
                          label: 'Compartilhar',
                          onTap: () {
                            Share.share('check out https://example.com');
                          }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              NextButtonWidget.transparente(
                  label: 'Voltar al Início', onTap: () {}),
            ]),
      ),
    );
  }
}
