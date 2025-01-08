import 'package:flutter/material.dart';
class help extends StatelessWidget {
  const help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffF1F1F1).withOpacity(0.4),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "Search Questions",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(width: 8),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 21,right: 19),
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                 color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:   Column(
                  children: [
                    SizedBox(height: 10,),
                    Center(
                      child: Text("Help and Support",
                          style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("Need assistance?Our Help and Support section offers quick",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("solutions to common issues, a comprehensive FAQ, and a",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("contact form for personalized help. Whether you're facing ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("technical difficulties or need guidance, we're here for you. ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Center(
                      child: Text("About us",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("Travel Mate is your ultimate travel companion, designed to",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("simplify your journeys. From planning trips and sharing rides",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("with verified users to discovering cultural and adventurous ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("destinations, we're here to make every trip memorable. Join",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("our community of explorers today!",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Center(
                      child: Text("Privacy and Policy",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10,right: 10),
                      child: Text("We value your privacy. Learn how Travel Mate securely ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("handles your data, ensuring your personal information is ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("protected while delivering personalized travel experiences",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 7),
                      child: Text("Read our policy for transparency on data usage and security",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Center(
                      child: Text("Terms and Conditions",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:7,right: 7),
                      child: Text("By using Travel Mate, you agree to our terms and conditions. ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("This document outlines the rules for account usage, ride- ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("sharing, trip planning, and community engagement",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text("ensuring a safe and enjoyable platform for everyone.",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 21,right: 19),
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:   Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("Frequently Asked Questions (FAQs)",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("1.How do I create an account on Travel Mate?",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("To create an account, download the app, click 'Sign Up' and",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("fill in your details. Verify your account to start exploring all ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("features.",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("2.Can I use Travel Mate offline?",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("Yes! With our offline maps feature, you can access saved ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("locations and plan your journey even without an internet ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("connection. ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("3.How does ride-sharing work?",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:7,right: 8),
                      child: Text("Verified users can share available vehicle space with others ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("traveling to the same destination. You can browse available  ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("rides, connect with the driver, and join the trip securely.",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("4. What is the Budget Trip tool?",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:7,right: 7),
                      child: Text("The Budget Trip tool helps you find destinations based on",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("your budget. Just enter your budget and travel preferences  ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 9,right: 9),
                      child: Text("(e.g., nature or adventure), and we'll recommend ideal spots.",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("5. How do I connect with travel buddies?",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("Use our chat feature to connect with other users, make ",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("friends, and plan trips together. Rest assured, all users are",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7,right: 8),
                      child: Text("verified for safety.",
                        style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                    ),
                  ],
                ),
        
              ),
            ),
            SizedBox(height: 17,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0D4858)
                ),
                onPressed: (){}, child: Text('More',style: TextStyle(color: Color(0xffADD2DC))))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Color(0xff0D4858),),),label: "",),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Color(0xff0D4858),)),label: ""),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Color(0xff0D4858),)),label: ""),

      ]),
    );
  }
}
