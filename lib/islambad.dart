import 'package:flutter/material.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/isbclothes.dart';
import 'package:fyppproject/isbhotel.dart';
import 'package:fyppproject/islambadfood.dart';
import 'package:fyppproject/islambadoverview.dart';
import 'package:fyppproject/overview2.dart';
class islambad extends StatelessWidget {
  const islambad ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islambad",
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
          centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          bottom: TabBar(
            isScrollable: true,
            tabs: const [
              Tab(text: "Overview"),
              Tab(text: "feedbacks"),
              Tab(text: "Clothes"),
              Tab(text: "Food"),
              Tab(text: "Festivals"),
              Tab(text: "Hotels"),
            ],
            dividerColor: Colors.black,
          ),
        ),
        body: TabBarView(
          children: [
            overviewislamabad(),
            overview2(),
            IslamabadClothes(),
            IsbFood(),
            food(),
            islmabadhotel()
          ],
        ),
        ),
    );
  }
}
