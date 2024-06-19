import 'package:flutter/material.dart';

class SizeConfig{
  final BuildContext context;

  SizeConfig({required this.context});

  MediaQueryData get mediaQueryData => MediaQuery.of(context);
  double get screenWidth => mediaQueryData.size.width;
  double get screenHeight => mediaQueryData.size.height;
  double get screenWidthPercentage => screenWidth / 100;
  double get screenHeightPercentage => screenHeight / 100;

}