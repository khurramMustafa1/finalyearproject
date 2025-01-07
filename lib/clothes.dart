import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class clothes extends StatefulWidget {
  const clothes({super.key});

  @override
  State<clothes> createState() => _clothesState();
}

class _clothesState extends State<clothes> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 5, // Adjusted to match the number of tabs
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Image.asset(
                    'assets/images/clothes.png',
                    fit: BoxFit.cover,
                    height: 247,
                    width: 363,
                  ),
                  Image.asset(
                    'assets/images/clothes2.png',
                    fit: BoxFit.cover,
                    height: 247,
                    width: 363,
                  ),
                  Image.asset(
                    'assets/images/clothes3.png',
                    fit: BoxFit.cover,
                    height: 247,
                    width: 363,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 8,
                ),
              ),
            ),
            SizedBox(height: 19),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39,),
              child: Text("Clothes",style: TextStyle(color: Color(0xff0D4858),
                  fontWeight: FontWeight.w900,fontSize: 24),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39,),
              child: Text("Spring (March-May)",style: TextStyle(color: Color(0xff0D4858),
                  fontWeight: FontWeight.w900,fontSize: 20),),
            ),
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
                        children: [Text("Weather:",style:
                        TextStyle(color: Color(0xff000000),fontSize:
                        13,fontWeight: FontWeight.w900),),
                          Text("Pleasant, with warm days and cool nights.",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,),),
                        ],

                      ),
                      Row(
                        children: [
                          Text("Clothing:",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,fontWeight: FontWeight.w900),),
                          Text("Lightweight cotton clothing, such as",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,),softWrap: true,maxLines: 6,),
                        ],
                      ),
                      Text("shirts, pants, and dresses, is ideal. A light jacke",style:
                      TextStyle(color: Color(0xff000000),fontSize:
                      13,),softWrap: true,maxLines: 6,),
                      Text("or sweater may be needed for evenings",style:
                      TextStyle(color: Color(0xff000000),fontSize:
                      13,),softWrap: true,maxLines: 6,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39,),
              child: Text("Summer (June-August)",style: TextStyle(color: Color(0xff0D4858),
                  fontWeight: FontWeight.w900,fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27,),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffADD2DC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [Text("Weather:",style:
                        TextStyle(color: Color(0xff000000),fontSize:
                        13,fontWeight: FontWeight.w900),),
                          Text("Hot and humid..",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,),),
                        ],

                      ),
                      Row(
                        children: [
                          Text("Clothing:",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,fontWeight: FontWeight.w900),),
                          Text("Opt for loose-fitting, breathable ",style:
                          TextStyle(color: Color(0xff000000),fontSize:
                          13,),softWrap: true,maxLines: 4,),
                        ],
                      ),
                Text("fabrics like cotton and linen. Light-colored",style:
              TextStyle(color: Color(0xff000000),fontSize:
              13,),softWrap: true,maxLines: 4,),
                      Text("lothing can help"
                          " reflect the sun's heat.  ",style:
                      TextStyle(color: Color(0xff000000),fontSize:
                      13,),softWrap: true,maxLines: 4,),
                      Text("A hat and sunglasses are essential.",style:
                      TextStyle(color: Color(0xff000000),fontSize:
                      13,),softWrap: true,maxLines: 4,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text("See all",style:
                  TextStyle(color: Color(0xff0D4858),fontSize: 14,fontWeight: FontWeight.w900),))
                ],
              ),
            )

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon:
        Icon(Icons.home),color: Color(0xff0D4858),),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon:
          Icon(Icons.settings),color: Color(0xff0D4858),),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon:
          Icon(Icons.add),color: Color(0xff0D4858),),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon:
          Icon(Icons.message),color: Color(0xff0D4858),),label: ""),
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon:
          Icon(Icons.menu),color: Color(0xff0D4858),),label: ""),
        ]),
      ),
    );
  }
}
