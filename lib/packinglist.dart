import 'package:flutter/material.dart';
import 'package:fyppproject/packinglist2.dart';

class packing {
  final String image;
  final String title;
  final String description;
  final String date;
  final Widget actionButton1;
  final Widget actionButton2;
  final Widget actionButton3;

  packing({
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.actionButton1,
    required this.actionButton2,
    required this.actionButton3,
  });
}

class packing2 extends StatefulWidget {
  const packing2({super.key});

  @override
  State<packing2> createState() => _packingState();
}

class _packingState extends State<packing2> {
  List<packing> packing1 = [
    packing(
      image: 'assets/images/packinglist.png',
      title: 'Adventure Trip Packing',
      description: 'Gear up for thrills! Include hiking boots, a durable backpack,'
          ' weatherproof clothing, and first-aid essentials..',
      date: '3 days ago',
      actionButton1: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('View', style: TextStyle(color: Colors.white)),
      ),
      actionButton2: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('Edit', style: TextStyle(color: Colors.white)),
      ),
      actionButton3: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('Delete', style: TextStyle(color: Colors.white)),
      ),
    ),
    packing(
      image: 'assets/images/packinglist.png',
      title: 'Culture Trip Packing',
      description: 'Explore heritage with ease. Pack modest clothing, '
          'a travel guide, comfortable shoes, and a camera.',
      date: 'a week ago',
      actionButton1: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('View', style: TextStyle(color: Colors.white)),
      ),
      actionButton2: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('Edit', style: TextStyle(color: Colors.white)),
      ),
      actionButton3: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(backgroundColor: const Color(0xff0D4858)),
        child: const Text('Delete', style: TextStyle(color: Colors.white)),
      ),
    ),

  ];

  Widget buildReminderList(List<packing> reminders) {
    return ListView.builder(
      itemCount: reminders.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 200,
            width: 320,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffADD2DC),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            reminders[i].image,
                            width: 40,
                            height: 40,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              reminders[i].title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(reminders[i].description),
                          ],
                        ),
                      ),
                      Text(
                        reminders[i].date,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        reminders[i].actionButton1,
                        reminders[i].actionButton2,
                        reminders[i].actionButton3,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  hintText: "Search Packing list",
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
          onPressed: () {  Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Packing (${packing1.length})",
                  style: const TextStyle(

                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: buildReminderList(packing1),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0D4858),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>packinglist2()));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Color(0xff0D4858)),
            label: "",
          ),
        ],
      ),
    );
  }
}