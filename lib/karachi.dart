import 'package:flutter/material.dart';
import 'package:fyppproject/karachiclothes.dart';
import 'package:fyppproject/karachifestivals.dart';
import 'package:fyppproject/karachifood.dart';
import 'package:fyppproject/karachihote.dart';
import 'package:fyppproject/karachioverview.dart';
import 'package:fyppproject/overview2.dart';
class karachi extends StatelessWidget {
  const karachi ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Karachi",
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
          centerTitle: true,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
          bottom: TabBar(
            isScrollable: true,
            tabs: const [
              Tab(text: "Overview"),
              Tab(text: "Feedbacks"),
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
            overviewkarachi(),
            overview2(),
            karachiclothes(),
           karachifood(),
          karachifestivals(),
            karachihotel(),
          ],
        ),
        ),
    );
  }
}
