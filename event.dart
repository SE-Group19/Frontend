import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetailPage extends StatelessWidget {
  final List<String> _images = [
    'https://images.unsplash.com/photo-1587394709924-854d76fc7ad4',
    'https://images.unsplash.com/photo-1531297484008-800bbde6a8e6',
    'https://images.unsplash.com/photo-1564467603908-cdcc542e6e27',
    'https://images.unsplash.com/photo-1504805572947-34fad45aed93',
    'https://images.unsplash.com/photo-1587846883156-8e6d10a6b1ed',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: _images.map((image) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1615842046974-67811db4dc48?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Afrochella',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Date/Time: January 1, 2024, 10:00 AM - 12:00 PM',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Location: New York City',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Organizers: John Doe, Jane Smith',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Event Description',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare, sapien euismod efficitur faucibus, lectus lectus blandit nisl, sit amet imperdiet quam magna non arcu. Nunc et elit id sapien vulputate malesuada at eget elit. Fusce bibendum sed nulla in commodo. Donec euismod nisl vel lectus volutpat, non rutrum leo venenatis. Morbi tincidunt felis sit amet sem sagittis iaculis. Sed commodo libero vitae nunc rhoncus imperdiet. Morbi eget velit in sapien auctor suscipit. Duis quis consectetur urna. Nulla eget metus vitae sapien feugiat aliquet. Praesent sed diam metus. Donec tristique felis sit amet tincidunt commodo. Donec dignissim odio ut urna consequat, et aliquet magna elementum. Maecenas egestas euismod ligula sed bibendum.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Additional Info',
                      style: TextStyle(fontSize: 20),
                    ),
                                      SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vel sodales dolor. Vestibulum vehicula, quam vel aliquam malesuada, lectus libero commodo augue, a consectetur urna elit a libero. Praesent congue, nulla sit amet vestibulum lobortis, nibh turpis lacinia nunc, a blandit risus augue a enim. Nam non leo sed arcu maximus vulputate. Nullam convallis sollicitudin elit eu blandit. Aenean nec ullamcorper neque. Aliquam id arcu erat. Praesent at nibh ac augue tincidunt maximus. Sed et nunc auctor, vestibulum sapien in, gravida lorem. Vestibulum eu diam ut lectus iaculis malesuada ut sit amet augue. Nulla vitae lacus lacinia, dignissim nibh ut, pulvinar lorem. Sed id tellus sit amet lorem interdum accumsan ut in enim. Nam in metus vel tortor suscipit eleifend. Nunc id nisl eget risus accumsan pulvinar.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gallery',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1615842046974-67811db4dc48?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/bookevent');
                    },
                    child: Text('Book Now'),
                  ),
                  SizedBox(height: 50),
                ],
                )
              ),
            ),
          ),
        ],
      )
    );
  }
}

