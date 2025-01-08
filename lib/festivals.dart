import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class festivals extends StatefulWidget {
  const festivals({super.key});

  @override
  State<festivals> createState() => _festivalsState();
}

class _festivalsState extends State<festivals> {
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
                  height: 239,
                  child: PageView(
                    controller: pageController,
                    children: [
                      Image.asset(
                        'assets/images/festival1.png',
                        fit: BoxFit.contain,
                        height: 239,
                        width: 363,
                      ),
                      Image.asset(
                        "assets/images/festival2.jpg",
                        fit: BoxFit.contain,
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39),
                  child: Text(
                    "Festivals",
                    style: TextStyle(
                      color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39),
                  child: Text(
                    "Famous Festivals in Lahore",
                    style: TextStyle(
                      color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffADD2DC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFestivalDetail(
                              "Basant:",
                              "This vibrant festival, celebrated in February, is marked by colorful kites filling the sky. People dress in bright yellow attire and enjoy traditional music and dance."),
                          _buildFestivalDetail(
                              "Eid-ul-Fitr:",
                              "This religious festival marks the end of Ramadan. Families gather, exchange gifts, and enjoy delicious food."),
                          _buildFestivalDetail(
                              "Eid-ul-Adha:",
                              "Another significant religious festival, celebrated to commemorate the sacrifice of Prophet Ibrahim. Families sacrifice animals and distribute the meat to the needy."),
                          _buildFestivalDetail(
                              "Mela Chiraghan:",
                              "This three-day festival, held at the shrine of Sufi saint Madho Lal Hussain, is a celebration of light, music, and poetry."),
                          _buildFestivalDetail(
                              "Urs of Data Ganj Bakhsh:",
                              "This annual festival commemorates the death anniversary of Sufi saint Ganj Bakhsh. Thousands of devotees visit his shrine, offer prayers, and participate in religious ceremonies."),
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
                icon: const Icon(
                  Icons.home,
                  color: Color(0xff0D4858),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xff0D4858),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Color(0xff0D4858),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  color: Color(0xff0D4858),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(
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

  Widget _buildFestivalDetail(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w900,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xff0D4858),
            ),
          ),
        ],
      ),
    );
  }
}
