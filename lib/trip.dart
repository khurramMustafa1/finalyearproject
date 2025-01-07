import 'package:flutter/material.dart';

class trip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xffff0D4858),
          onPressed: () {},
        ),
        title: Text('Trip Status',style: TextStyle(color: Color(0xff0D4858)),),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Color(0xffff0D4858),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Trip Progress',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffff0D4858),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 81,
              width: 333,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff78B56A),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 11, right: 12),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(5, (index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: index < 3 ? Colors.teal : Colors.grey[300],
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.circle),
                              color: index < 3 ? Color(0xff0D4858) : Colors.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            ' ${index + 1} Day',
                            style: TextStyle(
                              fontSize: 10,
                              color: index < 3 ? Colors.white : Colors.grey,
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 22),
                child: ListView(
                  children: [
                    tripDetails(1, "Morning: Arrive at Peshawar Railway Station and have breakfast at a local eatery.\n10 AM:Board a bus to Peshawar University.\n11 AM - 5 PM: Explore Peshawar University campus, visit the various faculties, libraries, and museums.\n6 PM: Depart Peshawar University and check into a hotel near the university.\nEvening: Have dinner at a restaurant in the hotel or nearby."),
                    tripDetails(2, "Morning: Have breakfast at the hotel.\n9 AM - 12 PM: Visit the Khyber Pass Museum, which showcases artifacts from the region's rich history and culture.\n1 PM - 3 PM: Explore the historic walled city of Peshawar, including the Qissa Khawani Bazaar and the Gor Khatri.\nEvening: Have dinner at a traditional Pakistani restaurant."),
                    tripDetails(3, "Morning: Have breakfast at the hotel.\n9 AM - 12 PM: Visit the Peshawar Museum, which houses a vast collection of archaeological and historical exhibits.\n1 PM - 3 PM: Take a day trip to the Valley of Swat, a picturesque region known for its stunning landscapes and ancient ruins.\nEvening: Return to Peshawar and have dinner at a restaurant in the hotel."),
                    tripDetails(4, "Morning: After a leisurely breakfast, embark on a day trip to the picturesque Swat Valley.\nMid-Morning: Reach Kalam Valley, a pristine valley surrounded by snow-capped mountains.\nAfternoon: Explore the stunning landscapes, take a leisurely walk along the river, or visit the ancient Buddhist ruins of Udegram.\nEvening: Return to Peshawar and enjoy a delicious dinner at a local restaurant, savoring the flavors of Pashtun cuisine."),
                    tripDetails(5, "Morning: Visit the Bala Hisar Fort, a historic fort with stunning views of the city. Explore its ancient walls, mosques, and museums.\nAfternoon: Immerse yourself in the vibrant culture of Peshawar by attending a traditional Pashtun cultural show, featuring music, dance, and poetry.\nEvening: Have a farewell dinner at a renowned restaurant, indulging in a sumptuous feast of local delicacies.\nLate Evening: Depart for your onward journey, carrying with you unforgettable memories of Peshawar's rich history, warm hospitality, and breathtaking landscapes."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Review',style: TextStyle(color: Color(0xffFFFFFF)),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0D4858),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Color(0xff0D4858)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Color(0xff0D4858)),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget tripDetails(int day, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff68ADC0),
              child: Icon(
                Icons.check_circle,
                color: day <= 3 ? Color(0xff0D4858) : Colors.grey[300],
              ),
            ),
            SizedBox(width: 8),
            Text(
              'Day $day',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
