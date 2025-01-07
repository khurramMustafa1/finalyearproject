import 'package:flutter/material.dart';
class maps extends StatelessWidget {
  const maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(children: [
         Padding(
          padding: const EdgeInsets.only(left: 20,right: 10),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Color(0xffF1F1F1)),
                ),
                hintText: 'Search here',
                prefixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.location_pin)),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.person)),
                  ],
                )
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.home,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Set home",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.restaurant_sharp,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Resturant",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.shopping_bag,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Shopping",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.curtains_closed_outlined,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Apparel",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.coffee,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Cofee",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.local_grocery_store,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Groceries",style: TextStyle(color: Colors.black),),
                  ],
                )),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF3F3F3)
                    ),
                    onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.gas_meter,color: Colors.black,),
                    SizedBox(width: 4,),
                    Text("Gas",style: TextStyle(color: Colors.black),),
                  ],
                ))
              ],
            ),
          ),
        ),
      ],),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.location_pin,),label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.yard_outlined,),label: 'You'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle,),label: 'Contribute'),
      ]),
    );
  }
}
