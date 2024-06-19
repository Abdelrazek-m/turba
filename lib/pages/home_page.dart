import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:turba/constant/colors.dart';
import 'package:turba/pages/foretell_crops_page.dart';
import 'package:turba/pages/item_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> agriculturalCrops = const [
      'assets/images/Ellipse 22-1.png',
      'assets/images/Ellipse 22.png',
      'assets/images/Ellipse 23.png',
      'assets/images/Ellipse 22-1.png',
      'assets/images/Ellipse 22.png',
      'assets/images/Ellipse 23.png',
    ];

    List<String> data = const [
      'تحليل التربة',
      // 'إستشاري المحاصيل',
      // 'إنتاجية المحصول',
      // 'سقوط الأمطار',
      // 'أمراض المحصول',
      // 'الأسمدة',
      'المنتجات',
    ];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.separated(
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: agriculturalCrops.length,
              itemBuilder: (context, index) => Container(
                width: 100,
                height: 100,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(agriculturalCrops[index]),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 1, color: AppColors().mainColor),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.2),
              itemBuilder: (context, index) => Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => data[index] == 'تحليل التربة'
                                ? ForetellCropsPage()
                                : const ItemDetailsPage(),
                          ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: AppColors().sucandryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        data[index],
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
