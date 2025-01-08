import 'package:flutter/material.dart';
import 'package:fyppproject/clothes.dart';
import 'package:fyppproject/festivals.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/hotel.dart';
import 'package:fyppproject/overview.dart';
import 'package:fyppproject/overview2.dart';

class lahore extends StatelessWidget {
  const lahore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Lahore",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
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
            overview(),
            overview2(),
            clothes(),
            food(),
            festivals(),
            hotel(),
          ],
        ),
      ),
    );
  }
}



