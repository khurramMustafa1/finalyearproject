import 'package:flutter/material.dart';
import 'message1.dart'; // Import the individual chat screen
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
      image: 'assets/images/profilem1.png',
      subtitle: 'Allah hafiz Bro',
      time: '18:31 PM',
    ),
    message1Model(
      title: 'Ahmad Mukhtar Shahi',
      image: 'assets/images/profilem2.png',
      subtitle: 'Okay done hogya.',
      time: '16:04 AM',
    ),
    message1Model(
      title: 'Arif Wazir',
      image: 'assets/images/profilem4.png',
      subtitle: 'Ok  ma diagrams banata hoon.',
      time: '6:12 AM',
    ),
    message1Model(
      title: 'Khurram Abbasi',
      image: 'assets/images/profilem3.png',
      subtitle: 'acha theek ha',
      time: '16:04 AM',
    ),
  ];

  void navigateToChat(String name, String image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => message1(
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ],
            ),
            SizedBox(height: 17),
            Text(
              "Recent Chats",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final messageItem = messages[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(messageItem.image),
                    ),
                    title: Text(messageItem.title),
                    subtitle: Text(messageItem.subtitle),
                    trailing: Text(messageItem.time),
                    onTap: () {
                      navigateToChat(messageItem.title, messageItem.image);
                    },
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