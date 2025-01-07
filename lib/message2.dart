import 'package:flutter/material.dart';
import 'message1.dart';
import 'model/message.dart'; // Import your message1 class

class message2 extends StatefulWidget {
  const message2({super.key});

  @override
  State<message2> createState() => _message2State();
}

class _message2State extends State<message2> {
  List<message1Model> messages = [
    message1Model(
      title: 'Adil Bhutta',
      image: 'assets/images/profilem1.png', // Correct property name
      subtitle: 'Allah hafiz Bro',
      time: '18:31 PM',
    ),
    message1Model(
      title: 'Ahmad Mukhtar Shahi',
      image: 'assets/images/profilem2.png', // Correct property name
      subtitle: 'Okay done hogya.',
      time: '16:04 AM',
    ),
    message1Model(
      title: 'Arif Wazir',
      image: 'assets/images/profilem4.png', // Correct property name
      subtitle: 'Ok  ma diagrams banata hoon.',
      time: '6:12 AM',
    ),
    message1Model(
      title: 'Khurram abbasi',
      image: 'assets/images/profilem3.png', // Correct property name
      subtitle: 'acha theek ha',
      time: '16:04 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Optional: Removes the shadow of the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar and Profile
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: 'Search Chats',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'), // Profile image
                ),
              ],
            ),
            SizedBox(height: 17),
            // Recent Chats Title
            Text(
              "Recent Chats",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // All Chats Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0D4858),
              ),
              onPressed: () {},
              child: Text(
                "All chats",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            // List of Chats
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final messageItem = messages[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(messageItem.image), // Correct property name
                    ),
                    title: Text(messageItem.title),
                    subtitle: Text(messageItem.subtitle),
                    trailing: Text(messageItem.time),
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
