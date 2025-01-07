import 'package:flutter/material.dart';

class Buddy {
  final String name;
  final String image;
  final Widget actionButton;

  Buddy({required this.name, required this.image, required this.actionButton});
}

class TravelBuddy extends StatefulWidget {
  const TravelBuddy({super.key});

  @override
  State<TravelBuddy> createState() => _TravelBuddyState();
}

class _TravelBuddyState extends State<TravelBuddy> {
  List<Buddy> buddies = [
    Buddy(
      name: "Adil Bhutta",
      image: 'assets/images/profile2.png',
      actionButton: IconButton(
        onPressed: () {
          print("Message Adil Bhutta");
        },
        icon: const Icon(Icons.message),
      ),
    ),
    Buddy(
      name: "Ahmad Shahi",
      image: 'assets/images/profile2.png',
      actionButton: IconButton(
        onPressed: () {
          print("Message Ahmad Shahi");
        },
        icon: const Icon(Icons.message),
      ),
    ),
    Buddy(
      name: "Muhammad Arif",
      image: 'assets/images/profile2.png',
      actionButton: IconButton(
        onPressed: () {
          print("Message Muhammad Arif");
        },
        icon: const Icon(Icons.message),
      ),
    ),
    Buddy(
      name: "Khurram Mustafa",
      image: 'assets/images/profile2.png',
      actionButton: IconButton(
        onPressed: () {
          print("Message Khurram Mustafa");
        },
        icon: const Icon(Icons.message),
      ),
    ),
  ];

  List<Buddy> suggestedBuddies = [
    Buddy(
      name: "Zeeshan",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Add Zeeshan");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text("Add Buddy", style: TextStyle(color: Colors.white)),
      ),
    ),
    Buddy(
      name: "Ahmed",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Add Ahmed");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text("Add Buddy", style: TextStyle(color: Colors.white)),
      ),
    ),
    Buddy(
      name: "Hussain",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Add Hussain");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.blue),
        child: const Text("Add Buddy", style: TextStyle(color: Colors.white)),
      ),
    ),
  ];

  List<Buddy> requests = [
    Buddy(
      name: "Sajawal",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Confirm Sajawal");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Confirm", style: TextStyle(color: Colors.white)),
      ),
    ),
    Buddy(
      name: "Fareed",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Confirm Fareed");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Confirm", style: TextStyle(color: Colors.white)),
      ),
    ),
    Buddy(
      name: "Ayoub",
      image: 'assets/images/profile2.png',
      actionButton: TextButton(
        onPressed: () {
          print("Confirm Ayoub");
        },
        style: TextButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Confirm", style: TextStyle(color: Colors.white)),
      ),
    ),
  ];

  Widget buildBuddyList(String title, List<Buddy> list, {bool isHorizontal = false}) {
    if (isHorizontal) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xff0D4858),
              ),
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffADD2DC),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(list[index].image),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        list[index].name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      list[index].actionButton,
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0D4858),
              ),
              onPressed: () {
                print("View more button pressed");
              },
              child: const Text(
                "View more",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xff0D4858),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                height: 80,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffADD2DC),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(list[index].image),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        list[index].name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    list[index].actionButton,
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 5,),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0D4858),
              ),
              onPressed: () {
                print("View more button pressed");
              },
              child: const Text(
                "View more",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF1F1F1).withOpacity(0.4),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Search Buddies",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBuddyList("Buddies", buddies, isHorizontal: false),
            buildBuddyList("Suggested Buddies", suggestedBuddies,isHorizontal: true),
            buildBuddyList("Requests", requests,isHorizontal: true),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Color(0xff0D4858),),),label: "",),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Color(0xff0D4858),)),label: ""),

      ]),
    );
  }
}
