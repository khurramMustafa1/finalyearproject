import 'package:flutter/material.dart';
import 'package:fyppproject/accountseeting.dart';
import 'package:fyppproject/clothes.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/islambad.dart';
import 'package:fyppproject/karachi.dart';
import 'package:fyppproject/lahore.dart';
import 'package:fyppproject/packinglist2.dart';
import 'package:fyppproject/seeting.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Row(
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF1F1F1).withOpacity(0.4),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      hintText: "Discover your next destination",
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Plan your next adventure",
              style: TextStyle(
                color: Color(0xff0D4858),
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            // PageView for destination images
            Expanded(
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: 3, // Number of items
                itemBuilder: (context, index) {
                  final images = [
                    'assets/images/5.png',
                    'assets/images/6.png',
                    'assets/images/4.png',
                  ];
                  final titles = ["Lahore", "Karachi", "Islamabad"];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the respective page when tapped
                        // You can customize these navigation destinations
                        if (index == 0) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const lahore()));
                        } else if (index == 1) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const karachi()));
                        } else {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const islambad()));
                        }
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                                height: 240,
                                width: 183,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            titles[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Trending with Travelers",
              style: TextStyle(
                color: Color(0xff0D4858),
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            // PageView for trending images
            Expanded(
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.8),
                itemCount: 2,
                itemBuilder: (context, i) {
                  final images = [
                    'assets/images/2.png',
                    'assets/images/3.png',
                  ];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to another screen for trending image ta
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                images[i],
                                fit: BoxFit.cover,
                                height: 220,
                                width: 139,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
