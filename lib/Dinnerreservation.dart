import 'package:flutter/material.dart';

class DinnerReservation extends StatefulWidget {
  @override
  _DinnerReservationState createState() => _DinnerReservationState();
}

class _DinnerReservationState extends State<DinnerReservation> {
  int _selectedDinner=0;

  @override
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
          'Dinner Reservation',
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
                'Today’s Dinner Reservations',
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
                  dinnerDetails(0, "Romantic Dinner", "Time: 7:00 PM", "Location: Sunset Terrace", "Special Note: Candlelight dinner with a view of the city skyline. Arrive 15 minutes early for the best seating."),
                  dinnerDetails(1, "Family Dinner", "Time: 8:00 PM", "Location: Garden Bistro", "Special Note: Reserved a table for 6 near the kids' play area. Inform staff for special dietary needs."),
                  dinnerDetails(2, "Business Dinner", "Time: 9:00 PM", "Location: Executive Lounge", "Special Note: Private dining area with AV equipment for presentations. Pre-order appetizers for guests."),
                  dinnerDetails(3, "Late Night Snack", "Time: 10:30 PM", "Location: Midnight Cafe", "Special Note: Light meals and desserts available. Perfect for a casual end to the day."),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: _selectedDinner != null
                    ? () {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Dinner reservation confirmed for ${_getDinnerTitle(_selectedDinner!)}'),
                      ),
                    );
                  });
                }
                    : null,
                child: Text(
                  'Reserve Now',
                  style: TextStyle(color: Color(0xffFFFFFF)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedDinner != null ? Color(0xff0D4858) : Colors.grey,
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
            icon: Icon(Icons.restaurant_menu, color: Color(0xff0D4858)),
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

  Widget dinnerDetails(int index, String title, String time, String location, String note) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedDinner = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: _selectedDinner == index ? Color(0xff68ADC0) : Color(0xff78B56A),
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
                  time,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  location,
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

  String _getDinnerTitle(int index) {
    switch (index) {
      case 0:
        return "Romantic Dinner";
      case 1:
        return "Family Dinner";
      case 2:
        return "Business Dinner";
      case 3:
        return "Late Night Snack";
      default:
        return "Dinner";
    }
  }
}