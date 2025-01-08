import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class karachihotel extends StatefulWidget {
  const karachihotel({super.key});

  @override
  State<karachihotel> createState() => _HotelState();
}

class _HotelState extends State<karachihotel> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: SingleChildScrollView(
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
                      'assets/images/karachihotel.jpg',
                      fit: BoxFit.contain,
                      width: 500,
                    ),
                    Image.asset(
                      'assets/images/karachihotel1.jpg',
                      fit: BoxFit.contain,
                      width: 500,
                    ),
                    Image.asset(
                      "assets/images/karachihotel2.jpg",
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
              SizedBox(height: 2),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    dotHeight: 4,
                    dotWidth: 4,
                    spacing: 8,
                  ),
                ),
              ),
              SizedBox(height: 29),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Famous Hotels in Karachi",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Movenpick Hotel Karachi
                        Row(
                          children: [
                            Text(
                              "Movenpick Hotel Karachi:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              " This 5-star hotel offers luxury ",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          "accommodations and is centrally located in Karachi.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Text(
                          "It is known for its excellent service and amenities.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        SizedBox(height: 10),
              
                        // Pearl Continental Karachi
                        Row(
                          children: [
                            Text(
                              "Pearl Continental Karachi:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              " This iconic 5-star hotel",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          "is known for its luxurious rooms, dining, and events.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Text(
                          "It is located in the heart of Karachi.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        SizedBox(height: 10),
              
                        // Ramada Plaza Karachi
                        Row(
                          children: [
                            Text(
                              "Ramada Plaza Karachi:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              " This 4-star hotel offers",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          "comfortable accommodations and is close to the airport.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Text(
                          "It is popular with business travelers.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        SizedBox(height: 10),
              
                        // Beach Luxury Hotel
                        Row(
                          children: [
                            Text(
                              "Beach Luxury Hotel:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              " This budget-friendly hotel",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          "offers a serene stay with views of the Arabian Sea.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        ],
      ),
    );
  }
}
