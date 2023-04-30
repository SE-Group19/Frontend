import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileEditPage> {
  // Initialize text editing controllers for each field
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  // Set initial values for each field
  String _name = "John Doe";
  String _email = "johndoe@example.com";
  String _phone = "1234567890";

  @override
  void initState() {
    super.initState();

    // Set the initial value of each text editing controller
    _nameController.text = _name;
    _emailController.text = _email;
    _phoneController.text = _phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text("Name:"),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
            SizedBox(height: 16.0),
            Text("Email:"),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Enter your email",
              ),
            ),
            SizedBox(height: 16.0),
            Text("Phone number:"),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: "Enter your phone number",
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Save the new values to the variables
                setState(() {
                  _name = _nameController.text;
                  _email = _emailController.text;
                  _phone = _phoneController.text;
                });

                // Show a dialog to confirm that the changes were saved
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Changes saved"),
                    content: Text("Your profile has been updated."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Save changes"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
      ),
    );
  }
}
