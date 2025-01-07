import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IslamabadClothes extends StatefulWidget {
  const IslamabadClothes({super.key});

  @override
  State<IslamabadClothes> createState() => _IslamabadClothesState();
}

class _IslamabadClothesState extends State<IslamabadClothes> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset('assets/images/isbclothes1.jpg',
                      fit: BoxFit.cover, height: 247, width: 363),
                  Image.asset('assets/images/isbclothes2.jpg',
                      fit: BoxFit.cover, height: 247, width: 363),
                ],
              ),
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text("Clothes",
                  style: TextStyle(
                      color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,
                      fontSize: 24)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text("Spring (March-May)",
                  style: TextStyle(
                      color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,
                      fontSize: 20)),
            ),
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
                            "Weather:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 13,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Pleasant with light breezes, ideal for outdoor activities and layered clothing.",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Clothing:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 13,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Casual lightweight jackets, cotton kurtas, and shawls are popular choices.",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Text("Summer (June-August)",
                  style: TextStyle(
                      color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,
                      fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffADD2DC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Weather:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 13,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Hot and humid with occasional rain. Light fabrics are a must.",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Clothing:",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 13,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Linen kurtas, loose trousers, and cotton outfits to keep cool.",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xff0D4858)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Color(0xff0D4858)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Color(0xff0D4858)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Color(0xff0D4858)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: Color(0xff0D4858)),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
