import 'package:flutter/material.dart';

class language extends StatefulWidget {
  @override
  _LanguageSettingScreenState createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<language> {
  String? selectedLanguage;
  List<String> languages = ["English", "Urdu", "Persian", "Pashto", "French"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language Setting',
          style: TextStyle(color: Color(0xff0D4858)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff0D4858)),
          onPressed: () { Navigator.pop(context);},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 74,right: 75),
              child: Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0D4858)
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  hintText: selectedLanguage ?? 'Select Language',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.teal.shade900),
                ),
                readOnly: true,
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Color(0xffADD2DC),
                    context: context,
                    builder: (BuildContext context) {
                      return ListView.builder(
                        itemCount: languages.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(
                              Icons.circle,
                              color: selectedLanguage == languages[index]
                                  ? Colors.teal.shade900
                                  : Colors.grey,
                              size: 16,
                            ),
                            title: Text(languages[index]),
                            onTap: () {
                              setState(() {
                                selectedLanguage = languages[index];
                              });
                              Navigator.pop(context);
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text('Save',style: TextStyle(color: Color(0xffADD2DC))),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Text('Cancel',style: TextStyle(color: Color(0xffADD2DC)),),
                  ),
                ),
              ],
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
