
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../helper/size_config.dart';

class CustomButtomBoxValue extends StatelessWidget {
  const CustomButtomBoxValue({
    super.key,
    required this.count,
    required this.currentPrice,
  });

  final int count;
  final double currentPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      alignment: Alignment.center,
      width: SizeConfig(context: context).screenWidthPercentage * 60,
      height: 68,
      decoration: ShapeDecoration(
        gradient: AppColors().gradient,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50), top: Radius.circular(12)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$count عنصر',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '${currentPrice}LE',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
