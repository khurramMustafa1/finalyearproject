import 'package:flutter/material.dart';
import 'package:fyppproject/clothes.dart';
import 'package:fyppproject/festivals.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/hotel.dart';
import 'package:fyppproject/overview2.dart';
class overview extends StatelessWidget {
  const overview({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: PageView.builder(
                controller: PageController(),
                itemCount: 2,
                itemBuilder: (context,i){
                  final images=[
                    'assets/images/la.png',
                    'assets/images/5.png',
                  ];
                return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                        Expanded(child:ClipRect(
                          child: Image.asset(images[i], fit: BoxFit.cover,
                            ),
                        ))
                    ],),
                  );
                })),
            SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Text("Lahore",style: TextStyle(color: Color(0xff0D4858),
                    fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text("About Lahore",style: TextStyle(color: Color(0xff0D4858),
                  fontSize: 20,),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 26),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text("Lahore, the cultural heart of Pakistan, is a vibrant city steeped in history. It boasts stunning Mughal architecture, bustling bazaars, and a rich culinary scene. From the majestic Lahore Fort to the serene Shalimar Gardens, there's something for everyone. Don't miss the iconic Badshahi Mosque,"
                    " the lively Food Street, and the historic Wagah Border ceremony.",softWrap: true,maxLines: 4,
                    style: TextStyle(color: Color(0xff000000),fontSize: 10),),
                  ),),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff68ADC0),
                    minimumSize: Size(109,32),
                  ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.location_pin,color: Color(0xff0D4858),),
                    Text("View Map",style: TextStyle(color: Color(0xff000000)),),
                  ],
                )),
              ],
            ),
          ),SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text("Activites",style: TextStyle(color:
              Color(0xff0D4858),fontSize: 13,fontWeight: FontWeight.bold),),
            ),
SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29,vertical: 26),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff68ADC0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Polo:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" Watch thrilling matches at the Lahore Polo Club.",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Cricket:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" Catch a cricket match at Gaddafi Stadium.",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Golf:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" Play golf at local golf clubs..",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Swimming:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" : Enjoy swimming at hotel pools or clubs.",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Fitness:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" Work out at various fitness centers and gyms.",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Katring:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text("  Experience high-speed thrills at 2F2F Formula katring formula",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Horse Riding:",style: TextStyle(color:
                          Color(0xff000000),fontWeight: FontWeight.bold,fontSize: 10),),
                          Text(" Ride horses in parks and riding schools .",
                            style: TextStyle(color: Color(0xff000000),fontSize: 10),),

                    ],
                  ),


                    ])
                ),),
            ),],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // For 5 or more items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}