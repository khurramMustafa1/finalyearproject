import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IsbFood extends StatefulWidget {
  const IsbFood({super.key});

  @override
  State<IsbFood> createState() => _IsbFoodState();
}

class _IsbFoodState extends State<IsbFood> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PageView for images
            Container(
              height: 239,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset(
                    'assets/images/isbf2.jpg',
                    fit: BoxFit.contain,
                    width: 500,
                  ),
                  Image.asset(
                    'assets/images/isbf1.jpg',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/isbf3.jpg',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // SmoothPageIndicator for navigation
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 8,
                ),
              ),
            ),
            SizedBox(height: 29),
            // Food heading text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text(
                "Food of Islamabad",
                style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 24),
              ),
            ),
            SizedBox(height: 16),
            // Year-Round Delights text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text(
                "Year-Round Delights of Islamabad",
                style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            // Food description container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffADD2DC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Chapli Kebab: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11),
                          ),
                          Text(
                            "A Pashtun delicacy loved spicy flavor",
                            style: TextStyle(color: Color(0xff0D4858),fontSize: 9),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Pulao: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11),
                          ),
                          Text(
                            "Aromatic rice cooked with meat and spices.",
                            style: TextStyle(color: Color(0xff0D4858),fontSize: 9),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Dum Pukht: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11),
                          ),
                          Text(
                            "A slow-cooked meat dish rich in flavor.",
                            style: TextStyle(color: Color(0xff0D4858),fontSize: 9),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Kulfi Falooda: ",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11),
                          ),
                          Text(
                            "A sweet dessert perfect for summers.",
                            style: TextStyle(color: Color(0xff0D4858),fontSize: 9),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text(
                "Seasonal Specialties of Islamabad",
                style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Color(0xff0D4858),
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Color(0xff0D4858),
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Color(0xff0D4858),
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Color(0xff0D4858),
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Color(0xff0D4858),
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color(0xff0D4858),
            ),
          ),
          label: "",
        ),
      ]),
    );
  }
}
