import 'package:flutter/material.dart';
import 'package:fyppproject/homepage.dart';
import 'package:fyppproject/message1.dart';
import 'package:fyppproject/message2.dart';
import 'package:fyppproject/planetrip.dart';
import 'package:fyppproject/seeting.dart';
import 'package:fyppproject/space2.dart';
import 'package:fyppproject/tools.dart';
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  int selectedIndex=0;
  List<Widget> screenList=[
    home(),
    tools(),
    space2(),
    message2(),
  setting(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (val){
          selectedIndex=val;
          setState(() {});
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed, // For 5 or more items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
        ],
      ),
    );
  }
}
