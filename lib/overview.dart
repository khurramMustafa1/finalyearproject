import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class overview extends StatefulWidget {
  const overview({super.key});

  @override
  State<overview> createState() => _OverviewState();
}

class _OverviewState extends State<overview> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                      'assets/images/5.png',
                      fit: BoxFit.cover,
                      height: 247,
                      width: 363,
                    ),
                    Image.asset(
                      'assets/images/la.png',
                      fit: BoxFit.cover,
                      height: 247,
                      width: 363,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 8,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "Lahore",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "About Lahore",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 29, vertical: 26),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xff68ADC0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "Lahore, the cultural heart of Pakistan, is a vibrant city steeped in history. It boasts stunning Mughal architecture, bustling bazaars, and a rich culinary scene. From the majestic Lahore Fort to the serene Shalimar Gardens, there's something for everyone. Don't miss the iconic Badshahi Mosque, the lively Food Street, and the historic Wagah Border ceremony.",
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
                        backgroundColor: const Color(0xff68ADC0),
                        minimumSize: const Size(109, 32),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.location_pin, color: Color(0xff0D4858)),
                          Text(
                            "View Map",
                            style: TextStyle(color: Color(0xff000000)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "Activities",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 29, vertical: 26),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xff68ADC0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Polo:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              " Watch thrilling matches at the Lahore Polo Club.",
                              style: TextStyle(color: Color(0xff000000), fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Cricket:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              " Catch a cricket match at Gaddafi Stadium.",
                              style: TextStyle(color: Color(0xff000000), fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Golf:",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              " Play golf at local golf clubs.",
                              style: TextStyle(color: Color(0xff000000), fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          ],
        ),
      ),
    );
  }
}
