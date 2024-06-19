import 'package:flutter/material.dart';

class AppColors {
  Color mainColor = const Color(0xff9CD276);

  Color sucandryColor = const Color(0xffE9FFE7);

  Color sucandryColor2 = const Color(0xff486D28);

  LinearGradient gradient = const LinearGradient(
      begin: Alignment(1.00, 0.00),
      end: Alignment(-1, 0),
      colors: [
        Color(0xff8BD34D),
        Color(0xff486D28),
      ]);
  LinearGradient gradient2 = const LinearGradient(
      begin: Alignment(1.00, 0.00),
      end: Alignment(-1, 0),
      colors: [
        Color(0xff486D28),
        Color(0xff8BD34D),
      ]);

  Color black = Colors.black;

  Color gray = const Color(0xffD9D9D9);

  Color white = Colors.white;
}
