import 'package:flutter/material.dart';
import 'package:fyppproject/Reminder.dart';
import 'package:fyppproject/googlemaps.dart';
import 'package:fyppproject/packinglist.dart';
import 'package:fyppproject/safetyalerts.dart';
import 'package:fyppproject/space2.dart';
import 'package:fyppproject/spaceshare.dart';
import 'package:fyppproject/travelbuddy.dart';
import 'package:fyppproject/weather.dart';
class tools extends StatelessWidget {
  const tools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: SingleChildScrollView(
         child: Column(
           children: [
             Row(
               children: [
                 Flexible(
                   child: TextField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: const Color(0xffF1F1F1).withOpacity(0.4),
                       enabledBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(50),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.black),
                       ),
                       hintText: "Discover your next destination",
                       prefixIcon: const Icon(Icons.search),
                     ),
                   ),
                 ),
                 const SizedBox(width: 8),
                 CircleAvatar(
                   radius: 25,
                   backgroundImage: AssetImage('assets/images/profile2.png'),
                 ),
               ],
             ),
             SizedBox(height: 18,),
             Center(
               child: Text("Tools",style: TextStyle(color: Color(0xff0D4858)
                   ,fontSize: 24,fontWeight: FontWeight.w900),),
             ),
             SizedBox(height: 18,),
             Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 42),
                       child: Container(
                         width: 110,
                         height: 85,
                         decoration: BoxDecoration(
                           color: Color(0xffADD2DC),
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: TextButton(onPressed: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) =>  Weather(),
                             ),
                           );
                         }, child:
                         Image.asset("assets/images/Vector.png",height: 55,width: 63,)
                         )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(left: 28),
                       child: Text("Weather Forecast",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 ),
                 SizedBox(width: 66,),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 32),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => TravelBuddy(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/travel.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(right: 28),
                       child: Text("Travel Buddy",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 )
               ],
             ),
             SizedBox(height: 18,),
             Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 42),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => ReminderScreen(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/reminder.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(left: 28),
                       child: Text("Reminder",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 ),
                 SizedBox(width: 66,),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 32),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => packing2(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/packing.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(right: 28),
                       child: Text("Packing list",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 )
               ],
             ),
             SizedBox(height: 18,),
             Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 42),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => space2(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/space.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(left: 28),
                       child: Text("Space Sharing",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 ),
                 SizedBox(width: 66,),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 32),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => maps(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/location.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(right: 28),
                       child: Text("Google Maps",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 16),),
                     ),
                   ],
                 )
               ],
             ),
             SizedBox(height: 18,),
             Row(
               children: [
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 42),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => safetyalerts(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/safety.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(left: 28),
                       child: Text("Safety alerts",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 16),),
                     ),
                   ],
                 ),
                 SizedBox(width: 66,),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 32),
                       child: Container(
                           width: 110,
                           height: 85,
                           decoration: BoxDecoration(
                             color: Color(0xffADD2DC),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: TextButton(onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => safetyalerts(),
                               ),
                             );
                           }, child:
                           Image.asset("assets/images/gallery.png",height: 55,width: 63,)
                           )
                       ),
                     ),
                     SizedBox(height: 7,),
                     Padding(
                       padding: const EdgeInsets.only(right: 28),
                       child: Text("Photos Gallery",style: TextStyle(color:
                       Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 16),),
                     ),
                   ],
                 )
               ],
             ),
           ],
         ),
       ),
     ),
    );
  }
}
