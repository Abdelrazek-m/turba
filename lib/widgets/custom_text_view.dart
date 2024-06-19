
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomTextView extends StatelessWidget {
  const CustomTextView({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        color: AppColors().sucandryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
