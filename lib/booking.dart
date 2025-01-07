import 'package:flutter/material.dart';
class booking extends StatelessWidget {
  const booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        leading: IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
        title: Text("Booking",
          style: TextStyle(color: Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 48,),
          Center(
            child: Text(
              "Booking Apps",
              style: TextStyle(color:Color(0xff0D4858),fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20,),
          Text("Easily plan your trips with our integrated booking",
            style: TextStyle(color: Color(0xff0D4858),fontSize: 12),),
          Text("hub! Travel Mate connects you with popular apps in",
            style: TextStyle(color: Color(0xff0D4858),fontSize: 12),),
          Text("Pakistan for booking tickets, rides, hotels, and even",
            style: TextStyle(color: Color(0xff0D4858),fontSize: 12),),
          Text("ordering food—all in one convenient place. Simplify",
            style: TextStyle(color: Color(0xff0D4858),fontSize: 12),),
          Text("   your travel experience with just a few taps!",
            style: TextStyle(color: Color(0xff0D4858),fontSize: 12),),
          SizedBox(height: 19,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              height: 146,
              width: 344,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(0)
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/indrive.png',height: 79,width: 80,)),
                      Text("indrive")
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/bykea.png',height: 79,width: 80,)),
                      Text("Bykea")
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/yango.png',height: 79,width: 80,)),
                      Text("Yango")
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 19,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Container(
              height: 146,
              width: 344,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/bookme.png',height: 79,width: 80,)),
                      Text("Bookme")
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/foodpanda.png',height: 79,width: 80,)),
                      Text("FoodPanda")
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Image.asset('assets/images/bok.png',height: 79,width: 80,)),
                      Text("Booking")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
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
