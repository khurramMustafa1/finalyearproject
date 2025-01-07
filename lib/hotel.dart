import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class hotel extends StatefulWidget {
  const hotel ({super.key});

  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:0 ,vertical: 0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      Image.asset('assets/images/hotel1.png',
                        fit: BoxFit.contain,
                        width: 363,
                      ),
                      Image.asset("assets/images/hotel2.jpg",fit: BoxFit.contain,)
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: SmoothPageIndicator(controller: pageController, count: 2,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blue,
                      dotColor: Colors.grey,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 8,
                    ),),
                ),
                SizedBox(height: 29,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39,),
                  child: Text("Famous Hotel",style: TextStyle(color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,fontSize: 24),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffADD2DC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Luxux Grand hotel:",style:
                              TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                              Text("This 5-star hotel is known for its ",
                                  style:TextStyle(color: Color(0xff0D4858),) )
                              ,],
                          ),
                          Text("luxurious accommodations,world-class",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          Text("impeccable service. It is located in the Lahore",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          Text("and offers stunning views of the city.",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Pearl Continental Hotel:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text("This 4-star hotel is another  ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("popular choice for travelers.It is known for its",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("rooms, multiple dining options, and facilities",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Grand Swiss Hotel",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text("This hotel offers a more affordable ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("option, with comfortable rooms and a convenient ",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("location. It is also popular with families and ",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("business travelers.",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Park View Hotel Gulberg:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text("This budget-friendly hotel is",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("a good option for those who are looking for a basic",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("but comfortable stay. It is located in the Gulberg ",
                                style:TextStyle(color: Color(0xff0D4858),),),
                              Text("neighborhood which is known is for its shopping",
                                style:TextStyle(color: Color(0xff0D4858),),),
                              Text("and dining options",
                                style:TextStyle(color: Color(0xff0D4858),),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
