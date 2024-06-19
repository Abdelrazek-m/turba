import 'package:flutter/material.dart';
import '../constant/colors.dart';
import '../widgets/custom_buttom_box_value.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  int count = 0;
  double currentPrice = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'image': 'assets/images/Ellipse 121.png',
        'name': 'PH Sensor',
        'price': '110.0',
      },
      {
        'image': 'assets/images/Ellipse 122.png',
        'name': 'N Sensor',
        'price': '90.0',
      },
      {
        'image': 'assets/images/Ellipse 123.png',
        'name': 'Sensor3',
        'price': '110.0',
      },
      {
        'image': 'assets/images/Ellipse 124.png',
        'name': 'Sensor4',
        'price': '110.0',
      },
      {
        'image': 'assets/images/Ellipse 125.png',
        'name': 'Sensor5',
        'price': '90.0',
      },
      {
        'image': 'assets/images/Ellipse 126.png',
        'name': 'Sensor6',
        'price': '110.0',
      },
    ];

    return Scaffold(
      bottomNavigationBar:
          CustomButtomBoxValue(count: count, currentPrice: currentPrice),
      body: Stack(
        children: [
          GridView.builder(
            padding: const EdgeInsets.only(top:60,left: 20, right: 20, bottom:12,),
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .9),
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: const Color(0xFFF4FFF3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(data[index]['image']),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            data[index]['name'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF020006),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            data[index]['price'] + "LE",
                            style: const TextStyle(
                              color: Color(0xFF486D28),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          count++;
                          currentPrice += double.parse(data[index]['price']);
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.add_circle_rounded,
                          color: Color(0xFF486D28),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
    );
  }
}
