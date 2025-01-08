import 'package:flutter/material.dart';


class overview2 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  SectionTitle(title: 'User Reviews'),
                  Row(
                    children: [
                      Expanded(
                        child: ReviewCard(
                          name: 'Michael Smith',
                          review: 'This is an amazing experience. The service was excellent and the staff was friendly and helpful. Highly recommended for anyone looking for a wonderful time!',
                          imagePath: 'assets/images/Group.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ReviewCard(
                          name: 'Jae Lee',
                          review: 'Lahore is vibrant and exciting. I recommend visiting the historical sites and exploring the bazaars.',
                          imagePath: 'assets/images/Group.png',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SectionTitle(title: 'Local Reviews'),
                  Row(
                    children: [
                      Expanded(
                        child: ReviewCard(
                          name: 'Asim Khan',
                          review: 'Lahore, the heart of Punjab, is a blend of history and culture. Don\'t miss the Badshahi Mosque, Lahore Fort, and Shalimar Gardens.',
                          imagePath: 'assets/images/Group.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: ReviewCard(
                          name: 'Ali Khan',
                          review: 'Lahore is a foodie\'s paradise! Indulge in traditional Pakistani cuisine and explore the bustling food streets.',
                          imagePath: 'assets/images/Group.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xff0D4858),), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Color(0xff0D4858)), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add,color: Color(0xff0D4858)), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message,color: Color(0xff0D4858)), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.menu,color: Color(0xff0D4858)), label: ''),
          ],
        ),
      ),

    );
  }
}




class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Color(0xff0D4858),
          ),
        ),
        TextButton(onPressed: () {}, child: Text('See all')),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final String imagePath;

  ReviewCard({required this.name, required this.review, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff68ADC0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(imagePath),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Color(0xff0D4858),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index<4?Colors.yellow:Colors.green,
                            size: 16,

                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              review,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
