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
              const SizedBox(height: 16),
              // SmoothPageIndicator for navigation
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 2,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 8,
                  ),
                ),
              ),
              const SizedBox(height: 29),
              // Food heading text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Food",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Year-Round Delights text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Year-Round Delights",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Food description container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFoodDetail("Halwa Puri:", "A quintessential breakfast dish consisting of crispy puris, sweet halwa, and spicy chana masala."),
                        _buildFoodDetail("Nahiri:", "A rich and flavorful meat stew, often enjoyed with naan or roti."),
                        _buildFoodDetail("Samosa Chaat:", "Crispy samosas topped with tangy tamarind chutney, spicy mint chutney, and yogurt."),
                        _buildFoodDetail("Dahi Bhala:", "Soft, fried balls soaked in creamy yogurt topped with chutneys and spices."),
                        _buildFoodDetail("Naan Roti:", "Juicy, grilled skewers of minced meat often served with naan or roti."),
                        _buildFoodDetail("Lassi:", "A refreshing yogurt-based drink available in sweet and salted varieties."),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Seasonal Specialties",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xff0D4858),
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            _buildBottomNavigationItem(Icons.home),
            _buildBottomNavigationItem(Icons.settings),
            _buildBottomNavigationItem(Icons.add),
            _buildBottomNavigationItem(Icons.message),
            _buildBottomNavigationItem(Icons.menu),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodDetail(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w900,
                fontSize: 12,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xff0D4858),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem(IconData icon) {
    return BottomNavigationBarItem(
      icon: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: const Color(0xff0D4858),
        ),
      ),
      label: "",
    );
  }
}
