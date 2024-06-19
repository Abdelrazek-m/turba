import 'package:flutter/material.dart';
import 'package:turba/constant/colors.dart';
import 'package:turba/helper/size_config.dart';
import 'package:turba/pages/home_page.dart';
import 'package:turba/pages/sginup.dart';
import 'package:turba/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/login_ellipse.png'),
              Positioned(
                top: 40,
                left: 10,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors().white,
                    size: 30,
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 50,
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: AppColors().white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig(context: context).screenHeightPercentage * 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                      color: Color(0xFF9CD276),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: AppColors().gray),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().sucandryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:
                      SizeConfig(context: context).screenHeightPercentage * 2,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'كلمة السر',
                    style: TextStyle(
                      color: Color(0xFF9CD276),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: AppColors().gray),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors().sucandryColor,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.visibility_off_outlined),
                  ),
                ),
                SizedBox(
                  height:
                      SizeConfig(context: context).screenHeightPercentage * 10,
                ),
                 CustomButton(text: "تسجيل الدخول",onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  }, ),
                SizedBox(
                  height:
                      SizeConfig(context: context).screenHeightPercentage * 2,
                ),
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextButton(text: 'إنشئ حساب', onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SginUpPage(),
                        ));
                  },),
                    const Text(
                      'ليس لديك حساب ؟',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
