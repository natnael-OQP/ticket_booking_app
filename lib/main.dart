import 'package:flutter/material.dart';

/// screens
import 'package:ticket_booking_app/screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ticket_booking_app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
