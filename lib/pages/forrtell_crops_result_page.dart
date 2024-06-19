// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turba/widgets/custom_button.dart';

import '../constant/colors.dart';

class ForrtellCropsResultPage extends StatelessWidget {
  const ForrtellCropsResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
                top: 40    ,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors().black,
                    size: 30,
                  ),
                ),
              ),
          Column(
            children: [
              Image.asset('assets/images/farm.png'),
              Text(
                'بناءا علي قراءات مؤشرات التربه فإن افضل محصول للزراعه هو ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors().black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'القمح',
                style: TextStyle(
                  color: AppColors().black,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Image.asset('assets/images/p1.png'),
              SizedBox(height: 20),
              CustomButton(
                text: 'العودة للصفحه الرئيسيه',
                fontSize: 24,
              )
            ],
          ),
        ],
      ),
    );
  }
}
