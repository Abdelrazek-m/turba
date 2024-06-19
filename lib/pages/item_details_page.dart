import 'package:flutter/material.dart';
import 'package:turba/helper/size_config.dart';
import 'package:turba/pages/market_page.dart';
import 'package:turba/widgets/custom_button.dart';

import '../constant/colors.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                height:
                    SizeConfig(context: context).screenHeightPercentage * 35,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 119, 119, 119),
                        offset: Offset(0, 1),
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/img1.png',
                        ))),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'تفاصيل المنتج ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'معلومات اكثر عن الجهاز\nمعلومات اكثر عن الجهاز\nمعلومات اكثر عن الجهاز\nمعلومات اكثر عن الجهاز\nمعلومات اكثر عن الجهاز',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        '90 ج م',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const CustomButton(text: 'شراء'),
               CustomTextButton(text: 'قم بتصميم جهازك', onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MarketPage(),
                            ));
                      },),
              const SizedBox(height: 20),
            ],
          ),
          Positioned(
              top: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors().white,
                  size: 30,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
