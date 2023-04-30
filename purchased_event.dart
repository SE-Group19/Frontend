import 'package:flutter/material.dart';

class PurchasedEventsPage extends StatelessWidget {
  final List<Event> events = [
    Event(
      name: 'Afrochella',
      location: 'Online',
      date: 'Dec 26, 2021',
      time: '9:00 AM - 10:00 PM',
      organizer: 'Afromedia.inc',
      image: 'assets/Profile Pic.png',
    ),
    Event(
      name: 'CS50',
      location: 'Online',
      date: 'Feb 12, 2022',
      time: '1:00 PM - 4:00 PM',
      organizer: 'Li-Wei Yiang',
      image: 'assets/Profile Pic.png',
    ),
    Event(
      name: 'Afrochella',
      location: 'Online',
      date: 'Dec 26, 2021',
      time: '9:00 AM - 10:00 PM',
      organizer: 'Afromedia.inc',
      image: 'assets/Profile Pic.png',
    ),
    Event(
      name: 'CS50',
      location: 'Online',
      date: 'Feb 12, 2022',
      time: '1:00 PM - 4:00 PM',
      organizer: 'Li-Wei Yiang',
      image: 'assets/Profile Pic.png',
    ),
    Event(
      name: 'Afrochella',
      location: 'Online',
      date: 'Dec 26, 2021',
      time: '9:00 AM - 10:00 PM',
      organizer: 'Afromedia.inc',
      image: 'assets/Profile Pic.png',
    ),
    Event(
      name: 'CS50',
      location: 'Online',
      date: 'Feb 12, 2022',
      time: '1:00 PM - 4:00 PM',
      organizer: 'Li-Wei Yiang',
      image: 'assets/Profile Pic.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchased Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1615842046974-67811db4dc48?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              '${event.location}\n${event.date}\n${event.time}\n${event.organizer}',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cancel),
                        ),
                        SizedBox(height: 8.0),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: ' Event',
          ),
        ],
        onTap: (int index) {
          if (index == 3) {
            Navigator.pushNamed(context, '/createevent');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/events');
          } else if (index == 0) {
            Navigator.pushNamed(context, '/home');
          }
        },
      ),
    );
  }
}

class Event {
  final String name;
  final String location;
  final String date;
  final String time;
  final String organizer;
  final String image;

  Event({
    required this.name,
    required this.location,
    required this.date,
    required this.time,
    required this.organizer,
    required this.image,
  });
}
