
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomCropDetails extends StatelessWidget {
  const CustomCropDetails({
    super.key,
    required this.data,
  });
  final Map<String,dynamic> data;

  @override
  Widget build(BuildContext context) {
  final List<String> details=[
          'درجة الحرارة',
          'نتروجين',
          'الرطوبة',
          'فسفور',
          'الرقم الهيدروجيني',
          'بوتاسيوم',
          'معد ل سقوط الأمطار',
        ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: details.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.85,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              details[index],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextFormField(
              initialValue: data[details[index]].toString(),
              decoration: InputDecoration(
                fillColor: AppColors().gray.withOpacity(.38),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'لم يتم ادخال القيمه';
                }
                return null;
              },
            )
          ],
        ),
      ),
    );
  }
}
