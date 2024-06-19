import 'package:flutter/material.dart';
import 'package:turba/constant/colors.dart';
import 'package:turba/helper/size_config.dart';
import 'package:turba/pages/home_page.dart';
import 'package:turba/pages/login_page.dart';
import 'package:turba/pages/sginup.dart';

import '../widgets/custom_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().white,
        body: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..translate(-45.1, 0.0)
                ..scale(1.2)
                ..rotateZ(-0.44),
              child: Container(
                width: SizeConfig(context: context).screenWidth,
                height: 135,
                decoration: BoxDecoration(color: AppColors().sucandryColor),
              ),
            ),
            Positioned(
              top: 135,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(-45.1, 0.0)
                  ..scale(1.2)
                  ..rotateZ(-0.44),
                child: Container(
                  width: SizeConfig(context: context).screenWidth,
                  height: 80,
                  decoration: BoxDecoration(color: AppColors().mainColor),
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: -100,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(22 / 7 * .25),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: AppColors().sucandryColor),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                    height:
                        SizeConfig(context: context).screenHeightPercentage *
                            18.5),
                Image.asset('assets/images/Turbalogo.png'),
                CustomButton(
                  text: 'إنشاء الحساب',
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SginUpPage(),
                        ));
                  },
                ),
                SizedBox(
                    height:
                        SizeConfig(context: context).screenWidthPercentage * 5),
                CustomButton(
                  text: 'تسجيل الدخول',
                  reverseGraduint: true,
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                ),
                SizedBox(
                    height:
                        SizeConfig(context: context).screenWidthPercentage * 5),
                 CustomTextButton(
                  text: 'تخطي',onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                )
              ],
            ),
          ],
        ));
  }
}
