import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class islmabadhotel extends StatefulWidget {
  const islmabadhotel({super.key});

  @override
  State<islmabadhotel> createState() => _HotelState();
}

class _HotelState extends State<islmabadhotel> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        'assets/images/isbhotel1.jpg',
                        fit: BoxFit.contain,
                        width: 363,
                      ),
                      Image.asset(
                        "assets/images/isbhotel2.jpg",
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "assets/images/isbhotel3.jpg",
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
                SizedBox(height: 29),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39),
                  child: Text(
                    "Famous Hotels",
                    style: TextStyle(
                        color: Color(0xff0D4858),
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Serena Hotel:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 11),
                              ),
                              Text(
                                " This 5-star luxury hotel offers",
                                style: TextStyle(
                                  color: Color(0xff0D4858),
                                    fontSize: 9
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "unparalleled services,beautiful interiors,",
                            style: TextStyle(
                              color: Color(0xff0D4858),fontSize: 9
                            ),
                          ),
                          Text(
                            "and is located near Diplomatic Enclave.",
                            style: TextStyle(color: Color(0xff0D4858),fontSize: 10)
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Islamabad Marriott Hotel:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 11),
                              ),
                              Text(
                                " Known for its prime location.",
                                style: TextStyle(
                                  color: Color(0xff0D4858),fontSize: 10
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "and excellent facilities.",
                            style: TextStyle(
                              color: Color(0xff0D4858),fontSize: 10
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Pearl Continental Hotel:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 11),
                              ),
                              Text(
                                " A luxurious stay offering",
                                style: TextStyle(
                                  color: Color(0xff0D4858),fontSize: 10
                                ),
                              ),
                            ],
                          ),
            
                          Text(
                            "exquisite dining options.",
                            style: TextStyle(
                              color: Color(0xff0D4858),fontSize: 10
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Envoy Continental Hotel:",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 11),
                              ),
                              Text(
                                " A mid-range hotel ideal ",
                                style: TextStyle(
                                  color: Color(0xff0D4858),fontSize: 10
                                ),
                              ),
                            ],
                          ),
                          Text(
                            " for business travelers.",
                            style: TextStyle(
                              color: Color(0xff0D4858),fontSize: 10
                            ),
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
      ),
    );
  }
}
