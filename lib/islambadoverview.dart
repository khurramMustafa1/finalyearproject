import 'package:flutter/material.dart';
import 'package:fyppproject/clothes.dart';
import 'package:fyppproject/festivals.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/hotel.dart';
import 'package:fyppproject/overview2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class overviewislamabad extends StatefulWidget {
  const overviewislamabad({super.key});

  @override
  State<overviewislamabad> createState() => _overviewislamabadState();
}

class _overviewislamabadState extends State<overviewislamabad> {
  @override
  final PageController pageController=PageController();
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: 247,
            child: PageView(
            controller: pageController,
            children: [
              Image.asset(
                'assets/images/isboverview1.jpg',
                fit: BoxFit.contain,
                width: 363,
              ),
              Image.asset(
                "assets/images/isboverview2.jpg",
                fit: BoxFit.contain,
              ),
            ],
                    ),
          ),
      SizedBox(height: 0),
      Center(
        child: SmoothPageIndicator(
          controller: pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
            spacing: 8,
          ),
        ),
      ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Islamabad",
                style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "About Islamabad",
                style: TextStyle(
                  color: Color(0xff0D4858),
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 29, vertical: 26),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "Islamabad, the capital city of Pakistan, is known for its greenery, serene environment, and modern architecture. Highlights include the iconic Faisal Mosque, Daman-e-Koh viewpoint, and Rawal Lake. Islamabad also boasts beautiful hiking trails in the Margalla Hills and diverse dining options in the bustling F-7 and F-10 sectors.",
                    softWrap: true,
                    maxLines: 4,
                    style: TextStyle(color: Color(0xff000000), fontSize: 10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff68ADC0),
                        minimumSize: Size(109, 32),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Color(0xff0D4858),
                          ),
                          Text(
                            "View Map",
                            style: TextStyle(color: Color(0xff000000)),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Activities",
                style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 29, vertical: 26),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Hiking:",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Text(
                          " Explore trails in Margalla Hills.",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Faisal Mosque:",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Text(
                          " Visit the largest mosque in Pakistan.",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Shopping:",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Text(
                          " Shop at Centaurus Mall or local bazaars.",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 10),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Dining:",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                        Text(
                          " Enjoy diverse cuisines in the F-10 sector.",
                          style: TextStyle(
                              color: Color(0xff000000), fontSize: 10),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
