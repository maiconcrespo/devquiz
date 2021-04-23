import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroudnColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroudnColor,
    required this.fontColor,
    required this.borderColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.backgroudnColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.borderColor = AppColors.green,
        this.onTap = onTap;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.backgroudnColor = AppColors.white,
        this.fontColor = AppColors.lightGrey,
        this.label = label,
        this.borderColor = AppColors.grey,
        this.onTap = onTap;

  NextButtonWidget.purple({required String label, required VoidCallback onTap})
      : this.backgroudnColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.label = label,
        this.borderColor = AppColors.grey,
        this.onTap = onTap;

  NextButtonWidget.transparente(
      {required String label, required VoidCallback onTap})
      : this.backgroudnColor = AppColors.white,
        this.fontColor = AppColors.purple,
        this.label = label,
        this.borderColor = AppColors.grey,
        this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        height: 48,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroudnColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: borderColor)),
              )),
          onPressed: onTap,
          child: Text(label,
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600, fontSize: 15, color: fontColor)),
        ));
  }
}
