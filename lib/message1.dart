import 'package:flutter/material.dart';

class message1 extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<message1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            SizedBox(width: 20),
            Center(
              child: Text(
                "Ahmad Shahi",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Handle more actions
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Chat Area
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildMessage(
                  sender: true,
                  message:
                  "Assalam-u-alaikum Sami! Lahore ka plan bana raha hoon, kuch famous tourist spots aur local tips suggest kar do. Pehli baar ja raha hoon, tou best jagah aur khanay ki recommendations bhi chahiye.",
                  time: "16.04",
                  imagePath: 'assets/images/sender.png',
                ),
                _buildMessage(
                  sender: false,
                  message:
                  "Walaikum Salam Ahmad! Shahi Qila, Badshahi Masjid aur Food Street must hain. Pehli baar ke liye perfect spots hain, aur Anarkali se desi khana try karna!",
                  time: "16.04",
                  imagePath: 'assets/images/receiver.png',
                ),
              ],
            ),
          ),

          // Message Input Area
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff0D4858),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write a message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Color(0xff0D4858)),
                    onPressed: () {
                      // Handle message send
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to build a single message
  Widget _buildMessage({
    required bool sender,
    required String message,
    required String time,
    required String imagePath,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:
      sender ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (sender)
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
        if (sender) SizedBox(width: 8),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(bottom: 12),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: sender ? Color(0xff68ADC0) : Color(0xff0D4858),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: sender ? Radius.zero : Radius.circular(12),
                bottomRight: sender ? Radius.circular(12) : Radius.zero,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    color: sender ? Colors.black : Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 10,
                    color: sender ? Colors.black54 : Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (!sender) SizedBox(width: 8),
        if (!sender)
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
      ],
    );
  }
}
