import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../helper/size_config.dart';
import '../widgets/custom_button.dart';

class SginUpPage extends StatelessWidget {
  const SginUpPage({super.key});

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
                  'إدخل البيانات للإستمرار',
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
            height: SizeConfig(context: context).screenHeightPercentage * 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الاسم",
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
                      SizeConfig(context: context).screenHeightPercentage * 1,
                ),
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
                      SizeConfig(context: context).screenHeightPercentage * 1,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "رقم الهاتف",
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
                      SizeConfig(context: context).screenHeightPercentage * 1,
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
                      SizeConfig(context: context).screenHeightPercentage * 5,
                ),
                const CustomButton(text: 'إنشاء الحساب'),
                SizedBox(
                  height:
                      SizeConfig(context: context).screenHeightPercentage * 2,
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextButton(text: 'سجل الدخول'),
                    Text(
                      'لديك بالفعل حساب ؟ ',
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
