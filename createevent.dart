import 'package:flutter/material.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  final _formKey = GlobalKey<FormState>();
  String? _eventName;
  String? _eventDescription;
  String? _location;
  String? _date;
  String? _time;
  String? _ticketPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Event'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Event Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter event name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _eventName = value;
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Event Description'),
                  maxLines: 5,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter event description';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _eventDescription = value;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Location'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _location = value;
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'Date (dd/mm/yyyy)'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter date';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _date = value;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Time'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter time';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _time = value;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Ticket Price'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter ticket price';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _ticketPrice = value;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // TODO: Implement create event functionality
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Create Event'),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
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
              label: '',
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
        ));
  }
}
