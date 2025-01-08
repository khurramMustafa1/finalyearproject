import 'package:flutter/material.dart';

class storage extends StatefulWidget {
  const storage({super.key});

  @override
  _storageState createState() => _storageState();
}

class _storageState extends State<storage> {
  bool _clearCache = false;
  bool _clearData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          "Data Storage",
          style: TextStyle(
              color: Color(0xff0D4858),
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff0D4858),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 51,
          ),
          Center(
            child: Text(
              ' Phone Storage',
              style: TextStyle(
                  color: Color(0xff0D4858),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 13),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff0D4858)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Internal Storage",
                          style: TextStyle(
                              color: Color(0xffADD2DC),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    LinearProgressIndicator(
                      value: 0.85, // 85% storage used
                      backgroundColor: Colors.grey[300],
                      color: Color(0xff68ADC0),
                    ),
                    SizedBox(height: 10),
                    Text("85% storage used\n15% storage available"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 13),
            child: Container(
              decoration: BoxDecoration(color: Color(0xffADD2DC)),
              child: CheckboxListTile(
                checkColor: Color(0xff0D4858),
                title: Text("Do you want to clear App Cache?"),
                value: _clearCache,
                onChanged: (value) {
                  setState(() {
                    _clearCache = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 13),
            child: Container(
              decoration: BoxDecoration(color: Color(0xffADD2DC)),
              child: CheckboxListTile(
                checkColor: Color(0xff0D4858),
                title: Text("Do you want to clear App Data?"),
                value: _clearData,
                onChanged: (value) {
                  setState(() {
                    _clearData = value ?? false;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ),
          SizedBox(
            height: 51,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(78, 39),
                  backgroundColor: Color(0xff0D4858),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text('Save',
                      style: TextStyle(
                          color: Color(0xffADD2DC),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(78, 39),
                  backgroundColor: Color(0xff0D4858),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: Color(0xffADD2DC),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
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