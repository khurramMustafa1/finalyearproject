import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class hotel extends StatefulWidget {
  const hotel({super.key});

  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.35,
                    child: PageView(
                      controller: pageController,
                      children: [
                        Image.asset(
                          'assets/images/hotel1.png',
                          fit: BoxFit.contain,
                          width: screenWidth * 0.9,
                        ),
                        Image.asset(
                          "assets/images/hotel2.jpg",
                          fit: BoxFit.contain,
                          width: screenWidth * 0.9,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 2,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.blue,
                        dotColor: Colors.grey,
                        dotHeight: 8,
                        dotWidth: 8,
                        spacing: 8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 29),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                    child: const Text(
                      "Famous Hotel",
                      style: TextStyle(
                        color: Color(0xff0D4858),
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffADD2DC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHotelDetail(
                              "Luxux Grand hotel:",
                              "This 5-star hotel is known for its luxurious accommodations, world-class service, and stunning city views.",
                              screenWidth,
                            ),
                            _buildHotelDetail(
                              "Pearl Continental Hotel:",
                              "This 4-star hotel is known for its rooms, dining options, and facilities.",
                              screenWidth,
                            ),
                            _buildHotelDetail(
                              "Grand Swiss Hotel:",
                              "This affordable option offers comfortable rooms and is popular with families and business travelers.",
                              screenWidth,
                            ),
                            _buildHotelDetail(
                              "Park View Hotel Gulberg:",
                              "This budget-friendly hotel is located in the Gulberg neighborhood, known for its shopping and dining options.",
                              screenWidth,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHotelDetail(String title, String description, double screenWidth) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
                fontSize: screenWidth * 0.03,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                description,
                style: TextStyle(
                  color: const Color(0xff0D4858),
                  fontSize: screenWidth * 0.025,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
