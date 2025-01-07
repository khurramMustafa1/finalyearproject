import 'package:flutter/material.dart';
import 'package:fyppproject/Login.dart';
import 'package:fyppproject/Register.dart';
import 'package:fyppproject/Reminder.dart';
import 'package:fyppproject/Verify.dart';
import 'package:fyppproject/accountseeting.dart';
import 'package:fyppproject/booking.dart';
import 'package:fyppproject/budget.dart';
import 'package:fyppproject/clothes.dart';
import 'package:fyppproject/currencyconverter.dart';
import 'package:fyppproject/festivals.dart';
import 'package:fyppproject/food.dart';
import 'package:fyppproject/googlemaps.dart';
import 'package:fyppproject/helpandsupport.dart';
import 'package:fyppproject/homepage.dart';
import 'package:fyppproject/hotel.dart';
import 'package:fyppproject/isbclothes.dart';
import 'package:fyppproject/isbhotel.dart';
import 'package:fyppproject/islambadfood.dart';
import 'package:fyppproject/islambadoverview.dart';
import 'package:fyppproject/karachiclothes.dart';
import 'package:fyppproject/karachifestivals.dart';
import 'package:fyppproject/karachifood.dart';
import 'package:fyppproject/karachihote.dart';
import 'package:fyppproject/karachioverview.dart';
import 'package:fyppproject/lahore.dart';
import 'package:fyppproject/language.dart';
import 'package:fyppproject/loginsucessfull.dart';
import 'package:fyppproject/message1.dart';
import 'package:fyppproject/message2.dart';
import 'package:fyppproject/overview.dart';
import 'package:fyppproject/overview2.dart';
import 'package:fyppproject/packinglist.dart';
import 'package:fyppproject/packinglist2.dart';
import 'package:fyppproject/page1.dart';
import 'package:fyppproject/planetrip.dart';
import 'package:fyppproject/privacy.dart';
import 'package:fyppproject/review.dart';
import 'package:fyppproject/safetyalerts.dart';
import 'package:fyppproject/seeting.dart';
import 'package:fyppproject/space2.dart';
import 'package:fyppproject/storage.dart';
import 'package:fyppproject/tools.dart';
import 'package:fyppproject/spaceshare.dart';
import 'package:fyppproject/travelbuddy.dart';
import 'package:fyppproject/trip.dart';
import 'package:fyppproject/weather.dart';
import 'package:fyppproject/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Register()
    );}
}
