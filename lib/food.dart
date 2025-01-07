import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      'assets/images/food1.png',
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/food1.png',
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
                  count: 2,
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
                  "Food",
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
                  "Year-Round Delights",
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
                child: Expanded(
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
                                "Halwa Puri:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 11),
                              ),
                              Text(
                                " A quintessential breakfast dish",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                          Text(
                            "consisting of crispy puris, sweet halwa, and spicy chana masala.",
                            style: TextStyle(color: Color(0xff0D4858)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Nahiri",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    " A rich and flavorful meat stew, often enjoyed",
                                    style: TextStyle(color: Color(0xff0D4858)),
                                  ),
                                ],
                              ),
                              Text(
                                " with naan or roti.",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Samosa chaat:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    " Crispy samosas topped with tangy ",
                                    style: TextStyle(color: Color(0xff0D4858)),
                                  ),
                                ],
                              ),
                              Text(
                                "tamarind chutney, spicy mint chutney, and yogurt.",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Dahi Bhala:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    " Soft, fried balls soaked in creamy yogurt",
                                    style: TextStyle(color: Color(0xff0D4858)),
                                  ),
                                ],
                              ),
                              Text(
                                "topped with chutneys and spices.",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Naan Roti:",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    " Juicy, grilled skewers of minced meat,   ",
                                    style: TextStyle(color: Color(0xff0D4858)),
                                  ),
                                ],
                              ),
                              Text(
                                "often served with naan or roti.",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lassi :",
                                    style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 11),
                                  ),
                                  Text(
                                    " A refreshing yogurt-based drink, available in  ",
                                    style: TextStyle(color: Color(0xff0D4858)),
                                  ),
                                ],
                              ),
                              Text(
                                "sweet and salted varites.",
                                style: TextStyle(color: Color(0xff0D4858)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Seasonal Specialties",
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
      ),
    );
  }
}
