import 'package:flutter/material.dart';
import 'package:fyppproject/packinglist.dart';
import 'package:fyppproject/space2.dart';

class packinglist2 extends StatefulWidget {
  const packinglist2({super.key});

  @override
  _PackingList2State createState() => _PackingList2State();
}

class _PackingList2State extends State<packinglist2> {
  String? selectedPackingListName;
  String? selectedEssentials;
  String? selectedToiletries;
  String? selectedElectronics;
  String? selectedCustomItem;

  final List<String> packingListItems = [
    "Vacation",
    "Business Trip",
    "Weekend Getaway",
    "Road Trip",
    "Camping",
    "International Travel"
  ];

  final List<String> essentialsItems = [
    "Passport",
    "Travel Tickets",
    "Money",
    "Phone Charger",
    "Wallet",
    "Sunglasses"
  ];

  final List<String> toiletriesItems = [
    "Shampoo",
    "Toothbrush",
    "Toothpaste",
    "Deodorant",
    "Face Wash",
    "Hand Sanitizer"
  ];

  final List<String> electronicsItems = [
    "Phone",
    "Laptop",
    "Power Bank",
    "Camera",
    "Headphones",
    "Adapter"
  ];

  final List<String> customItems = [
    "Book",
    "Snacks",
    "Notebook",
    "Water Bottle",
    "Travel Pillow",
    "Sunscreen"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          "Packing List",
          style: TextStyle(color: Color(0xff0D4858), fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 44),
            Center(
              child: Text(
                "Creating Packing list",
                style: TextStyle(color: Color(0xff0D4858), fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 66),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: DropdownButtonFormField<String>(
                value: selectedPackingListName,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPackingListName = newValue;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Packing list name',

                ),
                items: packingListItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: DropdownButtonFormField<String>(
                value: selectedEssentials,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedEssentials = newValue;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Essentials (e.g., Passport, Tickets)',
                ),
                items: essentialsItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: DropdownButtonFormField<String>(
                value: selectedToiletries,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedToiletries = newValue;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Toiletries (e.g., Toothbrush, Shampoo)',
                ),
                items: toiletriesItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: DropdownButtonFormField<String>(
                value: selectedElectronics,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedElectronics = newValue;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Electronics (e.g., Phone, Camera)',
                ),
                items: electronicsItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: DropdownButtonFormField<String>(
                value: selectedCustomItem,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCustomItem = newValue;
                  });
                },
                decoration: InputDecoration(
                  fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: 'Add an item (Custom)',
                ),
                items: customItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff0D4858),
                    ),
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>packing2()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff0D4858),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),
                    ),
                  ),
                ],
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
