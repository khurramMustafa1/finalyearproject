import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class karachifestivals extends StatefulWidget {
  const karachifestivals({super.key});

  @override
  State<karachifestivals> createState() => _festivalsState();
}

class _festivalsState extends State<karachifestivals> {
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
                    Image.asset('assets/images/karachifestivals.jpg', fit: BoxFit.contain, height: 239, width: 363),
                    Image.asset("assets/images/karachifestival2.jpg", fit: BoxFit.contain),
                    Image.asset("assets/images/festival2.jpg", fit: BoxFit.contain)
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 2,
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
                  "Festivals",
                  style: TextStyle(color: Color(0xff0D4858), fontWeight: FontWeight.w900, fontSize: 24),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Text(
                  "Famous Festivals in Karachi",
                  style: TextStyle(color: Color(0xff0D4858), fontWeight: FontWeight.w900, fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
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
                              "Karachi International Film Festival:",
                              style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w900, fontSize: 11),
                            ),
                            Text(
                              " A prominent cultural",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                          ],
                        ),
                        Text(
                          " event celebrating cinema.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Text(
                          "Film screenings, award ceremonies, and workshops bring artists together.",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Karachi Literature Festival:",
                                  style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w900, fontSize: 11),
                                ),
                                Text(
                                  " A gathering of writers,",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "poets, and thinkers.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "Discussions on books, literature, and culture are featured during the event.",
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
                                  "Makar Sankranti Festival:",
                                  style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w900, fontSize: 11),
                                ),
                                Text(
                                  " A festival celebrated with",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "kite flying and traditional sweets.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "A vibrant occasion with crowds gathering in the skies of Karachi.",
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
                                  "Eid-ul-Fitr:",
                                  style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w900, fontSize: 11),
                                ),
                                Text(
                                  " Celebrated at the end of Ramadan",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),
                            Text(
                              "prayers, festivities, and feasts.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "The streets of Karachi are filled with lights, decorations, and delicious food.",
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
                                  "Independence Day Celebrations:",
                                  style: TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w900, fontSize: 11),
                                ),
                                Text(
                                  " A patriotic celebration",
                                  style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                                ),
                              ],
                            ),

                            Text(
                              "on August 14th.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
                            ),
                            Text(
                              "Karachi showcases fireworks, parades, and flags everywhere.",
                              style: TextStyle(color: Color(0xff0D4858),fontSize: 11),
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
