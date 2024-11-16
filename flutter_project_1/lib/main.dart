import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the home page file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Call the HomePage widget
    );
  }
}
