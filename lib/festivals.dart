import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class festivals extends StatefulWidget {
  const festivals ({super.key});

  @override
  State<festivals> createState() => _festivalsState();
}

class _festivalsState extends State<festivals> {
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
                      Image.asset('assets/images/festival1.png',
                        fit: BoxFit.contain,
                        height: 239,
                        width: 363,
                      ),
                      Image.asset("assets/images/festival2.jpg",fit: BoxFit.contain,)
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
                  child: Text("Festivals",style: TextStyle(color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,fontSize: 24),),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 39,),
                  child: Text("Famous Festivals in Lahore",style: TextStyle(color: Color(0xff0D4858),
                      fontWeight: FontWeight.w900,fontSize: 16),),
                ),
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27,),
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
                              Text("Basant:",style:
                              TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                              Text(" This vibrant festival,celebrated in February,is ",
                                  style:TextStyle(color: Color(0xff0D4858),) )
                              ,],
                          ),
                          Text("marked by colorful kites filling the sky. People dress",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          Text("bright yellow attire and enjoy traditional music and",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          Text("dance",
                              style:TextStyle(color: Color(0xff0D4858),) ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Eid-ul-Fitr:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text(" This religious festival marks the end of ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("and enjoy delicious food. ",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Eid-ul-Adha:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text("Another significant religious festival,  ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("celebrated to commemorate the sacrifice of Prophet",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("Ibrahim Families sacrifice animals and distribute",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("to the needy.",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Mela Chiraghan:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text("This three-day festival, held at the ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("shrine of Sufi saint Madho Lal Hussain celebration ",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("of light, music, and poetry.",
                                style:TextStyle(color: Color(0xff0D4858),),)
                                ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Urs of Data Ganj Bakhsh:",
                                    style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w900,fontSize: 11),),
                                  Text(" This annual festival ",
                                      style:TextStyle(color: Color(0xff0D4858),) ),
                                ],
                              ),
                              Text("commemorates the death anniversary of Sufi saint",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("Ganj Bakhsh. Thousands of devotees visit his shrine ",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
                              Text("offer prayers and participate in religious ceremonies",
                                  style:TextStyle(color: Color(0xff0D4858),) ),
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
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Color(0xff0D4858),),),label: "",),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Color(0xff0D4858),)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Color(0xff0D4858),)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Color(0xff0D4858),)),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Color(0xff0D4858),)),label: ""),

        ]),
      ),
    );
  }
}
