import 'package:flutter/material.dart';
    class privacy extends StatelessWidget {
      const privacy({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF5F5F5),
            title: Text("Privacy & Secrity",style: TextStyle(color:
            Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 24),),
            leading: IconButton(onPressed: (){ Navigator.pop(context);},
                icon: Icon(Icons.arrow_back,color: Color(0xff0D4858),)),
            centerTitle: true,
          ),
          body: Column(
            children: [
              SizedBox(height: 51,),
              Text("Privacy & Security",style:
              TextStyle(color: Color(0xff0D4858),fontSize: 24,fontWeight: FontWeight.bold),),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 9),
                child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Allow Camera permission ?",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 15),),
                        IconButton(
                            onPressed: (){}, icon: Icon(Icons.toggle_off,),iconSize: 40,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 9),
                child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Allow Storage permission ?",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 15),),
                        IconButton(
                          onPressed: (){}, icon: Icon(Icons.toggle_on,),iconSize: 40,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 9),
                child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Allow Microphone permission ?",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 15),),
                        IconButton(
                          onPressed: (){}, icon: Icon(Icons.toggle_off,),iconSize: 40,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 9),
                child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Allow Location permission ?",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 15),),
                        IconButton(
                          onPressed: (){}, icon: Icon(Icons.toggle_on,),iconSize: 40,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 9),
                child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xffADD2DC),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22,right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Enable two-factor authentication",
                          style: TextStyle(color: Color(0xff0D4858),fontSize: 15),),
                        IconButton(
                          onPressed: (){}, icon: Icon(Icons.toggle_on,),iconSize: 40,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 61,),
              Padding(
                padding: const EdgeInsets.only(left: 61,right: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(backgroundColor: Color(0xff0D4858),
                        minimumSize: Size(78, 39), // Set width and height
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4), // Set corner radius
                        ),
                      ),
                        onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.only(left:14,right: 14),
                          child: Text("Save",
                                                style: TextStyle(color: Color(0xffADD2DC),fontSize: 20,fontWeight: FontWeight.bold),),
                        )),
                    SizedBox(width: 90,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          style: TextButton.styleFrom(backgroundColor: Color(0xff0D4858),
                              minimumSize: Size(78, 39), // Set width and height
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4), // Set corner radius
                              )
                          ),
                          onPressed: (){}, child: Text("Cancel",
                        style: TextStyle(color: Color(0xffADD2DC),fontSize: 20,fontWeight: FontWeight.bold),)),
                    )
                  ],
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
