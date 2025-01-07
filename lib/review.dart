import 'package:flutter/material.dart';
class review extends StatelessWidget {
  const review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title:Text("Review",style: TextStyle(color: Color(0xff0D4858),
            fontSize: 24,fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))],
        centerTitle: true,
      ),
      body: Column(
        children: [
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
                hintText: 'Name',
                suffixIcon: Icon(Icons.people)
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
                  hintText: 'email',
                  suffixIcon: Icon(Icons.email)
              ),
            ),
          ),
          SizedBox(height: 23,),
          Center(
            child: Text("Share your experience in scaling",style:
            TextStyle(color: Color(0xff0D4858),fontSize: 10,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 5,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton( onPressed: (){},icon: Icon( Icons.star, color:
                Color(0xff0D4858),
                  size: 20,));
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: 'Add your review here',
                ),
              maxLines: 8,
              ),
          ),
          SizedBox(height: 41,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, child: Text("Cancel",style:
              TextStyle(color: Color(0xff0D4858),fontWeight: FontWeight.w900,fontSize: 15),)),
              SizedBox(width: 10,),
              TextButton(
                  onPressed: (){},  style: TextButton.styleFrom(
                  backgroundColor: Color(0xff0D4858),
              ),
                  child: Text("Submit",style:
              TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),)),
            ],
          )
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
