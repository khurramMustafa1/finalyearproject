import 'package:flutter/material.dart';
import 'package:fyppproject/spaceshare.dart';
class space2 extends StatelessWidget {
  final List<Map<String, String>> rides = [
    {
      'name': 'Kaleem Khan',
      'route': 'Islamabad -> Multan',
      'date': 'Today, 8:00 PM',
      'vehicle': 'Suzuki Mehran (White)',
      'license': 'XYZ-123',
      'seats': '3',
      'cost': 'PKR 4500'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search Space (Rides)',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.teal,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ),
          SizedBox(width: 8),
        ],
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Available Space (Rides)',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 193),
            Expanded(
              child: ListView.builder(
                itemCount: rides.length,
                itemBuilder: (context, index) {
                  final ride = rides[index];
                  return Card(
                    color: Color(0xff68ADC0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey[300],
                                child: Image.asset('assets/images/profile.png'),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ride['name']!,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Route: ${ride['route']}\nTravel Date: ${ride['date']}\nVehicle: ${ride['vehicle']}\nLicense Plate: ${ride['license']}\nSeats Available: ${ride['seats']}\nCost per Seat: ${ride['cost']}',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                  backgroundColor: Color(0xff0D4858),
                                  child: Icon(Icons.check_circle, color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0D4858),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text('Accept',style: TextStyle(color: Color(0xffADD2DC)),),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0D4858),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text('Decline',style: TextStyle(color: Color(0xffADD2DC))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 4,),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0D4858),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('View more', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>spaceshare()));
        },
        backgroundColor: Color(0xff0D4858),
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
