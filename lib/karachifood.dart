import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class karachifood extends StatefulWidget {
  const karachifood({super.key});

  @override
  State<karachifood> createState() => _foodState();
}

class _foodState extends State<karachifood> {
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
            SizedBox(
              height: 247,
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset(
                    'assets/images/arachikarahi.jpg',
                    fit: BoxFit.contain,
                    width: 500,
                  ),
                  Image.asset(
                    'assets/images/food1.png',
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/karachiseekh.jpg',
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
                "Food of Karachi",
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
                "Year-Round Delights of Karachi",
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
                              "Halwa Puri: ",
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 11),
                            ),
                            Text(
                              " A quintessential Karachi breakfast dish",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          "consisting of crispy puris, sweet halwa, and spicy chana masala.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Biryani: ",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11),
                                ),
                                Text(
                                  " A famous spicy rice dish with",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "marinated chicken or beef.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "A perfect blend of flavors, served with raita.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Samosa: ",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11),
                                ),
                                Text(
                                  " Crispy and spicy snack stuffed with",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              " potatoes, peas, and meat.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "Perfect for any time of the day, often served with chutney.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Karahi: ",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11),
                                ),
                                Text(
                                  "A spicy and aromatic chicken",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "or mutton curry.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "Cooked in a wok-like vessel with tomatoes, green chilies, and ginger.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Seekh Kebabs: ",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 11),
                                ),
                                Text(
                                  " Grilled skewers of spiced,",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "minced meat usually served with naan.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "A favorite street food in Karachi, enjoyed by many.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
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
                "Seasonal Specialties of Karachi",
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
