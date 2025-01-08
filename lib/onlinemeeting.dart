import 'package:flutter/material.dart';
import 'package:fyppproject/review.dart';

class onlineMeeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xffff0D4858),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Meeting Status',style: TextStyle(color: Color(0xff0D4858)),),
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
                'Meeting Progress',
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
                            ' Stage ${index + 1}',
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
                    meetingDetails(1, "Morning: Start the online meeting and greet the participants.\n10 AM: Introduce the main agenda.\n11 AM - 12 PM: Discuss the key points for the first agenda item.\n12 PM - 1 PM: Q&A session for the first topic."),
                    meetingDetails(2, "1 PM: Lunch break.\n2 PM - 3 PM: Continue the discussion on the next agenda item.\n3 PM - 4 PM: Conduct brainstorming session with team members.\nEvening: Wrap up the discussions and highlight action items."),
                    meetingDetails(3, "Morning: Follow-up on the action items discussed in previous meetings.\n10 AM - 11 AM: Workshop on project progress and strategies.\n11 AM - 12 PM: Discussion on challenges and potential solutions."),
                    meetingDetails(4, "Afternoon: Present updates on the online meeting platform.\n1 PM - 2 PM: Evaluate project metrics.\n3 PM: Open the floor for feedback and ideas from attendees."),
                    meetingDetails(5, "Evening: Summarize the key takeaways.\n5 PM: End of online meeting with a final review of the next steps.\nLate Evening: Send out meeting minutes and action items to all participants."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>review()));
                },
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

  Widget meetingDetails(int stage, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff68ADC0),
              child: Icon(
                Icons.check_circle,
                color: stage <= 3 ? Color(0xff0D4858) : Colors.grey[300],
              ),
            ),
            SizedBox(width: 8),
            Text(
              'Stage $stage',
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
