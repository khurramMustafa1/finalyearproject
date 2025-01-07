import 'package:flutter/material.dart';
import 'package:fyppproject/model/safety.dart';

class safetyalerts extends StatefulWidget {
  const safetyalerts({super.key});

  @override
  State<safetyalerts> createState() => _SafetyAlertsState();
}

class _SafetyAlertsState extends State<safetyalerts> {
   List<safety> safetyAlerts = [
    safety(
      Image: 'assets/images/safety1.png',
      description: 'High smog levels. Wear a mask and avoid outdoor activities.',
      title: 'Air Quality Alert',
      text: 'Today',
    ),
    safety(
      Image: 'assets/images/safety2.png',
      description: 'Dengue cases are rising. Use mosquito repellent and wear full-sleeve clothing.',
      title: 'Health Warning',
      text: 'Today',
    ),
    safety(
      Image: 'assets/images/safety3.png',
      description: 'Protests reported in downtown Lahore. Expect delays or avoid the area.',
      title: 'Traffic Advisory',
      text: 'Tomorrow',
    ),
    safety(
      Image: 'assets/images/safety4.png',
      description: 'Roads near Qaddafi Stadium are closed for international cricket teams. Plan alternate routes.',
      title: 'Restricted Area Notice',
      text: '5 December',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {  Navigator.pop(context);},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.black),
            hintText: 'Search Safety Alerts',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Safety Alerts",
                  style: TextStyle(
                    color: Color(0xff0D4858),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: safetyAlerts.length,
                itemBuilder: (context, index) {
                  final safety = safetyAlerts[index];
                  return Card(
                    color: Color(0xff68ADC0),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 20,right: 10),
                      leading: Image.asset(
                        safety.Image,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        safety.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0D4858)
                        ),
                      ),
                      subtitle: Text(
                        safety.description,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 10
                        ),
                      ),
                      trailing: Text(
                        safety.text,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  );
                },
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
