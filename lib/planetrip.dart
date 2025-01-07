import 'package:flutter/material.dart';
class planetrip extends StatelessWidget {
  const planetrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title:Text("Plane trip",style: TextStyle(color: Color(0xff0D4858),
            fontSize: 24,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 44,),
            Center(child: Text("Plan Your Trip",style:
            TextStyle(color: Color(0xff0D4858),fontSize: 24,fontWeight: FontWeight.bold),)),
            SizedBox(height: 66,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                  hintText: 'Trip Name',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                    hintText: 'Select Destination',
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                    hintText: 'Select Trip Type',
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                    hintText: 'Start Date',
        
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                  hintText: 'End Date',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                  hintText: 'Number of Travelers',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: TextField(
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
                  hintText: 'Budget',
                ),
              ),
            ),
            SizedBox(height: 26,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){},style: TextButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                  ),
                      child: Text("Cancel",style:
                      TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),)),
                  SizedBox(width: 10,),
                  TextButton(
                      onPressed: (){},  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff0D4858),
                  ),
                      child: Text("Submit",style:
                      TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),)),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
