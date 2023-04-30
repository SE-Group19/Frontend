import 'package:flutter/material.dart';
import './createevent.dart';
import './Home.dart';
import './login.dart';
import './event.dart';
import './signup.dart';
import './onboarding.dart';
import 'package:google_fonts/google_fonts.dart';
import './bookevent.dart';
import './profile_edit.dart';
import './purchased_event.dart';
import './user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/createevent': (context) => CreateEventPage(),
        '/event': (context) => EventDetailPage(),
        '/login': (context) => LoginWithPasswordPage(),
        '/bookevent': (context) => EventBookingPage(),
        '/profile_edit': (context) => ProfileEditPage(),
        '/events': (context) => PurchasedEventsPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
