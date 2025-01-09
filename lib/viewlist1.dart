import 'package:flutter/material.dart';

class AdventurePackingListPage extends StatelessWidget {
  final List<Map<String, String>> packingList = [
    {'item': 'Backpack', 'category': 'Essentials'},
    {'item': 'Map/GPS Device', 'category': 'Essentials'},
    {'item': 'Quick-dry Pants', 'category': 'Clothing'},
    {'item': 'Waterproof Jacket', 'category': 'Clothing'},
    {'item': 'Sleeping Bag', 'category': 'Gear'},
    {'item': 'Flashlight', 'category': 'Gear'},
    {'item': 'Sunscreen', 'category': 'Personal Care'},
    {'item': 'Bug Repellent', 'category': 'Personal Care'},
    {'item': 'Portable Stove', 'category': 'Gear'},
    {'item': 'First Aid Kit', 'category': 'Safety'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adventure Packing List'),
        backgroundColor: Color(0xff0D4858),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: packingList.length,
          itemBuilder: (context, index) {
            final item = packingList[index];
            return Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text(item['item']!, style: TextStyle(fontSize: 18)),
                subtitle: Text(item['category']!, style: TextStyle(color: Colors.grey)),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add items (optional)
        },
        backgroundColor: Color(0xff0D4858),
        child: Icon(Icons.add),
      ),
    );
  }
}


