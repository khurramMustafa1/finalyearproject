import 'package:flutter/material.dart';
import 'package:fyppproject/Dinnerreservation.dart';
import 'package:fyppproject/busreminder.dart';
import 'package:fyppproject/onlinemeeting.dart';
import 'package:fyppproject/trip.dart';

class Reminder {
  final String image;
  final String title;
  final String description;
  final String date;
  final Widget actionButton1;
  final Widget actionButton2;
  final Widget actionButton3;

  Reminder({
    required this.image,
    required this.title,
    required this.description,
    required this.date,
    required this.actionButton1,
    required this.actionButton2,
    required this.actionButton3,
  });
}

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  List<Reminder>? reminders;

  @override
  void initState() {
    super.initState();
    reminders = [
      Reminder(
        image: 'assets/images/i1.png',
        title: 'Online Meeting',
        description: 'Meeting scheduled at 3:00 PM.',
        date: 'Today',
        actionButton1: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>onlineMeeting()));
          },
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
      Reminder(
        image: 'assets/images/i2.png',
        title: 'Bus Reminder',
        description: 'Your bus departs at 6:00 PM.',
        date: 'Today',
        actionButton1: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BusReminder()));
          },
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
      Reminder(
        image: 'assets/images/i5.png',
        title: 'Dinner Reservation',
        description: 'Dinner at Pearl Continental Hotel Lahore at 8:00 PM.',
        date: 'Tomorrow',
        actionButton1: TextButton(
          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>DinnerReservation()));},
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
      Reminder(
        image: 'assets/images/i4.png',
        title: 'lahore Trip',
        description:
        'lahore Trip will start on 5 December, 2024 and it will end on 14 December, 2024.',
        date: '5 December',
        actionButton1: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => trip()));
          },
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
  }

  Widget buildReminderList(List<Reminder> reminders) {
    return ListView.builder(
      itemCount: reminders.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 160,
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
                  hintText: "Search Reminders",
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
                  "All Reminders (${reminders?.length ?? 0})",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: reminders == null
                  ? const Center(child: CircularProgressIndicator())
                  : buildReminderList(reminders!),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0D4858),
        onPressed: () {},
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
