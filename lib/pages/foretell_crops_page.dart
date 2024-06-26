import 'package:flutter/material.dart';
import 'package:turba/constant/colors.dart';
import 'package:turba/widgets/custom_button.dart';

import '../widgets/custom_crops_details.dart';
import '../widgets/custom_text_view.dart';
import 'crops_by_time_page.dart';
import 'forrtell_crops_result_page.dart';

// ignore: must_be_immutable
class ForetellCropsPage extends StatelessWidget {
  ForetellCropsPage({super.key});
  GlobalKey formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = const {
      'درجة الحرارة': 35,
      'نتروجين': 45,
      'الرطوبة': 65,
      'فسفور': 21,
      'الرقم الهيدروجيني': 45,
      'بوتاسيوم': 123,
      'معد ل سقوط الأمطار': 45,
    };
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 12, right: 12),
        child: Form(
          key: formKey,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/enteryes.png'),
                    CustomCropDetails(data: data),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'تنبأ بالمحصول',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForrtellCropsResultPage(),
                            ));
                      },
                    ),
                    const SizedBox(height: 10),
                    CustomTextButton(
                      text: 'رؤيه القراءات السابقة',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CropsByTimePage(),
                            ));
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              const Positioned(
                top: 60,
                left: 5,
                child: CustomTextView(
                  text: '00:00:40',
                ),
              ),
              Positioned(
                top: 10,
                child: IconButton(
                  onPressed: () {
                  
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors().black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
