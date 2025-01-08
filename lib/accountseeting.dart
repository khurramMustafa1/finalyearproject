import 'package:flutter/material.dart';
class accountseeting extends StatelessWidget {
  const accountseeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title: Text("Account Setting",
          style: TextStyle(color: Color(0xff0D4858),fontWeight: FontWeight.bold,fontSize: 24),),
        centerTitle: true,
        leading: IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
      ),
      body: Expanded(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left:74 ,right:81 ),
              child: Text("Account Setting",
                style: TextStyle(color: Color(0xff0D4858),fontSize: 24,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 31,),
            Padding(
              padding: const EdgeInsets.only(left: 36,right: 24),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffC4C4C4).withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "Samiullah Khan",
                  suffixIcon: Icon(Icons.person, color: Color(0xfC4C4C4).withOpacity(0.8)),
                ),
              ),
            ),
            SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.only(left: 36,right: 24),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffC4C4C4).withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "samiullahkhan@gmail.com",
                  suffixIcon: Icon(Icons.email, color: Color(0xffC4C4C4)),
                ),
              ),
            ),
            SizedBox(height: 31,),
            Padding(
              padding: const EdgeInsets.only(left: 36,right: 24),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffC4C4C4).withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "03119783561",
                  suffixIcon: Icon(Icons.phone_android, color: Color(0xfC4C4C4).withOpacity(0.8)),
                ),
              ),
            ),
            SizedBox(height: 31,),
            Padding(
              padding: const EdgeInsets.only(left: 36,right: 24),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffC4C4C4).withOpacity(0.2),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  hintText: "*********",
                  suffixIcon: Icon(Icons.lock, color: Color(0xffC4C4C4)),
                ),
              ),
            ),
            SizedBox(height: 61,),
            Padding(
              padding: const EdgeInsets.only(left: 61,right: 45),
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
                      style: TextStyle(color: Color(0xffADD2DC),fontSize: 15,fontWeight: FontWeight.bold),),
                  )),
                  SizedBox(width: 100,),
                  TextButton(
                      style: TextButton.styleFrom(backgroundColor: Color(0xff0D4858),
                          minimumSize: Size(78, 39), // Set width and height
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4), // Set corner radius
                          )
                      ),
                      onPressed: (){}, child: Text("Cancel",
                    style: TextStyle(color: Color(0xffADD2DC),fontSize: 15,fontWeight: FontWeight.bold),))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
