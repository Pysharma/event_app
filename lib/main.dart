import 'package:flutter/material.dart';
import 'package:the_internet_folks/screens/eventscreen.dart';
import 'package:the_internet_folks/screens/homescreen.dart';
import 'package:the_internet_folks/screens/search_screen.dart';

void main() {
  runApp(EventApp());
}

class EventApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black, // Set the color of the back arrow
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/event_details': (context) => EventScreen(),
        '/search': (context) => SearchScreen(),
      },
    );
  }
}