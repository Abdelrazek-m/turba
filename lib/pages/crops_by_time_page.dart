import 'package:flutter/material.dart';
import 'package:turba/widgets/custom_crops_details.dart';
import 'package:turba/widgets/custom_text_view.dart';

import '../constant/colors.dart';

class CropsByTimePage extends StatelessWidget {
  const CropsByTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
      {
        "date": "2021-01-01",
        'time': '00:00:00',
        "crop": "Cabbage",
        'data': {
          'درجة الحرارة': 35,
          'نتروجين': 45,
          'الرطوبة': 65,
          'فسفور': 21,
          'الرقم الهيدروجيني': 45,
          'بوتاسيوم': 123,
          'معد ل سقوط الأمطار': 45,
        },
      },
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextView(text: data[index]['time']),
                      CustomTextView(text: data[index]['date']),
                    ],
                  ),
                  CustomCropDetails(data: data[index]['data']),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Positioned(
              top: 30,
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
    );
  }
}
