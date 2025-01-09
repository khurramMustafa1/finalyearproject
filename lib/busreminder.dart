import 'package:flutter/material.dart';

class BusReminder extends StatefulWidget {
  @override
  State<BusReminder> createState() => _BusReminderState();
}

class _BusReminderState extends State<BusReminder> {
  @override
  int selectedindex=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff0D4858),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Bus Reminder',
          style: TextStyle(color: Color(0xff0D4858)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Color(0xff0D4858),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Today’s Bus Schedule',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff0D4858),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  busDetails(
                    0,
                    "Morning Bus",
                    "Departure: 7:00 AM",
                    "From: Central Station",
                    "To: Peshawar University",
                    "Arrive early at the station to ensure boarding.",
                  ),
                  busDetails(
                    1,
                    "Afternoon Bus",
                    "Departure: 1:00 PM",
                    "From: Peshawar University",
                    "To: City Center",
                    "Check for traffic updates before heading out.",
                  ),
                  busDetails(
                    2,
                    "Evening Bus",
                    "Departure: 6:00 PM",
                    "From: City Center",
                    "To: Central Station",
                    "Carry your bus pass for quick access.",
                  ),
                  busDetails(
                    3,
                    "Night Bus",
                    "Departure: 10:00 PM",
                    "From: Central Station",
                    "To: Residential Area",
                    "Be cautious during late hours and ensure safety.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed:selectedindex!=null? () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Bus  reminder confirmed for ${getbusdetails(selectedindex)}")));
                     });
                  // Add functionality for further actions
                } :null,
                child: Text(
                  'Set Reminder',
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0D4858),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert, color: Color(0xff0D4858)),
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

  Widget busDetails( int index,String title, String departure, String from, String to, String note) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selectedindex == index ? Color(0xff68ADC0) : Color(0xff78B56A)
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  departure,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  from,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  to,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  note,
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
  String getbusdetails(int index) {
    switch (index) {
      case 0:
        return "Morning Bus";
      case 1:
        return "Afternoon Bus";
      case 2:
        return "Evening Bus";
      case 3:
        return " Night Bus";
      default:
        return "bus";
    }
  }
}
