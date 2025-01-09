import 'package:flutter/material.dart';

class CulturePackingListPage extends StatelessWidget {
  final List<Map<String, String>> packingList = [
    {'item': 'Modest Clothing', 'category': 'Clothing'},
    {'item': 'Travel Guide', 'category': 'Essentials'},
    {'item': 'Comfortable Shoes', 'category': 'Clothing'},
    {'item': 'Camera', 'category': 'Gear'},
    {'item': 'Notebook/Journal', 'category': 'Essentials'},
    {'item': 'Water Bottle', 'category': 'Essentials'},
    {'item': 'Local Currency', 'category': 'Essentials'},
    {'item': 'Sunglasses', 'category': 'Personal Care'},
    {'item': 'Headscarf', 'category': 'Clothing'},
    {'item': 'Charger/Power Bank', 'category': 'Gear'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culture Packing List'),
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
