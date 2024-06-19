
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../helper/size_config.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key, required this.text, this.onTap,
  });
final String text;
final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: AppColors().sucandryColor2,
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.reverseGraduint = false,
    required this.text,
    this.onTap,  this.fontSize=30,
  });
  final bool reverseGraduint;
  final String text;
  final double fontSize;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: SizeConfig(context: context).screenWidthPercentage * 60,
        height: 74,
        decoration: ShapeDecoration(
          gradient:
              reverseGraduint ? AppColors().gradient2 : AppColors().gradient,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            // fontFamily: 'Darker Grotesque',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
